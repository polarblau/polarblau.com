desc "Launch preview environment."
task :preview do
  system("for i in ./_layouts/*.haml; do [ -e $i ] && haml $i ${i%.haml}.html; done & bundle exec jekyll --auto --server")
end
