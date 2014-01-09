# moss - git-diff files independently of git repositories

> "Jiminy Jones! Look, the nature of the thing that is happening has changed slightly, rendering it yet more interesting!"
>
> --Maurice Moss, IT Crowd

# EXAMPLE

    $ moss examples/license-old.md examples/license-new.md

![screenshot](https://raw2.github.com/mcandre/moss/master/screenshot.png)

# HOMEPAGE

https://github.com/mcandre/moss

# FEATURES

* git-diff files independently of git repositories
* Diff words, not just lines (good for long text)
* Color-coded differences (eyeball the changes faster)
* Disables colors for tty's (compatible with piping to other programs)

# REQUIREMENTS

* [Ruby](https://www.ruby-lang.org/) 2.0+
* `git` and `bash`. Often bundled with Mac OS X, Unix, and Linux. Available as [Git Bash](http://chocolatey.org/packages/git) in Windows.

## Optional

Terminal colors: [Monokai](http://www.reddit.com/r/commandline/comments/1q4b90/is_there_a_monokai_port_for_nano/).

In Windows, bash runs best in [Console2](http://chocolatey.org/packages/Console2), rather than in Command Prompt.

# INSTALL

    $ gem install moss
