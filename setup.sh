#!/usr/bin/env bash


# check if curl and subversion (svn) exist
exists() {
  builtin type -P "$1" &> /dev/null
}


exists "curl" || "curl not in path"
exists "svn" || "svn not in path"


# download appimage if not available
if [[ ! -f "FontForge.AppImage" ]]; then
  curl -L https://github.com/fontforge/fontforge/releases/download/20201107/FontForge-2020-11-07-21ad4a1-x86_64.AppImage > FontForge.AppImage
  chmod u+x FontForge.AppImage
fi


# download font-patcher
if [[ ! -f "font-patcher" ]]; then
  curl -L https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/font-patcher > font-patcher
fi


# download patches to src/glyphs
mkdir -p src/glyphs
svn checkout https://github.com/ryanoasis/nerd-fonts/trunk/src/glyphs src/glyphs


# make output directory
mkdir out
