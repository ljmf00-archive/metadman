module mtd.app;

import std.stdio;
import core.stdc.stdlib : exit;
import std.getopt;
import mtd.reader;

enum
{
	METADEXT_NAME = "metadman",
	METADEXT_VERSION = "0.0.1"
}

bool detailed;
bool verbose;
string[] args;

int main(string[] args_) {
	args = args_;
	bool shwVersion;
	GetoptResult rslt;
	try {
		rslt = getopt(args,
			std.getopt.config.caseSensitive,
			"detailed|d", "Print detailed information about the file", &detailed,
			"verbose|V", "Print Progress Messages", &verbose,
			"version|v", "Print version information", &shwVersion);
	} catch(GetOptException e)
	{
		stderr.writefln("%s", e.msg);
        exit(1);
	}
	if(rslt.helpWanted || args_.length <= 1)
	{
		defaultGetoptPrinter(args[0] ~ ": [-dVv] filename\n\n" ~
		"Some information about the program.",
		rslt.options);
	} else if (shwVersion) {
		writeln("MetaDMan - Metadata manipulator for various types of files written in D\n");
		writeln("Version: ", METADEXT_NAME, " ", METADEXT_VERSION, " (", __TIMESTAMP__, ")");
		writeln("License: Mozilla Public License Version 2.0");
		writeln("Compiled with ", __VENDOR__, " (version ", __VERSION__, ")");
	} else {
		reader(args[1]);
	}

	return 0;
}
