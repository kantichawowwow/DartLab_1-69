Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));

  if (userId <= 0) {
    throw Exception('ID ไม่ถูกต้อง');
  }
  return {
    'id': userId,
    'name': 'กันติชา ฟูวงศ์',
    'age': 21,
  };
}
void main() async {
  print('เริ่มการทดสอบระบบ');

  print('ID : 1');
  try {
    Map<String, dynamic> profile = await fetchProfile(5);
    print('ชื่อของคุณคือ : ${profile['name']}');
  } catch (error) {
    print('ข้อมูลไม่ถูกต้อง : $error');
  } finally {
    print('การทำงานเสร็จสิ้น');
  }
  print('ID: 0');
  try {
    Map<String, dynamic> profile = await fetchProfile(-1);
    print('ชื่อของคุณคือ : ${profile['name']}');
  } catch (error) {
    print('ข้อมูลไม่ถูกต้อง : $error');
  } finally {
    print('การทำงานเสร็จสิ้น');
  }
}