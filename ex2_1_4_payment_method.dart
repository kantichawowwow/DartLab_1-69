abstract class PaymentMethod{
  void pay(double amount);
  
}

class CreditCard extends PaymentMethod{
  @override
  void pay(double amount) {
    print("ชำระเงินจำนวน $amount บาท ผ่านบัตรเครดิตเรียบร้อยแล้ว");
  }
}

class PromptPay extends PaymentMethod{
  @override
  void pay(double amount) {
    print("ชำระเงินจำนวน $amount บาท ผ่านPromptPayเรียบร้อยแล้ว");
  }
}

class CashOnDelivery extends PaymentMethod{
  @override
  void pay(double amount) {
    print("ชำระเงินปลายทางจำนวน $amount บาท กรุณาเตรียมเงินสดให้พร้อม");
  }
}

void main(){
  print("วิธีชำระเงิน");
  PaymentMethod Card = CreditCard();
  PaymentMethod PP = PromptPay();
  PaymentMethod Cdeli = CashOnDelivery();

  Card.pay(6500.00);
  PP.pay(450.50);
  Cdeli.pay(149.00);
}