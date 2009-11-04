def is_installed
  true
end

def version
  "5.1.3"
end

def print_full_version
  puts "5.1.3"
end

def copy_data(source_dir, dest_dir)
  ENV["DEST_DIR"] = dest_dir
  s = <<CMD
mkdir "$DEST_DIR"
cd "$DEST_DIR"
echo "You must interactively copy the files using PathFinder" >> README.txt
CMD
  puts s
  puts "------------"
  system s
end