def file_size(path_to_file)
  File.size(path_to_file)
end

path_to_file = ARGV[0]
print file_size(path_to_file)