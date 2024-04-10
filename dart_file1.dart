import 'dart:io';

void main() {
  // create file object
  File my_file = File('text.txt');

  // read file
  String contents = my_file.readAsStringSync();

  // print contents
  // print(contents);

  // file path
  print(
      "\n:------------------------------------------------------:\nFile's path: ${my_file.path}");
  // file absolute path
  print("\nFile's absolute path: ${my_file.absolute.path}");
  // file size in bytes
  print("\nFile's size: ${my_file.lengthSync()} bytes");
  // file's last modified
  print(
      "\nFile last modified: ${my_file.lastModifiedSync()} \n:-----------------------------------------------------:\n");
}
