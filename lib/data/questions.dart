import 'package:workshop_0211/models/question_model.dart';

const questions = [
  QuestionModel("Hangisi bir widget türüdür?",
      ["Stateful", "Constructor", "Class", "Const"]),
  QuestionModel("Hangisi Flutter buton türü değildir?",
      ["TextButton", "ElevatedButton", "ImageButton", "OutlinedButton"]),
  QuestionModel("Flutter kim tarafından oluşturuldu?",
      ["Google", "Facebook", "Adobe", "Microsoft"]),
  QuestionModel("Flutter tarafından hangi programlama dili kullanılır?",
      ["Ruby", "C++", "Kottin", "Dart"]),
  QuestionModel("Dart programlama dilini kim yarattı?", [
    "Brendan Eich",
    "Bjarne Stroustrup",
    "Lars Bak and Kasper Lund",
    "Jeremy Ashkenas"
  ]),
  QuestionModel(
      "Hangisi dart dilinde kullanılabilen döngü ifadelerden değildir",
      ["Do-While", "Loop", "For", "While"]),
  QuestionModel("Hangisi Flutter'ın avantajlarından biri değildir?", [
    "Dart dili ile nesne yönelimli yazılbilmesi",
    "Widget altyapısına sahip olması",
    "Sadece Android için geliştirme yapılabiliyor olması",
    "Cross Platform olması"
  ]),
  QuestionModel("Hangisi durum bilgisi tutan widget'lara verilen isimdir?", [
    "Stateful Widget",
    "Maintainable Widget",
    "Basic Widget",
    "Managable Widget"
  ]),
  QuestionModel(
      "Bir önceki sayfaya gitmek için hangi Navigation fonksiyonu kullanılır?",
      ["goto", "pop", "push", "delete"]),
  QuestionModel("Hangisi Dart dilinde tanımlı veri timlerinden biri değildir?",
      ["String", "int", "bool", "long"]),
  QuestionModel("FINISH !", [])
];
