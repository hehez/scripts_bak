[_metadata_:author]: - "hehez"
[_metadata_:date]: - "09/019/2023"
[_metadata_:update]: - "09/019/2023"
[_metadata_:title]: - "iTerm2"

# iTerm2 Setup

## Table of Contents

<!--
-->
<!-- !toc (minlevel=2 omit="Table of Contents") -->

- [iTerm2 Download](#macos-iterm2-download)
- [iTerm2 Theme Setup](#iterm2-theme-setup)

  - [Installing Oh My Zsh](#installing-oh-my-zsh)
  - [Installing PowerLevel10K](#installing-powerlevel10k)
  - [Solarized Dark Color Theme](#color-theme-to-solarized-dark)

  <!-- toc! -->

## MacOS iTerm2 Download

> Source: [iTerm2][1]

## iTerm2 Theme Setup

### iTerm2 + Oh My Zsh + PowerLevel10K

> Source: [iTerm2][1]

> Source: [Oh My Zsh][2]

> Source: [PowerLevel10K][3]

Oh My Zsh is an open source, community-driven framework for managing your zsh configuration.
Powerlevel10k is a theme for Zsh

### Installing Oh My Zsh

```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Installing PowerLevel10K

```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

edit your `~/.zshrc` file to activate it

```sh
ZSH_THEME="powerlevel10k/powerlevel10k"
```

Open a new terminal tab and if the powerlevel10k setup does not start, run it manually

```sh
p10k configure
```

### Color Theme to Solarized Dark

- Launch iTerm2
- CMD + i
- Navigate to Color tab
- Click Color Presets and choose Solarized Dark

<!--
-->
<!-- Reference Section -->

[1]: https://iterm2.com/index.html
[2]: https://github.com/ohmyzsh/ohmyzsh
[3]: https://github.com/romkatv/powerlevel10k
