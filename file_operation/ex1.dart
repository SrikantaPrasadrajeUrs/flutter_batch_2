import 'dart:io';

void main(List<String> args) {
   deleteFile();
  createSysnc();
  cretaFileAsync();
  writeToFile();
  readFile();
}

void createSysnc(){
  final File file = File("example1.txt");
  if(!file.existsSync()){
    file.createSync();
    print("File created successfully");
  }
}

void cretaFileAsync() async {
  final File file = File("example2.txt");
  if(!await file.exists()){
    await file.create();
    print("File created successfully");
  } else {
    print("File already exists");
  }
}

void writeToFile(){
  final File file = File("example1.txt");
  if(file.existsSync()){
    file.writeAsString("hi srikanta prasad raje", mode: FileMode.append);
  }else{
    print("File does not exist");
    file.createSync();
    writeToFile();
  }
}

void readFile(){
  final File file = File("example1.txt");
  if(file.existsSync()){
    String text = file.readAsStringSync();
    print(text);
  } else {
    print("File does not exist");
  }
}

void deleteFile(){
  final file = File("example1.txt");
  if(file.existsSync()){
    file.deleteSync();
  }
}