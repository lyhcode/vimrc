install:
	tar zcvf ~/.vim-backup.tgz ~/.vim ~/.vimrc ~/.ctags ~/.tmux.conf
	ln -sf `pwd`/vimrc ~/.vimrc
	ln -sf `pwd`/tmux.conf ~/.tmux.conf
	ln -sf `pwd`/ctags ~/.ctags
