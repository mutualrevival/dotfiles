if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Add Homebrew to PATH
set -gx PATH /opt/homebrew/bin $PATH

# Source Color Config
source ~/dotfiles/fish/colors.fish