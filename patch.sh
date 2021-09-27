#!/usr/bin/env bash


for font in *.ttf
do
  ./FontForge.AppImage \
    -script $PWD/font-patcher "$PWD/$font" \
      --use-single-width-glyphs \
      --windows \
      --complete \
      --progressbars \
      --careful \
      -out $PWD/out
done
