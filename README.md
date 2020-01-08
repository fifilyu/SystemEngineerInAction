# 系统工程师实战

一本关于个人成长、软件开发、系统运维、产品运营、思维、思考的杂记。

你可以在以下地址找到本书的在线版本： https://fifilyu.github.io/seia

## 环境准备


    bundle install --path vendor/bundle
    GEM_HOME=`pwd`/vendor/bundle/ruby/2.6.0
    GEM_BIN=$GEM_HOME/bin
    export GEM_PATH=$GEM_PATH:$GEM_HOME
    export PATH=$PATH:$GEM_BIN
    asciidoctor-pdf-cjk-kai_gen_gothic-install


## 生成文档

    sh build.sh

使用 `asciidoctor` 和 `asciidoctor-pdf` 项目生成本书。