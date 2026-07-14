Stream<String> countdown(int from) async* {
  for (int i = from; i >= 0; i-- ){
    await Future.delayed(Duration(seconds: 1));
    if ( i > 0 ){
      yield "$i วินาที";
    } else {
      yield "หมดเวลา!";
    }
  }
}
void main() async {
  await for (var msg in countdown(7)) {
    print(msg);
  }
}