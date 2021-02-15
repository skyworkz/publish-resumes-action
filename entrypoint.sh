#!/bin/bash

cd $GITHUB_WORKSPACE

FOLDERS=./resumes/*
for resume in $FOLDERS
do
    config=`basename $resume`
    echo $config
    hackmyresume build $GITHUB_WORKSPACE/resumes/${config}/resume.json to $GITHUB_WORKSPACE/out/${config}.pdf --theme skyworkz
    hackmyresume build $GITHUB_WORKSPACE/resumes/${config}/resume.json to $GITHUB_WORKSPACE/out/${config}.doc --theme skyworkz
done
