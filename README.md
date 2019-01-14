# tomich does bash dotfiles

Your dotfiles are how you personalize your system. These are mine, forked from holman's
zsh dotfiles, implemented in bash. zsh is the better shell, but I'm stuck with bash
for corporate reasons. If you must use bash, you can start here.

## install

Use git to clone this repository, then run the bootstrap script:

```sh
git clone https://github.com/tomichj/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `bash/bashrc.symlink`,
which sets up a few paths that'll be different on your particular machine. 
Especially:
- BASH, which points to your dotfiles
- PROJECTS, which points to your development directory

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.bash` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## platform

Files included in platform/ will only be sourced if on the apropriate platform.
Platform is determined using 'uname -s'. Currently configuration is only provided
for Darwin/Mac OS X, but Linux support may be added in the near future.

## what's inside

A lot of stuff. Seriously, a lot of stuff. Check them out in the file browser
above and see what components may mesh up with you.
[Fork it](https://github.com/tomichj/dotfiles/fork), remove what you don't
use, and build on what you do use.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*path.bash**: Any files ending in `path.bash` are loaded
  first and are expected to setup `$PATH` or similar.
- **topic/\*.bash**: Any files ending in `.bash` get loaded into your
  environment.
- **topic/\*completion.bash**: Any files ending in `completion.bash` is loaded
  last and is expected to setup autocomplete.
- **platform/Darwin/\*.bash**: if on a Mac, these files are loaded.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## Need to image a fresh mac os x machine?

See my Mac OS X [laptop configuration script](https://github.com/tomichj/laptop).

## bugs

I want this to work for everyone; that means when you clone it down it should
work for you even though you may not have `rbenv` installed, for example. That
said, I do use this as *my* dotfiles, so there's a good chance I may break
something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/tomichj/dotfiles/issues) on this repository
and I'd love to get it fixed for you!

## thanks

I forked [Holman's](http://github.com/holman)' excellent
[dotfiles](http://github.com/holman/dotfiles). I also appropriated some
functions from [bash-it](https://github.com/revans/bash-it), another excellent
source of bash configuration ideas.

