#!/bin/bash

# Add the gh-pages branch of the repository. It will look like a folder named public
git subtree add --prefix=public git@github.com:rrmartins/rodij.me gh-pages --squash

# Pull down the file we just committed. This helps avoid merge conflicts
git subtree pull --prefix=public git@github.com:rrmartins/rodij.me.git gh-pages

# Run hugo. Generated site will be placed in public directory (or omit -t ThemeName if you're not using a theme)
hugo

# Add everything
git add -A

# Commit and push to master
git commit -m "Updating site"

git push origin master

# Push the public subtree to the gh-pages branch
git subtree push --prefix=public git@github.com:rrmartins/rodij.me.git gh-pages
