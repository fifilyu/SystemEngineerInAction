#!/bin/sh
export PATH="/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin"
dir="$( cd "$( dirname "$0"  )" && pwd  )"
cd $dir

GEM_HOME=`pwd`/vendor/bundle/ruby/`ls vendor/bundle/ruby/`
GEM_BIN=$GEM_HOME/bin
export GEM_PATH=$GEM_PATH:$GEM_HOME
export PATH=$PATH:$GEM_BIN

rm -f images/*
rm -rf .asciidoctor/


bundle exec rake book:build_html
sed -i 's#https://cdnjs.cloudflare.com/ajax/libs/highlight.js/.*/styles/github.min.css#css/github.min.css#' 系统工程师实战.html
sed -i 's#https://cdnjs.cloudflare.com/ajax/libs/highlight.js/.*/highlight.min.js#js/highlight.min.js#' 系统工程师实战.html
sed -i 's#https://cdnjs.cloudflare.com/ajax/libs/mathjax/.*/MathJax.js#js/MathJax/MathJax.js#' 系统工程师实战.html
