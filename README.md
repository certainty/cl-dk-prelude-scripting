# Prelude and script wrapper for common lisp scripting

This is a simple scripting environment for common lisp.
It provides a system which bundles a couple of dependencies that are very useful to have when you write common lisp scripts.

It also bundles a small Makefile to build a core that can be loaded as a basis for scripts as well as a small wrapper.

## Inspiration

This is very much inspired by [ciel](https://github.com/ciel-lang/ciel) which does not build on my machine and bundles 
a couple of things I do not want this way. But if you want to see a very well documented environment have a look at it.

## Prerequisites

You'll need:

* sbcl
* quicklisp 
* ultralisp
* [cl-dk-prelude](https://github.com/certainty/cl-dk-prelude) in your local-projects for quicklisp

## Installation

`make install`

## Usage

Once this is installed you need to make sure that `~/.local/bin` is in your `PATH`.
Then you can use create common lisp scripts with a rich set of libraries and access to convenience functions and package nicknames like so:

example.lisp:

```common-lisp
#!/usr/bin/env clscript

(in-package :cl-dk-prelude-scripting)

(format t "Hello World ~a" (dict :a 1 :b 2))
```
