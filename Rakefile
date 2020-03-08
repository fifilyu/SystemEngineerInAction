namespace :book do
  desc 'prepare build'
  task :prebuild do
    Dir.mkdir 'images' unless Dir.exists? 'images'
    Dir.glob("book/*/images/*").each do |image|
      FileUtils.copy(image, "images/" + File.basename(image))
    end
  end

  desc 'build basic html book'
  task :build_html => :prebuild do
    puts "Converting to HTML..."
    `bundle exec asciidoctor -r asciidoctor-diagram seia.asc -o 系统工程师实战.html`
    puts " -- HTML output at 系统工程师实战.html"
  end

  desc 'build basic pdf book'
  task :build_pdf => :prebuild do
    puts "Converting to PDF... (this one takes a while)"
    `bundle exec asciidoctor-pdf -r asciidoctor-diagram -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=resources/CN-theme.yml -a pdf-fontsdir=resources/fonts seia.asc -o 系统工程师实战.pdf --trace`
    puts " -- PDF  output at 系统工程师实战.pdf"
  end
end
