desc "Launch preview environment."
task :preview do
  system("for i in ./_layouts/*.haml; do [ -e $i ] && haml $i ${i%.haml}.html; done & jekyll --server")
end
