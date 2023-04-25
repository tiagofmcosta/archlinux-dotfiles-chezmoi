#!/usr/bin/env fish

# Ask for the password ahead of time
env SUDO_ASKPASS=/sbin/ksshaskpass sudo -A sleep 1 &

set rustc_wrapper

function yay_install
	yay --needed --noconfirm -S $argv
end

function cargo_install -a app
	if not type -q $app
		env RUSTC_WRAPPER=$rustc_wrapper cargo install $app $argv[2..]
	end
end

function cargo_install_package -a bin package
	if not type -q $bin
		cargo_install $argv[2..]
	end
end

if not type -q yay
	mkdir $HOME/tmp || true

	cd $HOME/tmp

	sudo pacman -S --needed git base-devel
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si

	cd -
	rm -fr $HOME/tmp
end

yay_install rustup

if not type -q cargo
	rustup default stable
    fish_add_path $HOME/.cargo/bin
end

cargo_install sccache

set rustc_wrapper sccache

yay_install authy
yay_install autojump
yay_install brave-bin
yay_install catppuccin-cursors-mocha catppuccin-gtk-theme-mocha catppuccin-mocha-grub-theme-git papirus-folders-catppuccin-git
yay_install dunst
yay_install font-manager
yay_install github-cli
yay_install grim
yay_install hyprland hyprland-autoname-workspaces-git hyprland-workspaces waybar-hyprland-git xdg-desktop-portal-hyprland-git qt6-wayland qt5-wayland
yay_install hyprpicker
yay_install hyprshot
yay_install imagemagick 
yay_install jetbrains-toolbox
yay_install jq
yay_install kitty wezterm
yay_install lazygit
yay_install lm_sensors
yay_install ly-reloaded-git
yay_install mpv
yay_install neovim
yay_install nwg-look
yay_install pacman-contrib
yay_install paperkey qrencode
yay_install pipewire pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse gst-plugin-pipewire wireplumber pavucontrol
yay_install rofi-git rofi-calc rofi-emoji rofi-wifi-menu-git
yay_install rsync
yay_install slurp
yay_install swaylock-effects
yay_install swww
yay_install thunar thunar-archive-plugin xarchiver thunar-volman tumbler tumbler-extra-thumbnailers ffmpegthumbnailer
yay_install trash-cli
yay_install ttf-jetbrains-mono ttf-jetbrains-mono-nerd otf-font-awesome otf-latinmodern-math noto-fonts noto-fonts-emoji
yay_install udiskie
yay_install vimiv
yay_install wayland-logout wlogout
yay_install wget
yay_install wl-clipboard clipman
yay_install xdg-user-dirs xdg-utils
yay_install zig


##################
##  Cargo apps  ##
##################

cargo_install bacon
cargo_install bat
cargo_install cargo-install-latest
cargo_install cargo-update-installed
cargo_install exa
cargo_install ncspot
cargo_install waybar-module-pacman-updates

cargo_install_package btm bottom
cargo_install_package dust du-dust
cargo_install_package fd fd-find
cargo_install_package fu find_unicode
cargo_install_package rg ripgrep
cargo_install_package rtx rtx-cli
cargo_install_package tree-sitter tree-sitter-cli
cargo_install_package watchexec watchexec-cli
