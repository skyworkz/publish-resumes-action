#!/bin/bash

cd $GITHUB_WORKSPACE

FOLDERS=./resumes/*
for resume in $FOLDERS
do
    config=$(basename "$resume")
    hackmyresume build "$GITHUB_WORKSPACE/resumes/${config}/resume.json" to "$GITHUB_WORKSPACE/out/${config}/CV ${config} - Skyworkz.doc" "$GITHUB_WORKSPACE/out/${config}/CV ${config} - Skyworkz.pdf" --theme skyworkz
done
