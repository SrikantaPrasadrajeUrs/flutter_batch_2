import 'dart:io';


  const String _filepath = "example1.txt";
void main(List<String> args){
  deleteFile(_filepath);
}

Future<File> create()async{
  File file = File(_filepath);
  if(!(await file.exists())){
    await file.create();
  }
  return file;
}



// delete 
void deleteFile(String filePath){
  File file = File(filePath);
  if(file.existsSync()){
    file.deleteSync();
  }
}
// add content
Future<void> addContent(String content)async{
  // then method
  await create().then((File file)async{
   await file.writeAsString(content);
  });
} 
// read
Future<void> readContent()async{
  final file = await create();
  final content = await file.readAsString();
  print(content);
}
// update
Future<void> update(String content)async{
    await create().then((file)async{
       await file.writeAsString(content, mode: FileMode.append);
    });
  
}


