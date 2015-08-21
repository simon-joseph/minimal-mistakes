---
layout: post
title: MITLM on OSX Yosemite
excerpt: "What I had to do to build mitlm on OSX."
modified: 2015-06-28
tags: [mitlm, language model, data science]
comments: true
---

What I had to do to build mitlm on OSX (Yosemite 10.10.3).

1. Install missing tools/libs
  1. Download gfortran 4.9 from [here](https://gcc.gnu.org/wiki/GFortranBinaries#MacOS).
  2. Install autoconf, automake and libtool.  {% gist simon-joseph/f17fec70c91e14b2afbf %}

2. Add `#include <string>` to `FastIO.h`, after `#include <cstring>`
3. Had to remove `tr1` in some sorce files, but this issues seems to be resolved in the current repo code.
4. `autogen.sh`
5. `make`
6. `sudo make install`

