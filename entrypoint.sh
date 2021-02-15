#!/bin/bash

mkdir -p /out

cd $GITHUB_WORKSPACE

FOLDERS=./resumes/*
for resume in $FOLDERS
do
    config=`basename $resume`
    echo $config
    hackmyresume build resumes/${config}/resume.json to /out/{config}.all --theme skyworkz
done
