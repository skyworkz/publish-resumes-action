#!/bin/bash

cd $GITHUB_WORKSPACE

FOLDERS=./resumes/*
for resume in $FOLDERS
do
    config=$(basename "$resume")
    hackmyresume build "$GITHUB_WORKSPACE/resumes/${config}/resume.json" to "$GITHUB_WORKSPACE/out/${config}/${config}_Skyworkz.doc" "$GITHUB_WORKSPACE/out/${config}/${config}_Skyworkz.pdf" --theme skyworkz
done
