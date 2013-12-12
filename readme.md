# The Vim for Rapid Coders #

**VIM** for **R**apid **C**oders

Vim is a text editor written by Bram Moolenaar and first released publicly in 1991. Based on the vi editor common to Unix-like systems, Vim is designed for use both from a command line interface and as a standalone application in a graphical user interface. Vim is free and open source software and is released under a license that includes some charityware clauses, encouraging users who enjoy the software to consider donating to children in Uganda. The license is compatible with the GNU General Public License. (from WikiPedia)

## Objectives ##

- Vundle based Vim bundles/plugins management, clean and easy.
- Fit into Modern Web Development.
- Support Groovy, Gradle and Grails.

## Install ##

### Vim ###

http://www.vim.org/

For Ubuntu Linux developers,

    sudo apt-get install vim

For Mac OS X developers, you already have a built-in console Vim editor.
But you can stilll manually install Vim in different way.

Homebrew, http://mxcl.github.com/homebrew/

    sudo brew install macvim

MacPorts, http://www.macports.org/

    sudo port install vim
    sudo port install MacVim

Or take a look at Alloy branch.

MacVim with file browser https://github.com/alloy/macvim

### Download ###

Clone a copy into your home.

    git clone git://github.com/lyhcode/vimrc.git ~/.vim

Change the working directory to .vim in your home.

    cd ~/.vim

Update git submodule directory (install vundle).

    git submodule init
    git submodule update

Will following backup commands, your old vim configs will backup to "~/.vim-backup.tgz" file.
If you never use the Vim before, just skip this step.

    make backup

Install is simple.

    make install

Take a look at your new .vimrc settings.

    vim ~/.vimrc

Due to all your bundles(Vim plugins) included in .vimrc are not install.
You should run :BundleInstall command in Vim.
It will download bundle files into ~/.vim/bundle directory.

    # Open your Vim editor and run this command. (Not in system shell.)
    :BundleInstall

Close and re-open your Vim after all jobs done.

## Snippets ##

For more snipmate-snippets,

    make install-snippets

## Powerline Fonts ##

Powerline make your Vim status bar look awesome.

Download patched fonts from Lokaltog repository.

* https://github.com/Lokaltog/powerline-fonts

Change Terminal font setting to enable new fonts.

Remember: Change your terminal font settings to Powerline series fonts.

For Ubuntu users only:

Use a PPA from Gea-Suan Lin.

    sudo apt-add-repository ppa:gslin/powerline-fonts
    sudo apt-get update
    sudo apt-get install powerline-fonts

## ScreenShots ##

Here is my Vim run under tmux. A modern and fancy coding environment. Vim Rocks!

![screen](https://raw.github.com/lyhcode/vimrc/master/screenshot/screen1.png)

Sure, with tagbar and groovy-enabled ctags, Vim is really nice Groovy and Grails IDE.

![screen](https://raw.github.com/lyhcode/vimrc/master/screenshot/screen2.png)

Vim status line with powerline plugin and patched Source Code Pro font.

![screen](https://raw.github.com/lyhcode/vimrc/master/screenshot/screen3.png)

## References ##

- http://www.vim.org/scripts/index.php
- http://github.com/beer/shell
- http://www.objectpartners.com/2012/02/21/using-vim-as-your-grails-ide-part-1-navigating-your-project/
- http://www.objectpartners.com/2012/02/28/using-vim-as-your-grails-ide-part-2/
