# Configuration `~/.config`

Cette configuration comprend Neovim (`~/.config/nvim`) et WezTerm (`~/.config/wezterm`).

## Prérequis communs

- Neovim 0.12 ou plus récent
- Git, `curl`, `tar`, un compilateur C et Tree-sitter CLI 0.26.1 ou plus récent
- [WezTerm](https://wezterm.org/) pour les panneaux PDF et l’apparence du terminal
- Rust installé avec [rustup](https://rustup.rs/) pour compiler `tdf`

## macOS

```sh
brew install neovim git ripgrep tree-sitter-cli poppler fontconfig
brew install --cask wezterm
xcode-select --install
```

## Linux Debian / Ubuntu

```sh
sudo apt update
sudo apt install git curl tar ripgrep tree-sitter-cli poppler-utils clang build-essential libfontconfig1-dev
```

Installe WezTerm avec les [instructions Linux officielles](https://wezterm.org/install/linux.html). Vérifie que Neovim est en version 0.12 ou plus récente ; le paquet fourni par certaines distributions peut être plus ancien.

## Rust et lecteur PDF

Installe Rust avec [rustup](https://rustup.rs/), puis installe `tdf` :

```sh
cargo install --git https://github.com/itsjunetime/tdf.git
```

Poppler fournit `pdftotext`, utilisé pour l’aperçu texte des deux premières pages dans Telescope. Les PDF scannés sans couche texte ne peuvent pas être extraits.

## Neovim

Ouvre Neovim et lance `:Lazy sync` pour installer les plugins. Mason installe `clangd` et `pyright` automatiquement. Pour le lint et le formatage Python :

```vim
:MasonInstall flake8 autopep8
```

Les PDF s’ouvrent dans `tdf` depuis Neo-tree, le picker des fichiers récents de Telescope (double espace) et les fichiers récents du menu d’accueil.

## WezTerm

La configuration utilise JetBrains Mono Bold, le thème Nord (Gogh) et une image de fond personnalisée. Le chemin actuel de l’image est `/Users/gueroult/Pictures/interstellar.jpg` ; remplace-le dans `~/.config/wezterm/wezterm.lua` si l’image ou le système est différent.

Les paquets système peuvent porter un nom différent sur les autres distributions Linux.
