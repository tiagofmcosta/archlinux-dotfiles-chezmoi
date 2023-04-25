fish_add_path ~/.cargo/bin/
fish_add_path ~/.local/bin/

set -x fish_greeting

set -x COMMON_FLAGS "-march=native -O2 -pipe"
set -x CFLAGS $COMMON_FLAGS
set -x CXXFLAGS $COMMON_FLAGS
set -x MAKEOPS "-j16"

set -x DOT_FILES (chezmoi source-path)
set -x RUSTC_WRAPPER sccache
set -x CARGO_REGISTRIES_CRATES_IO_PROTOCOL sparse
set -x EDITOR nvim
set -x VISUAL nvim
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

set -x XDG_CONFIG_HOME "$HOME/.config"
