Future<String> status() {
  return Future.delayed(Duration(seconds: 3), () => '2. โหลดเสร็จ');
}

void main() {
  print("1. เริ่ม");
  status().then((value) => print(value));
  print("3. จบ");
}