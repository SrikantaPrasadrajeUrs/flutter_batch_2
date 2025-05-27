void main(List<String> args) {
  int a = 10;
  int? b = 3;

  // if b has null assign a or else assign b
  // ? ?? ??= null aware operators
  int c = b??a;
  print("c: $c");
  int? d = 40;
  // if d = null assign a or else
  d??=a;
  print("d: $d");
}