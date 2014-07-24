# moss - git-diff files independently of git repositories

> "Jiminy Jones! Look, the nature of the thing that is happening has changed slightly, rendering it yet more interesting!"
>
> --Maurice Moss, IT Crowd

# EXAMPLES

    $ moss examples/license-old.md examples/license-new.md

![screenshot](https://raw2.github.com/mcandre/moss/master/screenshot.png)

## Flipping Maven Tests

[flipping](https://github.com/mcandre/flipping) uses `moss` to highlight differences in complex Maven test values.

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

# DEVELOPMENT

Checkout a copy of the code, and get the developer dependencies:

    $ git clone https://github.com/mcandre/moss.git
    $ cd moss
    $ bundle

## Testing

Ensure the example script works as expected:

    $ bundle
    $ cucumber
    Feature: Run example tests

      Scenario: Running example tests            # features/run_example_tests.feature:3
        Given the program has finished           # features/step_definitions/steps.rb:1
        Then the output is correct for each test # features/step_definitions/steps.rb:5

    1 scenario (1 passed)
    2 steps (2 passed)
    0m0.284s

## Linting

Keep the code looking good with the linter tools:

    $ rake lint

## Git Hooks

See `hooks/`.
