# Tales of ⌧!
## A presentation at [!!con](http://bangbangcon.com/) 2018 - [Watch it on YouTube](https://www.youtube.com/watch?v=fADc9lHwSMc)

The `script.rb` file is a basic script to illustrate how to find a character within a folder of
font files. This script is intended for learning a discovery, and as such contains no tests or class structure.

## Requirements

- Ruby 2.4.0 or higher
- Bundler to install gems

## Installation

1. Clone this repo locally
2. run `bundle install` in the main folder of the repo

## Usage

1. Find the Unicode codepoint for the character for which you would like to find a supporting font. You can use [FileFormat.info](http://fileformat.info),
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

## Appendix A

If you already have the character in your pasteboard, here's a quick way to find the Unicode hex representation of the codepoint using the Ruby REPL, [irb](https://www.digitalocean.com/community/tutorials/how-to-use-irb-to-explore-ruby).

```
irb(main):001:0> character = "a"
=> "a"
irb(main):002:0> character_code = character.unpack('U*').first
=> 97
irb(main):003:0> hex_unicode = "U+" << character_code.to_s(16).upcase.rjust(4, '0')
=> "U+0061"

```


## Appendix B: Fun resources

[Glyph 0, The Notdef Glyph: The OpenType recommendation](https://docs.microsoft.com/en-us/typography/opentype/spec/recom#glyph-0-the-notdef-glyph)

[A discussion of "tofu" in the english language](https://english.stackexchange.com/questions/296505/where-is-tofu-for-font-fallback-box-glyph-coming-from?utm_medium=organic&newreg=7dc67e95ae5b4cc586817a77f21c803e)

[Tofu, or Not Tofu](https://blogs.adobe.com/CCJKType/2016/05/tofu-or-not-tofu.html)

[The Actual Unicode Standard](http://www.unicode.org/versions/Unicode10.0.0/ch02.pdf)

[Unicode Code Charts](http://unicode.org/charts/)

[Unicode Fonts for Kindle 2 v0.1 Hack](http://ereadertech.com/2009/04/04/unicode-fonts-for-kindle-2-v01/)

[Graceful degradation for ebook characters](https://leeds-ebooks.co.uk/blog/2013/07/degrade-gracefully-kindle-and-uncommon-languages/)

[TTFunk](https://github.com/prawnpdf/ttfunk)

[Josh Cheek's Gist on Parsing Fonts in Ruby](https://gist.github.com/JoshCheek/eb69cc7ce5172219f3c90766a3758560)

[Someone built something for this that is more robust in Python](https://github.com/davelab6/pyfontaine)





