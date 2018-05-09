# Tales of ⌧
## A presentation at [http://bangbangcon.com/](!!conf) 2018

The `script.rb` file is a basic script to illustrate how to find a character within a folder of
font files. This script is intended for learning a discovery, and as such contains no tests or class structure.

## Requirements

- Ruby 2.4.0 or higher
- Bundler to install gems

## Installation

1. Clone this repo locally
2. run `bundle install` in the main folder of the repo

## Usage

1. Find the Unicode codepoint for the character for which you would like to find a supporting font. You can use [http://fileformat.info](FileFormat.info),
a search engine, or use Appendix A below for instructions on how to do it programatically.
2. Collect your font files into a folder
3. Execute the script like so: `ruby script.rb /your/font/folder/path/ 308D`

## Example output

For a folder containing the font files `SourceHansSerif-Bold.otf`, `SourceSerifPro-Bold.otf` and `SourceCodePro-Regular.otf`:

```
$ ruby script.rb /Users/pzula/bangbangcon/Fonts/ 308D
----------------
SourceHanSerif-Bold.otf contains 308D!
----------------

```





