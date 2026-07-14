import 'dart:async';
void main() {

  StreamController<String> controller = StreamController<String>();


  controller.stream.listen(
    (Noti) => print("แจ้งเตือน: $Noti"),
    onDone: () => print("สตรีมปิดแล้ว"),
  );

  controller.add("ข้อความเข้าแล้ว");
  controller.add("คุณได้รับข้อความใหม่");
  controller.add("ระบบปิดปรับปรุงคืนนี้");

  controller.close();
}
