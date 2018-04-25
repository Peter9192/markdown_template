# Markdown template

This is a skeleton for creating new writing projects. Writing will happen in markdown, while pandoc will be used to convert the markdown to various other formats. This skeleton converts each individual markdown file to an individual output file - no merging occurs. I think this will give me more control but perhaps I will change it (for some formats) later on.

## Modify text
The source files will be placed in the markdown directory. At this stage, these are the only files that need to be altered. Later on, this will probably be extended with styles, metadata, headers, templates or whatever.

## Converting to other formats
From the main directory, type `make` or `make all` to convert the source files to all other formats. Use `make pdf` or with other file formats to only export to that format. `make clean` clears all output directories! That is - only the files that originate from the markdown source files.
