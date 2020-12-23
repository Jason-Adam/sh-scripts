#!/usr/bin/env bash

# Open files in Preview app on mac - useful for images and PDFs
preview() {
    open "$1" -a "Preview";
}

preview;
