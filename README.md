# \#ADNJP

App.net user group in Japan.

- Homepage: https://adnjp.github.io/
- App.net: https://alpha.app.net/adnjp
- Twitter: https://twitter.com/adnjapan
- GitHub: https://github.com/adnjp/adnjp.github.io

## Installation

This repo contains the source code to build the Web site using [Middleman][middleman]. It also includes icons to build a custom font using [Font Custom][fontcustom]. There is one `Gemfile` for each, so the gems do not conflict with each other.

Requirements: Ruby, RubyGems, [Bundler][bundler] [rbenv][rbenv].

Steps to install:

1. Make sure the requirements above are met.
2. Clone this repository.
3. Run `scripts/install`.

## Building site

The primary source code of this site is on the `source` branch while the actual site HTML is on the `master`. The latter is required by organisation pages on [GitHub Pages][ghpages], which is where the site is hosted.

If you ran the `install` script during the installation instructions above, the `build` directory should already be prepared to accomodate new builds.

To build the site with [Middleman][middleman], run `middleman build`. This will build the site in the `build` directory.

When committing changes for deploy on `master`, it is recommended to copy the last related commit messages from the `source` branch with their IDs, e.g. `890abcde Add new page`.

## Updating custom font

The custom font used on this site is built using [Font Custom][fontcustom].

The settings, templates, and icons used are stored in `assets/font`.

To compile the font, instead of running `fontcustom`, run `scripts/font compile`. This ensures the correct `Gemfile` is used for `fontcustom`.

## Contributing

If you wish to correct, edit, or add anything, feel free to [open an issue][issues] or fork the repo, update the content on the `source` branch, and submit a pull request. You may build the site with your corrections yourself and send a second pull request on `master` if you wish, but it is not necessary.

[bundler]: http://bundler.io/
[fontcustom]: http://fontcustom.github.io/fontcustom
[ghpages]: https://pages.github.com/
[issues]: https://github.com/adnjp/adnjp.github.io/issues
[middleman]: https://middlemanapp.com/
[rbenv]: https://github.com/sstephenson/rbenv
