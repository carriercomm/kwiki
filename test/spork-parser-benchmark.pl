#!/usr/bin/perl
use strict;
use lib 'lib';
use Spork::Parser;
use Spork::Emitter::HTML;
use XXX;
my $text = do {local $/; <DATA>};

my $max = shift || 1;

my $parser = Spork::Parser->new;
for (1..$max) {
    $parser->set_ast;
    $parser->parse($text);
}

__DATA__
Ingy döt Net
+==
|Guinea Pig|

== ENOLARRY
+== ENODCONWAY
+== E{|YES|}INGY

Welcome To |YAPC|
Let Insanity |BEGIN|
|PERL| In The House Yo

WELCOME TO |YAPC|
LET |INSANITY| BEGIN
|PERL| IN THE HOUSE YO

|Ingy 2.0|
|Kwiki 2.0| as Well
orz hackers

Kwiki to |Japan|
Ingy Shows |2.0| Stuff
A Topic for |Spring|

|Haiku| is OK
Please Let Me Explain
But Ingy Likes |Limericks|

The Poetry Known as Haiku
Leaves a hacker with too much to do.
> The minding of syllables...
> I'd rather watch kill-a-bills.
Kill Bill has far better Kung Fu.

Ingy dot Net was a man,
Who hacked on weird plan after plan.
> As hard as he tried,
> His ideas always died.
But at least he is big in Japan.

There once was a hacker named Ingy
That darned YAPC wiki, his thingy.
> He went to Japan,
> And he got a great tan...
When they sent him back home in a dingy.

This Ingy it often was said,
Would hack all day in his bed.
> But the harder he hacked,
> The weirder and whacked
Were his h@><. zomg orz.

* Sometimes old stuff is the |best stuff|
+* Maybe it's not |shiny| anymore
+* But a little |polishing| goes a long way
+* And then you just call it |2.0|!
+
Last Year I Made |Two Big Upgrades|...

== Ingy 2.0
Brian Ingerson
Legally |Ingy dot Net|
Old is New Again

* In September I changed my name legally to |Ingy dot Net|
+* |Ingy| is my first name
+* |dot Net| is my last name
+* |dot| is *not* my middle name

* But |Ingy dot Net| is not my |real| name
+* My real name is *Ingy d{|ö|}t Net*
+* But the US Government is |ASCII| only
+* Well more like |EBCDIC| only

== Degrade Gracefully
* Ingy 2.0 |degrades gracefully|
+* In a fully compliant environment it is |Ingy döt Net|
+* In |reality| it takes many forms

== INGY DOT NET

== DOTNET, INGY

== IngyDotNet

== Non Graceful Degradation
Sometimes things just go wrong

== Ingy d?t Net

== Ingy dt Net

== Ingy D Net

== Ingy.Net

== Ingy Net
+== orz

== `....@_@....>_<....orz....o_0....X_X....`

Thank you Mr. Net

== Kwiki 2.0

There once was a project called Kwiki,
Whose maintenance proved to be tricky.
> To make the thing go,
> They tacked on |2.0|.
And now it's one heck of a wiki.

== Kwiki 1.0

|Kwiki| is to Wiki
as |Perl| is to Programming

* /Kwiki is not so much about being a wiki/
* Kwiki is all about being a |Lego Set|
* Kwiki is about being |easy and fun| to play with
+* Kwiki is about a |Community|

== Kwiki 1.0

== Kwiki 1.0

* Kwiki was a |successful| CPAN Project
* |150| CPAN Dists - `Kwiki-*`

== Kwiki 1.0

* Kwiki-0.38 was released |April 2005|
+* Kwiki was |too| stable
+* Stable == |Dead|

== Kwiki 1.0

* But being dead is not so bad
+* Because you can then be |reborn|
+* Enter |Kwiki 2.0|

== K2

== Kwiki 2.0

* In December 2006 I decided to make Kwiki come back to life
+* I started a new brand new |www.kwiki.org| wiki
+* I set up a |Trac| for project planning
+* I started a new |svn repo|
+* I gave all the |#kwiki| people commit bits

== No CPAN
* I decided to move /away/ from CPAN for a while
+* The Kwiki on CPAN is at a stable state
* Why muck with it?
+* Hacking on |SVN is agile|

== Kwiki Problems
* |Too Many Modules| to Install
* Kwiki is |Slowie|
* No Documentation
* Too many plugins to choose from
* Some bad abstractions

== Kwiki 2.0 Focus
* Too Many Modules to Install
** Make Kwiki |Easy To Install|
+* Kwiki is Slowie
** Make Kwiki |Faster|
+* No Documentation
** |Document Kwiki|
+* Too many plugins to choose from
** Kwiki |Flavors|
+* Some bad abstractions
** Kwiki::Boot - |TMTOWTDI|

== Kwiki Installation
* |Kwiki 2.0| currently comes with over |500| perl modules.
+* It takes {*< 1 minute*} to install!

== Kwiki Software Installation Instructions

    > svn checkout http://svn.kwiki.org/kwiki/trunk ~/src/kwiki
    > export PATH=~/src/kwiki/bin:$PATH

+* That's it.
+* You get *Spork* for free!

== Kwiki Wiki Creation Instructions

    > kwiki -new ~/Sites/my-wiki

    > vim ~/Sites/my-wiki/plugins
    > kwiki -update ~/Sites/my-wiki

    > kwiki -start ~/Sites/my-wiki

== Kwiki Software Upgrade Instructions
    > svn up

== The Great Kwiki Source Code Reorg

* I gathered all the Kwiki source code:
** All Old SVN Kwiki modules - in |separate author directories|
** All CPAN Kwiki modules
** Some Kwiki hacks lying around on various machines
* I grabbed all the CPAN modules that Kwiki uses
* I stole some modules from |Socialtext|

== Enter the Symlink

* All 500 modules are |preinstalled|.
+* I made a `lib` tree with symlinks to all the modules in place
+* Kwiki knows where to find this |huge module tree|
+* Installing Kwiki has |zero dependencies|
+* Installing Kwiki has |zero impact| on your system
+* It is pretty much |guaranteed| to work

== Win32 and Perl

* But symlinks don't work on MSWin32 (Windows)
+* |Neither does Kwiki!|
+* Kwiki is a server app
+* |Unix is for servers|
+* Also Kwiki requires |Perl 5.8.3|
+
* Why make life |so hard|?
* No CPAN, No old Perl, No Windows == |EASY|!

== Kwiki is Kwiker

* Ingy wrote Kwiki::Cache::Formatter
* |Miyagawa| wrote Kwiki::FastCGI

== Kwiki::FastCGI

* FastCGI Rocks!

|index.cgi|

    use Kwiki::Boot;
    Kwiki::Boot->debug->boot->kwiki->process;

+|index.fcgi|

    use Kwiki::Boot;
    use CGI::Fast;
    while ( my $cgi = CGI::Fast->new ) {
        Kwiki::Boot->debug->boot->kwiki->process;
    }

== Kwiki Documentation - Doolittle

* http://doolittle.kwiki.org
* Kwiki::Doolittle::Formatter
** Kwiki::Formatter:Pod
+* |Pull all POD| out of each module
+* Symlink into a big Kwiki |database of documentation|

== Kwiki Flavors

* There are |too many Kwiki plugins|
+* Which ones do you want to start with?
+* |Kwiki Flavors| are prebuilt configurations
+* You can start with a known flavor
+* And then customize it
+* You can save your own flavors
+* Kwiki flavors are |inheritable|

== Kwiki Configuration Inheritance

* In Kwiki 2.0, Kwiki installations form an |inheritance chain|.
+* The following files are inherited:
** plugins
** config
** template
** css
** javascript
** theme
+* Your kwiki |inherits from a flavor|, which |inherits from a base|.
+* You can make subwikis which inherit from your wiki

== Kwiki Configuration Inheritance

* Inheritance is all done with |symlinks|.
+* Every level has `www/__` symlink.
+* `href="www/__/__/css/formatter.css"`
+* |Kwiki::Paths| knows how to find everything

== Kwiki::Boot

* Kwiki has a certain |core set| of plugins
+* The Kwiki process depends on those plugins
+* How do I |change| those core things?
** Without breaking existing Kwiki sites

== Kwiki::Boot

* I put all the startup code in |Kwiki::Boot::V1|
+* Then I can write |Kwiki::Boot::V2| to do new stuff
** V2 sets up a |different set| of core plugins
+* The Flavors stuff is all V2
+* You can write your own Kwiki::Boot module

== Kwiki::Boot

* How do you switch to a different Boot module?
+* KWIKI_BOOT=V2

    KWIKI_BOOT=V2 kwiki -new ~/Sites/my-wiki

+* After `-new`, environment vars are cached in `kwiki.env`

== Spork

* These slides were done using |Spork|
+* The Spork project is related to Kwiki
* They both inherit from Spoon
** A Spork /ISA/ |Spoon|
+* Spork is now |moved| into K2
+* So if you install Kwiki 2.0, then:

    spork -new KwikiAndTheSymlink

== Future Kwiki Plans

* Implement |MediaWiki| with Kwiki
+* Completely |Customizable Formatter|
** Make |your own| markup
+* Get everything |back to CPAN|

The |END| Draweth Nigh.
Kwiki Loves You. Love Her Back.
Have You A |Question|?

== The End
