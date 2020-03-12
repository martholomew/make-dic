## Basic Usage:
- `cat` together a bunch of documents into a singular file (ex., `copcorp.txt`).
- Edit `freq.sh`'s first line to contain the unicode characters that you need ([unicode-table.com](unicode-table.com) is good for this).
- Run `freq.sh`, this will take a while and use a lot of cpu.
- Make sure there aren't any errors, since it takes a while `freq.sh` generates a file at each step for error checking.
- Run `parser.pl` on the last output of `freq.sh`, this will normalize the frequency numbers to get them ready for ASK.

Note: There seems to be a problem with the output of `parser.pl` which I haven't bothered to fix, but just do a search and replace and remove the space between the words and the frequency on every line and it should work.

`parser.pl` taken from [this repository](https://github.com/remi0s/aosp-dictionary-tools) licensed with [Apache 2.0](https://github.com/remi0s/aosp-dictionary-tools/blob/master/LICENSE)!
