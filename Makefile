install:
	ln -sf `pwd`/vimrc ~/.vimrc
	ln -sf `pwd`/tmux.conf ~/.tmux.conf
	ln -sf `pwd`/ctags ~/.ctags

backup:
	tar zcvf ~/.vim-backup.tgz $(wildcard ~/.vim) $(wildcard ~/.vimrc) $(wildcard ~/.ctags) $(wildcard ~/.tmux.conf)

install-snippets:
	$(info Enable and do :BundleInstall snipmate-snippets first)
	mkdir -p bundle/snipmate-snippets/snippets
	curl https://raw.github.com/wingyplus/snipmate.vim/groovysnippets/snippets/groovy.snippets -o bundle/snipmate-snippets/snippets/groovy.snippets
