# Sublime Text 3 Setup

## Install Package Control

Install [Package Control](https://sublime.wbond.net/installation) for easy package management. 

1. Open the console with `` Ctrl+` ``
2. Paste in the following:

````
import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ','%20')).read())
````

From here on out, use [Package Control](https://sublime.wbond.net/browse) to install **everything**. `⌘`+`Shift`+`P`, then type `Install` to get a list of installable packages you can livesearch through. Watch the Status Bar for installation progress.

## Add Some Style

Install [Soda Theme](http://buymeasoda.github.io/soda-theme/) for some UI customisations. You'll need to restart Sublime after installation for the changes to take effect.

I prefer the classic tab styles and install [the Expresso Soda and Monokai Soda colour schemes](http://buymeasoda.github.com/soda-theme/extras/colour-schemes.zip).

## Add Some Useful Packages

All installed with Package Manager. `⌘`+`Shift`+`P` and type `install`. Then start typing the name of the extension you want to install.

### General 

- [SideBarEnhancements](https://github.com/titoBouzout/SideBarEnhancements/tree/st3) Provides enhancements to the operations on Sidebar of Files and Folders.
- [SublimeCodeIntel](https://sublime.wbond.net/packages/SublimeCodeIntel) - Full-featured code intelligence and smart autocomplete engine.
- [AdvancedNewFile](https://sublime.wbond.net/packages/AdvancedNewFile) - Fast file creation within a project.
- [Nettuts+ Fetch](https://sublime.wbond.net/packages/Nettuts%2B%20Fetch) - Fetch the latest version of remote files and zip packages.
- [Gist](https://sublime.wbond.net/packages/Gist) - Gist management.Create, read, update, and delete gists from within Sublime. 
- [ApplySyntax](Provides a real-time Word Count and character count in the status-bar) - Better syntax detection.
- [Alignment](https://sublime.wbond.net/packages/Alignment) - Easy alignment of multiple selections and multi-line selections.
- [DocBlockr](https://sublime.wbond.net/packages/DocBlockr) - Simplifies writing DocBlock comments in Javascript, PHP, CoffeeScript, Actionscript, C & C++.

### HTML, CSS & JS
- [Emmet](https://sublime.wbond.net/packages/Emmet) - (Formerly Zen Coding) For lightning fast coding.
- [SublimeLinter](https://github.com/SublimeLinter/SublimeLinter3#sublimelinter3) - Coming soon. Code linting & hinting for HTML/CSS/JS.
- [Sass](https://sublime.wbond.net/packages/Sass) - Adds syntax highlighting and tab/code completion for Sass and SCSS files. Also features Emmet shortcuts for many CSS properties.

### Git
- [GitGutter](https://github.com/jisaacks/GitGutter) tracks line changes in the gutter.
- [Modific](https://sublime.wbond.net/packages/Modific) - Highlight lines changed since the last commit.

### Markdown
- [MarkdownEditing](https://sublime.wbond.net/packages/MarkdownEditing) - Better Markdown editing from within Sublime.
- [Markdown Preview](https://sublime.wbond.net/packages/Markdown%20Preview) - Preview and build your markdown files quickly in your web browser from sublime text 2/3.
- [SmartMarkdown](https://sublime.wbond.net/packages/SmartMarkdown) - Some useful shortcuts for working with Markdown in Sublime. Brings better integration with Pandoc.
- [WordCount](https://sublime.wbond.net/packages/WordCount) - Provides a real-time Word Count and character count in the status-bar.

### Laravel 

- [Laravel 4 Facades](https://sublime.wbond.net/packages/Laravel%204%20Facades) - Easy access to the Laravel 4 Facades.

### ExpressionEngine

- [ExpressionEngine Add-on Builder](https://sublime.wbond.net/packages/ExpressionEngine%20Add-On%20Builder) - *(Waiting on ST3 support)* - Quick scaffold for EE addon development.

### Apache Conf

- [ApacheConf](https://sublime.wbond.net/packages/ApacheConf.tmLanguage) - For editing .htaccess and .conf files.

## Add Some Colour

- [Dayle Rees Color Schemes](https://github.com/daylerees/colour-schemes) - A collection of high quality colour schemes.
- [Github Color Theme](https://sublime.wbond.net/packages/Github%20Color%20Theme) - Simple github colour scheme.
- [Solarized Toggle](https://sublime.wbond.net/packages/Solarized%20Toggle) - A very simple plugin that lets you toggle between the dark and light default Solarized colour schemes.

## Settings - User

Accessible via: `SublimeText` &rarr; `Preferences` &rarr; `Settings – User`, or with `⌘`+`,'.'

This is a JSON file of custom user configuration settings. Kept in alphabetical order for easy reference.

**Note:** *As a JSON file no comments can be included. Any you add will be stripped out on saving.*

```json
{
    "auto_complete": true,
    "auto_complete_commit_on_tab": true,
    "auto_complete_with_fields": true,
    "bold_folder_labels": false,
    "color_scheme": "Packages/Color Scheme - Default/Solarized (Dark).tmTheme",
    "default_encoding": "UTF-8",
    "detect_indentation": true,
    "font_face": "Menlo",
    "folder_exclude_patterns":
        [
            ".git",
            ".bundle",
            ".sass-cache"
        ],
    "font_options":
        [
            "subpixel_antialias"
        ],
    "font_size": 12.0,
    "highlight_line": true,
    "highlight_modified_tabs": true,
    "ignored_packages":
        [
            "Vintage"
        ],
    "line_padding_bottom": 1,
    "line_padding_top": 1,
    "soda_classic_tabs": true,
    "soda_folder_icons": false,
    "tab_size": 4,
    "theme": "Soda Light 3.sublime-theme",
    "translate_tabs_to_spaces": true,
    "trim_trailing_white_space_on_save": true,
    "word_wrap": true,
}
```

A complete list of Settings can be referenced in `SublimeText` &rarr; `Preferences` &rarr; `Settings – Default`. 

Override any which aren't to your taste.

## Key Bindings - User

Accessible via: `SublimeText` &rarr; `Preferences` &rarr; `Key Bindings – User`. 

Key bindings are the productivity engine which allow you to become one with your text editor. I try to stick with all the defaults to make for an easy install and less chance of potential future clashes. The following are a few small edits I make along with some package specific controls:

```
[
    // Reveal the currently open file in the sidebar
    { "keys": ["ctrl+super+r"], "command": "reveal_in_side_bar" },

    // AdvancedNewFile
    { "keys": ["ctrl+alt+n"], "command": "advanced_new_file_new" },

    // Create a new snippet [Jeffrey Way]
    { "keys": ["alt+super+n"], "command": "new_snippet" },

    // Open iTerm
    { "keys": ["ctrl+alt+t"], "command": "open_terminal" },

    // Select (or type) the syntax to apply to the current view.
    { "keys": ["ctrl+shift+y"], "command": "show_overlay", "args": {"overlay": "command_palette", "text": "Set Syntax: "} },

    // swap the keybindings for paste and paste_and_indent
    { "keys": ["super+v"], "command": "paste_and_indent" },
    { "keys": ["super+shift+v"], "command": "paste" },

    // [HTMLPrettify] Format your HTML, CSS, and JS
    { "keys": ["super+shift+h"], "command": "htmlprettify" },

    // Close tag
    { "keys": ["super+."], "command": "close_tag" },

    // Alignment
    { "keys": ["super+shift+a"], "command": "alignment" },

    // Wrap selection in tag
    {
        "keys"      :   ["alt+shift+t"],
        "command"   :   "insert_snippet",
        "args": {
            "contents": "<${1:p}>${0:$SELECTION}</${1}>"
        }
    },

]
```

More info on Key Bindings can be found in the [unofficial docs](http://docs.sublimetext.info/en/latest/reference/key_bindings.html).

## Sublime from the Command Line

Sublime Text includes a command line tool which you just need to symlink up so that it's in your PATH file. In Sublime Text 3 simply copy this into a terminal session:

    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl

Then you can open files in Sublime Text from the command line with:

    subl my_file.txt

Replacing `my_file.text` with the name of the file or folder you wish to open in Sublime Text.

## Sublime Text Dropbox Sync

If you switch between Macs at home and work then syncing via Dropbox is a huge time saver. To do this you only need to symlink your `Packages` and `Installed Packages` directories to a location in your Dropbox. Then symlink on the device your setting up to sync with those folders on Dropbox.

**Always make sure you backup your `Packages` and `Installed Packages` folders first - just in case anything goes wrong.**

So, once I have Sublime Text 3 installed on my MacBook Pro, I just need to create a symlink for both my `Packages` and `Installed Packages` directories in my Dropbox folder:

    ln -s ~/Library/Application\ Support/Sublime\ Text\ 3/Packages ~/Dropbox/Sync/Sublime\ Text\ 3/Packages

    ln -s ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages ~/Dropbox/Sync/Sublime\ Text\ 3/Installed\ Packages

Then on my MacBook Air I just need to install Sublime Text 3 (basic install with none of the above) and tell it to look in Dropbox for the Package information:

    ln -s ~/Dropbox/Sync/Sublime\ Text\ 3/Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Packages

    ln -s ~/Dropbox/Sync/Sublime\ Text\ 3/Installed\ Packages ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages

Now whenever you tweak any settings or install any new packages the changes will be applied to all shared computers.

## Useful Shortcuts

Follow my other gist for useful Sublime Text shortcuts (on a Mac). Commit these to muscle memory and you'll amaze and scare your friends and colleagues with your crazy text editor wizardry. 

## Learn the Basics

Make sure you get familiar with the extremely useful _[Find in Files](http://www.macdrifter.com/2012/07/a-couple-of-sublime-text-tips.html)_ feature along with _[Fuzzy searches](http://docs.sublimetext.info/en/latest/file_management/file_management.html)_.

