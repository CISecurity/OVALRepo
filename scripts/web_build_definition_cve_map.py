#!/usr/bin/env/ python3
"""Builds a map of the relationship between an OVAL definition ID and it's associated CVE"""

import argparse, sys, time, json
import lib_repo, lib_search
from lxml import etree

def main():
	start_time = time.time()

	definitions_index = lib_search.DefinitionsIndex(message)
	ns_map = { 'oval-def': 'http://oval.mitre.org/XMLSchema/oval-definitions-5' }

	# Create the output object...
	output = WebOutput()

	for defpath in lib_repo.get_definition_paths_iterator():
		def_id = lib_repo.path_to_oval_id(defpath)
		
		try:
			tree = etree.parse(defpath)
		except OSError as e:
			raise InvalidPathError(defpath)
		except etree.XMLSyntaxError as e:
			raise InvalidXmlError(defpath, e.msg)

		root = tree.getroot()

		#  Only Vulnerability and Patch definitions would have CVE references...
		defclass = root.get('class')
		if defclass in ["vulnerability", "patch"]:
			reference = root.find("./oval-def:metadata/oval-def:reference[@source='CVE']", ns_map)
			if reference is not None:
				output.add_result(def_id, [reference.get("ref_id"), reference.get("ref_url")])

	# add timing
	seconds_elapsed = time.time() - start_time
	output.message("CVE", "OVAL Repository Definition-to-CVE Mappings")
	output.message("time", "{0}".format(format_duration(seconds_elapsed)))

	# Write JSON Output...
	output.write_json()


def message(label, message):
	""" print a message """
	sys.stdout.write('{0}: {1}\n'.format(label.upper(), message))


def format_duration(seconds):
	""" format a duration in seconds """
	hours = int(seconds // 3600)
	seconds = seconds - (hours * 3600)
	minutes = int(seconds // 60)
	seconds = int(seconds - (minutes * 60))
	return '{0:02d}:{1:02d}:{2:02d}'.format(hours, minutes, seconds)

class WebOutput():
	""" A SearchIndex for OVAL definitions. """

	def __init__(self):
		""" constructor, set defaults for instances """
		self.output = {
			"RESULTS": {},
			"MESSAGES": []
		}

	def add_result(self, key, result):
		""" add a message to output """
		self.output['RESULTS'][key] = result

	def add_keyvalue(self, key, value):
		""" add key/value pair to output """
		self.output[key.upper()] = value

	def message(self, label, message):
		""" add a message to output """
		self.output['MESSAGES'].append({ label.upper(): message })

	def write_json(self):
		print(json.dumps(self.output, sort_keys=True, indent=4))

class Error(Exception):
	"""Base class for exceptions in this module."""
	pass


class InvalidPathError(Error):
	"""Exception raised for when a path does not exist. """
	def __init__(self, path):
		self.path = path


class InvalidXmlError(Error):
	"""Exception raised for when a fragment cannot be parsed. """
	def __init__(self, path, message):
		self.path = path
		self.message = message

if __name__ == '__main__':
	main()


