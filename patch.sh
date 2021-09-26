#!/usr/bin/env bash

./FontForge.AppImage \
  -script $PWD/font-patcher $PWD/"$1" \
    --use-single-width-glyphs \
    --adjust-line-height \
    --quiet \
    --windows \
    --complete \
    -out $PWD/out
