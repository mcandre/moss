# moss - git-diff files independently of git repositories

    "Jiminy Jones! Look, the nature of the thing that is happening has changed slightly, rendering it yet more interesting!"

    --Maurice Moss, IT Crowd

# HOMEPAGE

https://github.com/mcandre/moss

# EXAMPLE

    $ moss examples/license-old.md examples/license-new.md
    diff --git a/examples/license-old.md b/examples/license-new.md
    index bdb5dca..f45a2d0 100644
    --- a/examples/license-old.md
    +++ b/examples/license-new.md
    @@ -1,17 +1,17 @@
    # FreeBSD License

    # Copyright 2012 -{Andrew Pennebaker.}+{YelloSoft.} All rights reserved.

    Redistribution and use in source and binary forms, with or without modification,
    are permitted provided that the following conditions are met:

    1. Redistributions of source code must retain the above copyright notice, this
    list of conditions and the following disclaimer.
    2. Redistributions in binary form must reproduce the +{above} copyright notice,
    this list of conditions and the following disclaimer in the documentation and/or
    other materials provided with the distribution.

    THIS SOFTWARE IS PROVIDED BY THE AUTHORS "AS IS" AND ANY EXPRESS-{OR IMPLIED} 
    WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
    MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
    SHALL THE AUTHORS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,

# FEATURES

* git-diff files independentlyy of git repositories
* Diff words, not just lines (good for long text)
* Color-coded differences (eyeball the changes faster)

# REQUIREMENTS

* [Ruby](https://www.ruby-lang.org/) 2.0+
* `git` and `bash`. Often bundled with Mac OS X, Unix, and Linux. Available as [Git Bash](http://chocolatey.org/packages/git) in Windows.

## Optional

Terminal colors: [Monokai](http://www.reddit.com/r/commandline/comments/1q4b90/is_there_a_monokai_port_for_nano/).

In Windows, bash runs best in [Console2](http://chocolatey.org/packages/Console2), rather than in Command Prompt.
