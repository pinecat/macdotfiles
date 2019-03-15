# load zsh config files
config_files=(~/.zsh/**/*.zsh(N))

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

for file in ${config_files}
do
  source $file
done

# Set the theme
# Note, we must change the font to powerline to work
# I prefer IBM 3270 14pt (Typeface=Medium)
ZSH_THEME="agnoster"

# Make sure to source this file in order to recieve any updates if necessary
source $ZSH/oh-my-zsh.sh
