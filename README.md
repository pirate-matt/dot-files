# dot-files
Useful when setting up a new machine or when you run into those common, but infrequent developer problems and ask yourself... _How did I solve this last time? Why didn't I write it down?_

Contains my standard developer configuration files: shell, git, vim, docket, etc.

I also keep a few a few "how I handle these scenario notes" in [STRATEGIES.md](./STRATEGIES.md).

## Useful Commands Shortlist
_(Non-exhausive list. Focused on useful but infrequently used and hence forgotten.)_

* `| pbcopy` - pipes right into your mac's copy buffer. Very shiny.
* `pwd` - results in the full path of your current directory, useful when referencing repo-backed config files like these
* `r.s` - custom _re.source_ alias, useful when changing these rc files
* `fix.gpg` – custom alias that does some path magic to fix gpg signing for github commits (see `.git*` file comments for more info).

## First-time Mac Setup
Currently running two manual steps to setup when on a fresh mac install.

_:warning: NOTE: your paths may vary, typically I have this repo living at: `~/Documents/public-repos/dot-files`._

**One, setup zshell**

Create a `.zshrc` file in your home directory. Copy-pasta-ing this:

```sh
# ---------------------------------------------------------------
# Load External Script Files
# ----------------------------------------------------------------

RC_FILE_PATH="Documents/public-repos/dot-files"
EXTERNAL_RC_FILES=(
 '.macrc.sh'
 '.gitrc.sh'
 '.dockerrc.sh'
)

for RC_FILE in "${EXTERNAL_RC_FILES[@]}"
do
if [ -f ~/$RC_FILE_PATH/$RC_FILE ]; then
    source ~/$RC_FILE_PATH/$RC_FILE
else
    print "404: ~/$RC_FILE_PATH/$RC_FILE not found."
fi
done
```

**Two, setup vim**

Create a .vimrc file in your home directory. Copy-pasta-ing this:

```sh
source ~/Documents/public-repos/dot-files/.vimrc.sh
```

**Three, setup gitconfig**

Create a `.gitconfig` file in your home directory. Copy-pasta-ing this:

_:warning: be VERY careful not to put sensitive information here, maintain that manually!_

```sh
[include]
    path = ~/Documents/public-repos/dot-files/.gitconfig
```