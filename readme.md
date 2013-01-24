# The Vim for Rational Coders #



### Project goals ###

- Vundle based Vim bundles/plugins management, clean and easy.
- Fit into Modern Web Development.
- Support Groovy, Gradle and Grails.

### Install ###

Clone a copy into your home.

    git clone git://github.com/lyhcode/vimrc.git ~/.vim

Install with "make install".

    cd ~/.vim
    make install

Your old vim configs will backup to "~/.vim-backup.tgz" file.

### More Snippets ###

For more snipmate-snippets,

    make install-snippets

### Powerline Fonts ###

Powerline make your Vim status bar look awesome.

Download patched fonts from https://github.com/Lokaltog/powerline-fonts,
or make a nice looking "Source Code Pro" font.

    make install-fonts

Remember: Change your terminal font settings to Powerline series fonts.

### Note ###

You must do a :BundleInstall command in vim to get all bundle resources.

    # In your vim, run this command.
    # It will install all required plugins.
    :BundleInstall

After installation done, remember to restart your vim.

### ScreenShots ###

Here is my Vim run under tmux. A modern and fancy coding environment. Vim Rocks!

![screen](https://raw.github.com/lyhcode/vimrc/master/screenshot/screen1.png)

Sure, with tagbar and groovy-enabled ctags, Vim is really nice Groovy and Grails IDE.

![screen](https://raw.github.com/lyhcode/vimrc/master/screenshot/screen2.png)

Vim status line with powerline plugin and patched Source Code Pro font.

![screen](https://raw.github.com/lyhcode/vimrc/master/screenshot/screen3.png)

### References ###

- http://github.com/beer/shell
- http://www.objectpartners.com/2012/02/21/using-vim-as-your-grails-ide-part-1-navigating-your-project/
- http://www.objectpartners.com/2012/02/28/using-vim-as-your-grails-ide-part-2/
