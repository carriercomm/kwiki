#!/usr/bin/perl
use lib 'lib';
use Test::Base tests => 2;
use Spork::Parser;
use Spork::Emitter::HTML;

run_is spork => 'html';

sub format {
    my $text = shift;
    my $ast = Spork::Parser->new->parse($text);
    return Spork::Emitter::HTML->new->emit($ast);
}

__DATA__
=== Format Spork Slide
--- spork format
== This is a test

.center
* foo
** `123`
* *hello*
.center

Cool *stuff* is /here/.

xxx
xxx
> yyy
> yyy
xxx

    sub foo {
       ...
    }
--- html
<h2>This is a test</h2>
<div class="center-outer"><div class="center-inner">
<ul>
<li>foo</li>
<ul>
<li><tt>123</tt></li>
</ul>
<li><b>hello</b></li>
</ul>
</div></div>
<p>Cool <b>stuff</b> is <i>here</i>.</p>
<p>xxx<br />
xxx</p>
<blockquote>
<p>yyy<br />
yyy</p>
</blockquote>
<p>xxx</p>
<pre>
sub foo {
   ...
}
</pre>
=== Format Another Spork Slide
--- spork format
This is *bold*

This *bold* is

*Bold* is this
--- html
<p>This is <b>bold</b></p>
<p>This <b>bold</b> is</p>
<p><b>Bold</b> is this</p>

