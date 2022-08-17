#!/bin/bash

cd $GITHUB_WORKSPACE

FOLDERS=./resumes/*
for resume in $FOLDERS
do
    config=$(basename "$resume")
    hackmyresume build "$GITHUB_WORKSPACE/resumes/${config}/resume.json" to "$GITHUB_WORKSPACE/out/${config}_Skyworkz.doc" "$GITHUB_WORKSPACE/out/${config}_Skyworkz.pdf" --theme skyworkz
    #sanitize doc files
    sed -i 's#\&amp;#\&#g' "$GITHUB_WORKSPACE/out/${config}_Skyworkz.doc"
    sed -i 's#\&apos;#\'#g' "$GITHUB_WORKSPACE/out/${config}_Skyworkz.doc"
done
