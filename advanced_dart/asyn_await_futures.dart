// asyn and await with futures
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:isolate';


void main()async{
  await getData();
}

Future<Map<String,dynamic>> getData()async{
  //get post put delete
 try{
   final response = await http.get(
    Uri.parse("https://dev-api.dealdox.io/api/lookups/get"),
    headers: {
      "Content-Type": "application/json",
      "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2N2I4MGY2ZDgzOTM4YjI1Zjc3MzY2OTkiLCJlbWFpbCI6InNyaWthbnRhcHJhc2FkcmFqZS51cnNAZGVhbGRveC5pbyIsImlhdCI6MTc0OTAwNjUwOSwiZXhwIjoxNzQ5MjY1NzA5fQ.s3zR2yX6w9rfeA3Fp4gzVaSp_2QtknYQBA_ss1zbXyo"
    },
  );
  if(response.statusCode==200){
    print(jsonDecode(response.body));
    }
 }catch(e){
    print("Error: $e");
  }
}

Future<void> login()async{
final Map<String,dynamic> body = {
    "userEmail":"srikantaprasadraje.urs@dealdox.io",
    "password":"Spm@12345"
};
  final response = await http.post(Uri.parse("http://dev-api.dealdox.io/api/admin/login"),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
      body: jsonEncode(body)
  );
if(response.statusCode==200){
  print(response.body);
}else{
  print("${response.statusCode} ${response.reasonPhrase}");
}
}

void func1(){
  Isolate.spawn(heavyCompute, null); // separate it from main thread
}
//synchronous function
void heavyCompute(dynamic _){
  print("called");
  for(int i=0;i<500;i++){
    print("2");
  }
  print("done");
}