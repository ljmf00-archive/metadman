module mtd.reader;

import std.stdio, std.path;
import mtd.app, mtd.utils;
import core.stdc.stdlib : exit;
import std.exception : ErrnoException;

private File f;

void reader(string path) {
    try {
        f = File(path, "rb");
    } catch(ErrnoException e)
    {
        stderr.writefln("%s", e.msg);
        exit(e.errno);
    }

    //in case of null content
    if(f.size == 0)
    {
        stderr.writefln("%s", "File is empty.");
        exit(1);
    }

    // Name
    writeln("File Name: ", baseName(path));

    // Path
    if(detailed) {
        writeln("File Path: ", path);
    }

    // Size
    writeln("File size: ", convertSize(f.size));


    //check the file type

}
