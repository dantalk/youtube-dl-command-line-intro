## Common youtube-dl options

See a list of options here:

https://github.com/ytdl-org/youtube-dl#options

### Starting out

#### See what version you have with `--version`

    --version                        Print program version and exit


#### List all the options and what they do with `--help`

    -h, --help                       Print this help text and exit


#### --quiet

    -q, --quiet                      Activate quiet mode



### Control how the downloaded video is named and saved

#### --id

    --id                             Use only video ID in file name


#### Simpler filenames with `--restrict-filenames`

    --restrict-filenames             Restrict filenames to only ASCII
                                     characters, and avoid "&" and spaces in
                                     filenames



### Finer-grained filename control with `-o`

    -o, --output TEMPLATE            Output filename template, see the "OUTPUT
                                     TEMPLATE" for all the info



### Miscellaneous flags


#### Batch download a list of URLs

    -a, --batch-file FILE            File containing URLs to download ('-' for
                                     stdin), one URL per line. Lines starting
                                     with '#', ';' or ']' are considered as
                                     comments and ignored.


#### --no-mtime 


    --no-mtime                       Do not use the Last-modified header to set
                                     the file modification time



### Basics about flags

- can *usually* be in any order


Combinations:

youtube-dl -a vidlist.txt --id
