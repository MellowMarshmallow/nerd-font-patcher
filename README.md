# Automate Nerd Font Patching

## Structure

```
$ tree .
.
├── README.md
├── patch.sh
└── setup.sh

0 directories, 3 files
```

## Usage

Run `setup.sh` to:
1. Check that `curl` and `svn` are in `$PATH`
2. Download `fontforge` AppImage
3. Download `font-patcher` from `ryanoasis/nerd-fonts`
4. Download patches from `ryanoasis/nerd-fonts/src/glyphs`

Run `patch.sh $FONT_NAME` to patch `$FONT_NAME`
