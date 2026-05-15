#!/bin/bash
packages=(
	mpd
	mpd-mpris
	mpc
	ncmpcpp
	ffmpeg
)

for package in ${packages[@]}; do
	sudo pacman -Sy $package --needed --noconfirm
done
