#!/usr/bin/env sh
# installs all the dependencies for the running emacs on arch linux

# function to check if pacman is the package manager
# if not, then exit
check_paru() {
    if ! command -v paru >/dev/null 2>&1;
    then
        echo "not a arch linux system. this script only works on arch linux"
        exit
    fi
}

# check if package is already installed
# if not, then install it
install_package() {
    check_paru
    if ! pacman -Q "$1" >/dev/null 2>&1;
    then
        echo "installing $1"
        sudo paru -S "$1"
    else
        echo "$1 is already installed"
    fi
}

# list of packages to install
#


install_package "cmake" # for building vterm
install_package "ansible" # for ansible mode
install_package "nodejs" # for lsp
install_package "npm" # for lsp
install_package "terraform" # for terraform mode
install_package "glslang" # for glsl code completion
install_package "pandoc" # for markdown preview
install_package "xclip" # for copying to clipboard
install_package "maim" # for screenshots
install_package "graphviz" # for org-roam
install_package "gnuplot" # for org-plot
install_package "shellcheck" # for shellcheck
install_package "tidy" # for html tidy
install_package "stylelint" # for css linting
install_package "js-beautify" # for js formatting
install_package "shfmt" # for shell formatting
