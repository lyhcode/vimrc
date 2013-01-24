install:
	ln -sf `pwd`/vimrc ~/.vimrc
	ln -sf `pwd`/tmux.conf ~/.tmux.conf
	ln -sf `pwd`/ctags ~/.ctags

backup:
	tar zcvf ~/.vim-backup.tgz ~/.vim ~/.vimrc ~/.ctags ~/.tmux.conf

install-snippets:
	$(info Enable and do :BundleInstall snipmate-snippets first)
	mkdir -p bundle/snipmate-snippets/snippets
	curl https://raw.github.com/wingyplus/snipmate.vim/groovysnippets/snippets/groovy.snippets -o bundle/snipmate-snippets/snippets/groovy.snippets

install-fonts:
	$(info Change terminal font to "Source Code Pro Regular for Powerline")
	curl 'https://github.com/Lokaltog/powerline-fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20Regular%20for%20Powerline.otf' -o ~/Library/Fonts/Source\ Code\ Pro\ Regular\ for\ Powerline.otf
