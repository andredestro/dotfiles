#!/bin/sh
#
# Oh-My-ZSH
#

set -e

if ! [ -d ~/.oh-my-zsh ]; then
	
	source script/log

	#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

	git clone -q git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

	find_zsh() {
	  if which zsh >/dev/null 2>&1 && grep "$(which zsh)" /etc/shells >/dev/null; then
	    which zsh
	  else
	    echo "/bin/zsh"
	  fi
	}

	set_zsh_default_shell() {
	  zsh="$(find_zsh)"
	  which chsh >/dev/null 2>&1 &&
	    chsh -s "$zsh" &&
	    success "set $("$zsh" --version) at $zsh as default shell"
	}

	set_zsh_default_shell

fi
