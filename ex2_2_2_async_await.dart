
Future<void> status() async {
  String result = await Future.delayed(Duration(seconds: 3), () => '2. โหลดเสร็จ');
  print(result);
}

void main() async {
  print("1. เริ่ม");
  status();
  print("3. จบ");
}