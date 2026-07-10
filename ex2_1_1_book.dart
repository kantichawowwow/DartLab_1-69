class Book {
  String? title;
  String? author;
  int? price;

  Book(this.title, this.author, this.price);
  void showDetail() {
    print("ชื่อเรื่อง : $title, ผู้เขียน : $author, ราคา $price");
  }
}

void main() {
  Book book1 = Book("What Happened to YouM", "Oprah Winfrey & Dr. Bruch D. Perry", 395);
  Book book2 = Book("ชีวิตเรามีค่าแค่สี่พันสัปดาห์", "Oliver Burkeman", 265);

  book1.showDetail();
  book2.showDetail();
}