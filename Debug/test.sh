#!/bin/bash
# cleanup
rm -r ./root/*
# Copy website data to the Debug/root
rsync -avz --exclude='Debug' ../* ./root/
# run Jekyll
pushd ./root/
bundle exec jekyll serve
popd