data = <<-EOS
= AsciiDoc Syntax Quick Reference
Dan Allen
v1.0.1, 2013-04-13
:idprefix:
:idseparator: -
:description: This guide is a quick reference for the common formatting markup +
              and document elements in the AsciiDoc syntax.
:keywords: AsciiDoc, Asciidoctor, syntax, reference, cheatsheet
:result: role="result"

AsciiDoc is a mature, lightweight markup language for authoring notes, articles, documentation, books, web pages, slide decks and man pages in plain text.
{description}

NOTE: Several of the examples focus on the output generated by the HTML backend.
AsciiDoc produces complementary output when generating DocBook.

== Paragraphs

.Normal
----
Paragraphs don't require any special markup in AsciiDoc.
A paragraph is just one or more lines of consecutive text.

To begin a new paragraph, separate it by at least one blank line.
Consecutive lines of text are joined to form a single paragraph.
----

[{result}]
====
Paragraphs don't require any special markup in AsciiDoc.
A paragraph is just one or more lines of consecutive text.

To begin a new paragraph, separate it by at least one blank line.
Consecutive lines of text are joined to form a single paragraph.
====

.Line breaks
----
To make a line break, end the line in a space followed by a plus. +
This results in a visible line break (e.g., <br>) between the lines.

Rubies are red. +
Sapphires are blue.
----

[{result}]
====
To make a line break, end the line in a space followed by a plus. +
This results in a visible line break (e.g., <br>) between the lines.

Rubies are red. +
Sapphires are blue.
====

.Literal
----
A normal paragraph.

 A line that begins with one or more spaces is a literal paragraph.
 Literal paragraphs are treated as preformatted text.
 The text is shown in a fixed-width font
 and endlines are preserved.

Another normal paragraph.
----

[{result}]
====
A normal paragraph.

 A line that begins with one or more spaces is a literal paragraph.
 Literal paragraphs are treated as preformatted text.
 The text is shown in a fixed-width font
 and endlines are preserved.

Another normal paragraph.
====

TIP: Use one or two spaces to offset a literal paragraph, but no more.
*Be frugal!*

.Admonition
----
NOTE: An admonition paragraph draws the reader's attention to
auxiliary information. Its purpose is determined by the label
at the beginning of the paragraph. The admonition is set apart
from the main content and displayed next to its label or
corresponding icon.

Here are the other built-in admonition types:

TIP: Pro tip...

IMPORTANT: Don't forget...

WARNING: Watch out for...

CAUTION: Ensure that...
----

[{result}]
====
NOTE: An admonition paragraph draws the reader's attention to
auxiliary information. Its purpose is determined by the label
at the beginning of the paragraph. The admonition is set apart
from the main content and displayed next to its label or
corresponding icon.

Here are the other built-in admonition types:

TIP: Pro tip...

IMPORTANT: Don't forget...

WARNING: Watch out for...

CAUTION: Ensure that...
====

NOTE: You can also create admonition blocks, which are covered later.

== Formatted Text

.Emphasis
----
_italic phrase_ (or 'italic phrase')

__i__talic le__tt__ers

*bold phrase*

**b**old le**tt**ers

*_bold italic phrase_*

**__b__**old italic le**__tt__**ers
----

[{result}]
====
_italic phrase_ (or 'italic phrase')

__i__talic le__tt__ers

*bold phrase*

**b**old le**tt**ers

*_bold italic phrase_*

**__b__**old italic le**__tt__**ers
====

.Monospace
----
+monospace phrase+ and le++tt++ers

+_monospace italic phrase_+ and le++__tt__++ers

+*monospace bold phrase*+ and le++**tt**++ers

+*_monospace bold italic phrase_*+ and le++**__tt__**++ers
----

[{result}]
====
+monospace phrase+ and le++tt++ers

+_monospace italic phrase_+ and le++__tt__++ers

+*monospace bold phrase*+ and le++**tt**++ers

+*_monospace bold italic phrase_*+ and le++**__tt__**++ers
====

.Custom styling
----
[small]#phrase styled by CSS class .small#

[big]##O##nce upon a time...
----

[{result}]
====
[small]#phrase styled by CSS class .small#

[big]##O##nce upon a time...
====

.Superiors and inferiors
----
^superscript phrase^

e = mc^2^

~subscript phrase~

H~2~O
----

[{result}]
====
^superscript phrase^

e = mc^2^

~subscript phrase~

H~2~O
====

.Quotes
----
`single smart quotes'

``double smart quotes''
----

[{result}]
====
`single smart quotes'

``double smart quotes''
====

== Document Header (Optional)

.Title only
----
= AsciiDoc Writer's Guide

This guide provides...
----

TIP: The title is the only required element in the document header.

.Title and author line
----
= AsciiDoc Writer's Guide
Doc Writer <doc.writer@asciidoc.org>

This guide provides...
----

.Title, author line and revision line
----
= AsciiDoc Writer's Guide
Doc Writer <doc.writer@asciidoc.org>
v1.0, 2013-01-01

This guide provides...
----

IMPORTANT: You cannot have a revision line without an author line.

.Document header with attributes
----
= AsciiDoc Writer's Guide
Doc Writer <doc.writer@asciidoc.org>
v1.0, 2013-01-01
:toc:
:imagesdir: assets/images
:homepage: http://asciidoc.org 

This guide provides...
----

CAUTION: The header may not contain blank lines and must be offset from the content by at least one blank line.

[[section-titles]]
== Section Titles (Headers)

.Article doctype
----
= Document Title (Level 0)

== Section Level 1

=== Section Level 2

==== Section Level 3

===== Section Level 4
----

[{result}]
====
[float]
= Document Title (Level 0)

[float]
== Section Level 1

[float]
=== Section Level 2

[float]
==== Section Level 3

[float]
===== Section Level 4
====

WARNING: When using the article doctype (the default), you can only have one level-0 section title (i.e., the document title) and it must be in the document header.

NOTE: The number of equal signs matches the heading level in the HTML output.
For example, _Section Level 1_ becomes an +<h2>+ heading.

.Book doctype
----
= Document Title (Level 0)

== Section Level 1

=== Section Level 2

==== Section Level 3

===== Section Level 4

= Section Level 0
----

[{result}]
====
[float]
= Document Title (Level 0)

[float]
== Section Level 1

[float]
=== Section Level 2

[float]
==== Section Level 3

[float]
===== Section Level 4

[float]
= Section Level 0
====

IMPORTANT: There are two other ways to define a section title.
_Their omission is intentional_.
They both require more markup and are therefore unnecessary.
The http://en.wikipedia.org/wiki/Setext[setext] title syntax (underlined text) is especially wasteful, hard to remember, hard to maintain and error prone.
The reader never sees the extra markup, so why type it?
*Be frugal!*

.Explicit id
----
[[primitives-nulls]]
== Primitive types and null values
----

== Include Files

.Document parts
----
= Reference Documentation
Lead Developer

This is documentation for project X.

\\include::basics.adoc[]

\\include::installation.adoc[]

\\include::example.adoc[]
----

.Common text
----
== About the author

\\include::author-bio.adoc[]
----

== Breaks

.Horizontal rule
----
'''
----

[{result}]
====
'''
====

.Page break
----
<<<
----

== Lists

.Unordered, basic
----
- Apples
- Oranges
- Bananas

//end

* Apples
* Oranges
* Bananas
----

[{result}]
====
- Apples
- Oranges
- Bananas

//end

* Apples
* Oranges
* Bananas
====

NOTE: Blank lines are required before and after a list and are permitted, but not required, between list items.

TIP: You can force two lists apart with a line comment, as the previous example demonstrates.
The text "end" is optional, but serves as a hint to other authors that it's there for a reason.

.Unordered, nested
----
* Apples
** Rome
** Empire
* Oranges
** Navel
** Temple
----

[{result}]
====
* Apples
** Rome
** Empire
* Oranges
** Navel
** Temple
====

.Unordered, max nesting
----
* level 1
** level 2
*** level 3
**** level 4
***** level 5
* level 1
----

[{result}]
====
* level 1
** level 2
*** level 3
**** level 4
***** level 5
* level 1
====

.Ordered, basic
----
. Step 1
. Step 2
. Step 3
----

[{result}]
====
. Step 1
. Step 2
. Step 3
====

.Ordered, nested
----
. Step 1
. Step 2
.. Step 2a
.. Step 2b
. Step 3
----

[{result}]
====
. Step 1
. Step 2
.. Step 2a
.. Step 2b
. Step 3
====

.Ordered, max nesting
----
. level 1
.. level 2
... level 3
.... level 4
..... level 5
. level 1
----

[{result}]
====
. level 1
.. level 2
... level 3
.... level 4
..... level 5
. level 1
====

.Labeled, single-line
----
first term:: definition of first term
section term:: definition of second term
----

[{result}]
====
first term:: definition of first term
section term:: definition of second term
====

.Labeled, multi-line
----
first term::
definition of first term
section term::
definition of second term
----

[{result}]
====
first term::
definition of first term
section term::
definition of second term
====

.Q&A
----
[qanda]
What is Asciidoctor?::
  An implementation of the AsciiDoc processor in Ruby.
What is the answer to the Ultimate Question?:: 42
----

[{result}]
====
[qanda]
What is Asciidoctor?::
  An implementation of the AsciiDoc processor in Ruby.
What's the answer to the Ultimate Question?:: 42
====

.Mixed
----
Operating Systems::
  Linux:::
    . Fedora
      * Desktop
    . Ubuntu
      * Desktop
      * Server
  BSD:::
    . FreeBSD
    . NetBSD

Cloud Providers::
  PaaS:::
    . OpenShift
    . CloudBees
  IaaS:::
    . Amazon EC2
    . Rackspace
----

[{result}]
====
Operating Systems::
  Linux:::
    . Fedora
      * Desktop
    . Ubuntu
      * Desktop
      * Server
  BSD:::
    . FreeBSD
    . NetBSD

Cloud Providers::
  PaaS:::
    . OpenShift
    . CloudBees
  IaaS:::
    . Amazon EC2
    . Rackspace
====

TIP: Lists can be indented. Leading whitespace is not significant.

.Complex content in outline lists
----
* Every list item has at least one paragraph of content,
  which may be wrapped, even using a hanging indent.
+
Additional paragraphs or blocks are adjoined by putting
a list continuation on a line adjacent to both blocks.
+
list continuation:: a plus sign (+) on a line by itself

* A literal paragraph does not require a list continuation.

 $ gem install asciidoctor

* AsciiDoc lists may contain any complex content.
+
[cols="2", options="header"]
|===
|Application
|Language

|AsciiDoc
|Python

|Asciidoctor
|Ruby
|===
----

[{result}]
====
* Every list item has at least one paragraph of content,
  which may be wrapped, even using a hanging indent.
+
Additional paragraphs or blocks are adjoined by putting
a list continuation on a line adjacent to both blocks.
+
list continuation:: a plus sign (+) on a line by itself

* A literal paragraph does not require a list continuation.

 $ gem install asciidoctor

* AsciiDoc lists may contain any complex content, even tables.
+
[cols="2", options="header"]
|===
|Application
|Language

|AsciiDoc
|Python

|Asciidoctor
|Ruby
|===
====

== Links

.External
----
http://asciidoc.org - automatic!

http://asciidoc.org[AsciiDoc]

https://github.com/asciidoctor[Asciidoctor @ *GitHub*]
----

[{result}]
====
http://asciidoc.org - automatic!

http://asciidoc.org[AsciiDoc]

https://github.com/asciidoctor[Asciidoctor @ *GitHub*]
====

.Relative
----
link:index.html[Docs]
----

[{result}]
====
link:index.html[Docs]
====

.Email
----
discuss@asciidoctor.org

mailto:discuss@asciidoctor.org[Discuss Asciidoctor]
----

[{result}]
====
discuss@asciidoctor.org

mailto:discuss@asciidoctor.org[Discuss Asciidoctor]
====

.Cross references
----
See <<paragraphs>> to learn how to write paragraphs.

Learn how to organize the document into <<section-titles,sections>>.
----

[{result}]
====
See <<paragraphs>> to learn how to write paragraphs.

Learn how to organize the document into <<section-titles,sections>>.
====

== Images

.Block
----
image::sunset.jpg[]

image::sunset.jpg[Sunset]

.A sunset feast!
image::sunset.jpg[Sunset, 300, 200, link="http://www.flickr.com/photos/javh/5448336655"]
----

[{result}]
====
image::sunset.jpg[]

image::sunset.jpg[Sunset]

.What a sunset!
image::sunset.jpg[Sunset, 300, 200, link="http://www.flickr.com/photos/javh/5448336655"]
====

NOTE: Images resolve relative to the value of the +imagesdir+ attribute, defined in the document header or passed as an argument.

.Inline
----
Click image:play.png[] to get the party started.

Click image:pause.png[title="Pause"] when you need a break.
----

[{result}]
====
Click image:play.png[] to get the party started.

Click image:pause.png[title="Pause"] when you need a break.
====

.Embedded
----
= Document Title
:data-uri:
----

NOTE: When the +data-uri+ attribute is set, all images in the document--including admonition icons--are embedded into the document as https://developer.mozilla.org/en-US/docs/data_URIs[data URIs].

TIP: Instead of declaring the +data-uri+ attribute in the document, you can pass it as a command-line argument using +-a data-uri+.

== Source Code

.Inline
----
Reference code like +types+ or `methods` inline.
----

[{result}]
====
Reference code like +types+ or `methods` inline.
====

.Literal line
----
 Indent one space to insert a one-liner.
----

[{result}]
====
 Indent one space to insert a one-liner.
====

.Literal block
----
....
Copyright (C) 2013 Acme Corporation.

This work is licensed as CC BY-SA, which is the
Creative Commons Attribution 3.0 Unported License.
....
----

[{result}]
====
....
Copyright (C) 2013 Acme Corporation.

This work is licensed as CC BY-SA, which is the
Creative Commons Attribution 3.0 Unported License.
....
====

[listing]
.Listing block with title, no syntax highlighting
....
.Gemfile.lock
----
GEM
  remote: https://rubygems.org/
  specs:
    asciidoctor (0.1.1)

PLATFORMS
  ruby

DEPENDENCIES
  asciidoctor (~> 0.1.1)
----
....

[{result}]
====
.Gemfile.lock
----
GEM
  remote: https://rubygems.org/
  specs:
    asciidoctor (0.1.1)

PLATFORMS
  ruby

DEPENDENCIES
  asciidoctor (~> 0.1.1)
----
====

[listing]
.Code block with title and syntax highlighting
....
[source,ruby]
.app.rb
----
require 'sinatra'

get '/hi' do
  "Hello World!"
end
----
....

[{result}]
====
[source,ruby]
.app.rb
----
require 'sinatra'

get '/hi' do
  "Hello World!"
end
----
====

[listing]
.Code block with callouts
....
[source,ruby]
----
require 'sinatra' \\<1>

get '/hi' do      \\<2>
  "Hello World!"  \\<3>
end
----
\\<1> Library import
\\<2> URL mapping
\\<3> Content for response
....

[{result}]
====
[source,ruby]
.app.rb
----
require 'sinatra' <1>

get '/hi' do      <2>
  "Hello World!"  <3>
end
----
<1> Library import
<2> URL mapping
<3> Content for response
====

[listing]
.Code block sourced from file
....
[source,ruby]
----
\\include::app.rb[]
----
....

.Fenced code block with syntax highlighting
----
```ruby 
require 'sinatra'

get '/hi' do
  "Hello World!"
end
```
----

[{result}]
====
```ruby 
require 'sinatra'

get '/hi' do
  "Hello World!"
end
```
====

NOTE: Fenced code blocks are only available by default in Asciidoctor.
You can get AsciiDoc to recognize them using a custom configuration file.

.Code block without delimiters (no blank lines)
----
[source,xml]
<meta name="viewport"
  content="width=device-width, initial-scale=1.0">
----

[{result}]
====
[source,xml]
<meta name="viewport"
  content="width=device-width, initial-scale=1.0">
====

[IMPORTANT]
.Enabling the syntax highlighter
====
Syntax highlighting is enabled by setting the +source-highlighter+ attribute in the document header or passed as an argument.

 :source-highlighter: pygments

The valid options for each implementation are as follows:

AsciiDoc:: pygments, source-highlighter, highlight (default)
Asciidoctor:: coderay, highlightjs (and growing!)
====

== More Delimited Blocks

.Sidebar
----
.AsciiDoc history
****
AsciiDoc was first released in Nov 2002 by Stuart Rackham.
It was designed from the start to be a shorthand syntax
for producing professional documents like DocBook and LaTeX.
****
----

[{result}]
====
.AsciiDoc history
****
AsciiDoc was first released in Nov 2002 by Stuart Rackham.
It was designed from the start to be a shorthand syntax
for producing professional documents like DocBook and LaTeX.
****
====

NOTE: Any block can have a title, positioned above the block.
A block title is a line of text that starts with a dot.
The dot cannot be followed by a space.

.Example
----
.Sample document
====
Here's a sample AsciiDoc document:

[listing]
....
= AsciiDoc Writer's Guide
Dan Allen
:toc:

This guide provides...
....

The document header is useful, but not required.
====
----

[example, {result}]
--
.Sample document
====
Here's a sample AsciiDoc document:

[listing]
....
= AsciiDoc Writer's Guide
Dan Allen
:toc:

This guide provides...
....

The document header is useful, but not required.
====
--

.Admonition
----
[NOTE]
====
An admonition block may contain complex content.

.A list
- one
- two
- three

Another paragraph.
====
----

[{result}]
=====
[NOTE]
====
An admonition block may contain complex content.

.A list
- one
- two
- three

Another paragraph.
====
=====

.Blockquote
----
____
A person who never made a mistake never tried anything new.
____

[quote, Albert Einstein]
A person who never made a mistake never tried anything new.

[quote, Abraham Lincoln, Soldiers' National Cemetery Dedication]
____
Four score and seven years ago our fathers brought forth
on this continent a new nation...
____
----

[{result}]
====
____
A person who never made a mistake never tried anything new.
____

[quote, Albert Einstein]
A person who never made a mistake never tried anything new.

[quote, Abraham Lincoln, Soldiers' National Cemetery Dedication]
____
Four score and seven years ago our fathers brought forth
on this continent a new nation...
____
====

.Passthrough
----
++++
<p>
Content in a passthrough block is passed to the output unprocessed.
That means you can include raw HTML, like this embedded Gist:
</p>

<script src="http://gist.github.com/mojavelinux/5333524.js">
</script>
++++
----

[{result}]
====
++++
<p>
Content in a passthrough block is passed to the output unprocessed.
That means you can include raw HTML, like this embedded Gist:
</p>

<script src="http://gist.github.com/mojavelinux/5333524.js">
</script>
++++
====

.Open
----
--
An open block can be an anonymous container,
or it can masquerade as any other block.
--

[source]
--
puts "I'm a source block!"
--
----

[{result}]
====
--
An open block can be an anonymous container,
or it can masquerade as any other block.
--

[source]
--
puts "I'm a source block!"
--
====

WARNING: Asciidoctor doesn't yet support the second use case.

== Comments

.Single line
----
// A single-line comment.
----

TIP: Single-line comments can be used to divide elements, such as two adjacent lists.

.Block
----
////
A multi-line comment.

Notice it's a delimited block.
////
----

== Tables

.Table with two rows of content and a header
----
[cols="1,1,2" options="header"]
.Applications
|===
|Name
|Category
|Description

|Firefox
|Browser
|Mozilla Firefox is an open-source web browser.
It's designed for standards compliance,
performance, portability.

|Arquillian
|Testing
|An innovative and highly extensible testing platform.
Empowers developers to easily create real, automated tests.
|===
----

[{result}]
====
[cols="1,1,2" options="header"]
.Applications
|===
|Name
|Category
|Description

|Firefox
|Browser
|Mozilla Firefox is an open-source web browser.
It's designed for standards compliance,
performance, portability.

|Arquillian
|Testing
|An innovative and highly extensible testing platform.
Empowers developers to easily create real, automated tests.
|===
====

.Table with cell containing AsciiDoc content
----
[cols="2,2,5a"]
|===
|Firefox
|Browser
|Mozilla Firefox is an open-source web browser.

It's designed for:

* standards compliance
* performance
* portability

http://getfirefox.com[Get Firefox]!
|===
----

[{result}]
====
[cols="2,2,5a"]
|===
|Firefox
|Browser
|Mozilla Firefox is an open-source web browser.

It's designed for:

* standards compliance
* performance
* portability

http://getfirefox.com[Get Firefox]!
|===
====

.Table from CSV data
----
[format="csv", options="header"]
|===
Artist,Track,Genre
Baauer,Harlem Shake,Hip Hop
The Lumineers,Ho Hey,Folk Rock
|===
----

[{result}]
====
[format="csv", options="header"]
|===
Artist,Track,Genre
Baauer,Harlem Shake,Hip Hop
The Lumineers,Ho Hey,Folk Rock
|===
====

.Table from CSV data in file
----
|===
\\include::customers.csv[]
|===
----

.Table with formatted, aligned and merged cells
----
[cols="e,m,^,>s", width="25%"]
|===
|1 >s|2 |3 |4
^|5 2.2+^.^|6 .3+<.>m|7
^|8
|9 2+>|10
|===
----

[{result}]
====
[cols="e,m,^,>s", width="25%"]
|===
|1 >s|2 |3 |4
^|5 2.2+^.^|6 .3+<.>m|7
^|8
|9 2+>|10
|===
====

== Attributes and Substitutions

[width="50%" cols="1m,1,1" options="header"]
.Text replacements
|===
|AsciiDoc
|Renders
|As Viewed

|$$(C)$$
|$$&#169;$$
|(C)

|$$(R)$$
|$$&#174;$$
|(R)

|$$(TM)$$
|$$&#8482;$$
|(TM)

|$$--$$
|$$&#8212;$$
|{empty}--{empty}

|$$...$$
|$$&#8230;$$
|...

|$$->$$
|$$&#8594;$$
|->

|$$=>$$
|$$&#8658;$$
|=>

|$$<-$$
|$$&#8592;$$
|<-

|$$<=$$
|$$&#8656;$$
|<=

|$$Sam's$$
|$$Sam&#8217;s$$
|Sam's

|$$&euro;$$
|$$&euro;$$
|&euro;

|$$&8364;$$
|$$&8364;$$
|&#8364;

|$$&#x20ac;$$
|$$&#x20ac;$$
|&#x20ac;
|===

TIP: Any named, numeric or hex http://en.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_references[XML entity reference] is supported.

[width="50%", cols="2", options="header"]
.Built-in literal attributes
|===
|Name
|Renders +
(e.g., +\\{caret}+)

|lt
|<

|gt
|>

|amp
|&

|startsb
|[

|endsb
|]

|brvbar
|\\|

|caret
|^

|asterisk
|*

|tilde
|~

|apostrophe
|'

|backslash
|\\

|two-colons
|::

|two-semicolons
|;;
|===

[width="50%", cols="3" options="header"]
.Built-in entity attributes
|===
|Name
|Renders +
(e.g., +\\{nbsp}+)
|As Viewed

|empty
|_blank_
|{empty}

|sp
|_single space_
|{sp}

|nbsp
|$$&#160;$$
|{nbsp}

|zwsp
|$$&zwsp;$$
|{zwsp}

|wj
|$$&#8288;$$
|{wj}

|apos
|$$&apos;$$
|{apos}

|quot
|$$&quot;$$
|{quot}

|lsquo
|$$&#8216;$$
|{lsquo}

|rsquo
|$$&#8217;$$
|{rsquo}

|ldquo
|$$&#8220;$$
|{ldquo}

|rdquo
|$$&#8221;$$
|{rdquo}

|deg
|$$&#176;$$
|{deg}

|plus
|$$&#43;$$
|{plus}
|===

.Built-in data attributes
asciidoc (or asciidoctor):: _blank_

asciidoc-version (or asciidoctor-version):: Version of the processor

doctype:: Document's doctype (e.g., article)

backend:: Backend used to render document

localdate:: Local date when rendered

localtime:: Local time when rendered

localdatetime:: Local date & time when rendered

docdate:: Last modified date

doctime:: Last modified time

docdatetime:: Last modified date & time

docfile:: Name of document file

docdir:: Name of document directory

.Attribute declaration and usage
----
:homepage: http://asciidoc.org
:homepagelink: http://asciidoctor.org[Asciidoctor]
:desc: AsciiDoc is a mature, plain-text document format for +
       writing notes, articles, documentation, books, and more. +
       It's also a text processor & toolchain for translating +
       documents into various output formats (i.e., backends), +
       including HTML, DocBook, PDF and ePub.
:checkedbox: pass:normal[+[&#10004;]+]

Check out {homepage}[AsciiDoc]!

{desc}

Check out {homepagelink} too!

{checkedbox} That's done!
----

[{result}]
====
[role="unstyled"]
|===
a|
:homepage: http://asciidoc.org
:homepagelink: http://asciidoctor.org[Asciidoctor]
:desc: AsciiDoc is a mature, plain-text document format for +
       writing notes, articles, documentation, books, and more. +
       It's also a text processor & toolchain for translating +
       documents into various output formats (i.e., backends), +
       including HTML, DocBook, PDF and ePub.
:checkedbox: pass:normal[+[&#10004;]+]

Check out {homepage}[AsciiDoc]!

{desc}

Check out {homepagelink} too!

{checkedbox} That's done!
|===
====

== Escaping Text

.Backslash
----
\\*Stars* is not rendered as bold text.
The asterisks around the word are preserved.

\\{author} is not resolved to the author name.
The curly brackets around the word are preserved.

The backslash character is automatically removed.
----

[{result}]
====
\\*Stars* is not rendered as bold text.
The asterisks around the word are preserved.

\\{author} is not resolved to the author name.
The curly brackets around the word are preserved.

The backslash character is automatically removed.
====

.Double dollar
----
$$*Stars*$$ is not rendered as bold text.
The asterisks around the word are preserved.

$$&amp;$$ renders as an XML entity instead of &.
----

[{result}]
====
$$*Stars*$$ is not rendered as bold text.
The astericks around the word are preserved.

$$&amp;$$ renders as an XML entity instead of &.
====

.Triple plus and inline passthrough
----
+++<u>underline me</u>+++ renders as underlined text.

pass:[<u>underline me</u>] also renders as underlined text.
----

[{result}]
====
+++<u>underline me</u>+++ renders as underlined text.

pass:[<u>underline me</u>] also renders as underlined text.
====

.Backticks
----
`Text in {backticks}` renders exactly as entered, in monospace.
The attribute reference is not resolved.
----

[{result}]
====
`Text in {backticks}` renders exactly as entered, in monospace.
The attribute reference is not resolved.
====

== Bibliography

.References
----
'The Pragmatic Programmer' <<prag>> should be required reading for
all developers.

[bibliography]
- [[[prag]]] Andy Hunt & Dave Thomas. 'The Pragmatic Programmer:
  From Journeyman to Master'. Addison-Wesley. 1999.
- [[[seam]]] Dan Allen. 'Seam in Action'. Manning Publications.
  2008.
----

[{result}]
====
'The Pragmatic Programmer' <<prag>> should be required reading for
all developers.

[bibliography]
- [[[prag]]] Andy Hunt & Dave Thomas. 'The Pragmatic Programmer:
  From Journeyman to Master'. Addison-Wesley. 1999.
- [[[seam]]] Dan Allen. 'Seam in Action'. Manning Publications.
  2008.
====

[[footnotes-section]]
== Footnotes

----
A statement footnote:[Clarification about this statement.].

Bold statement footnoteref:[disclaimer,These opinions are my own.].

Another bold statement footenoteref:[disclaimer].
----
EOS

$window.addEventListener 'DOMContentLoaded', proc {
  html = Asciidoctor.render(data, :safe => :safe, :attributes => %w(notitle! anchors imagesdir=./images))
  $document.getElementById('content').innerHTML = html
}, false
