import 'package:flutter/cupertino.dart';

// book
class data_model
{
  var image,book,writer, salary;
  data_model({@required image ,@required book,@required writter,@required salary})
  {
    this.image=image;
    this.book=book;
    this.writer=writter;
    this.salary=salary;
  }
}

List<data_model> bookList=[
  data_model(book: "في ممر الفئران",image: "assets/images/fe mmr.jpeg",salary: "2016",writter: Authorname[0]),
  data_model(book: "فيرتيجو",image: "assets/images/fertego.jpeg",salary: "2007",writter: Authorname[1]),
  data_model(book: "دقات الشامبو",image: "assets/images/dqatalshambo.jpeg",salary: "2018",writter: Authorname[2]),
  data_model(book: "شآبيب",image: "assets/images/images (71).jpeg",salary: "2018",writter: Authorname[0]),
  data_model(book: "أرض زوكيزلا",image: "assets/images/amreta.jpeg",salary: "2016",writter: Authorname[2]),
  data_model(book: "تراب الماس",image: "assets/images/trab almas.jpeg",salary: "2010",writter:Authorname[1] ),
  data_model(book: "في جضرة الغياب",image: "assets/images/unremmeber.jpeg",salary: "2006",writter: Authorname[3]),
  data_model(book: "يوتيوبيا",image: "assets/images/youtybya.jpeg",salary: "2008",writter: Authorname[0]),
  data_model(book: "كم حياة سنعيش؟",image: "assets/images/download (10).jpeg",salary: "2019",writter: Authorname[4]),
];
List<String>Authorname=["أحمد خالد توفيق","أحمد مراد","عمرو عبدالحميد","محممود درويش","كريم الشاذلي",];

// Author
class Author_model // book
    {
  var Image,Name;
  Author_model({@required image ,@required name})
  {
    this.Image=image;
    this.Name=name;

  }
}
List<Author_model>AuthorList=
    [
      Author_model(image:"assets/images/images (75).jpeg" , name:Authorname[0] ),
      Author_model(image:"assets/images/images (73).jpeg" , name:Authorname[1] ),
      Author_model(image:"assets/images/images (72).jpeg" , name:Authorname[2] ),
      Author_model(image:"assets/images/images (76).jpeg" , name:Authorname[3] ),
      Author_model(image:"assets/images/OURoSTI8_400x400.jpg" , name:Authorname[4] ),
    ];