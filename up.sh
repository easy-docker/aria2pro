#!/bin/bash
git remote add upstream https://github.com/P3TERX/Aria2-Pro-Docker.git
git remote -v
git fetch upstream
git checkout master
git merge upstream/master
git push origin master
