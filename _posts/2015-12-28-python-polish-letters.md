---
layout: post
title: Python and polish letters
excerpt: "Things I had to do to make python work with polish letters."
modified: 2015-12-28
tags: [python, utf-8, polish]
comments: true
---

I am doing some text processing. Text contains polish letters (e.g.: ę, ą, ł, ź, ó, ...) and files have `utf-8` encoding. Python 2.7 was giving me errors like: `UnicodeDecodeError: 'ascii' codec can't decode byte` .

I found much advice out there, but only after combining these three tips below I was able to get rid of all issues, correctly display polish letters in terminal and write them to files.

#### 1. Define file encoding
{% highlight python %}
# -*- coding: utf-8 -*-
{% endhighlight %}

    This magic comment goes at the top (first or second line) of .py file to define file encoding. For more details see : [PEP 0263 -- Defining Python Source Code Encodings](https://www.python.org/dev/peps/pep-0263/)


#### 2. Unicode literals
{% highlight python %}
from __future__ import unicode_literals
{% endhighlight %}

    Normally I would need to decorate each string literal with `u` e.g `u'ę`. Including this just makes my life easier.


#### 3. Read and write file with specified encoding
{% highlight python %}
import codecs
...
def some_function_reading_text_file(in_file):
    with codecs.open(in_file, 'r', 'utf-8') as f:
{% endhighlight %}

    For reading files that are in `utf-8` I had to specify their encoding when reading and writing.
