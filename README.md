# Katsube's dotfiles

## Install
### git clone
```bash
$ cd ~
$ git clone https://github.com/katsube/dotfiles.git
```

### Copy files
```bash
$ cd ~/dotfiles
$ ./bootstrap.sh
```

### Homebrew
Install [Homebrew](https://brew.sh/) 1st.
Next, run the commands.

```bash
$ cd ~
$ brew bundle
```

### Git
Create GPG key.<br>
https://blog.katsubemakito.net/git/github-gpg

```bash
$ gpg --gen-key
$ gpg -a --export FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF | pbcopy
```

add .gitconfig
```bash
$ git config --global gpg.program gpg
$ git config --global user.signingkey FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
```

### Shellscripts
Use the scripts in the setup directory if you need them
