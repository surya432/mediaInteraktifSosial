import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/quiz/ui/QuizDoneScreen.dart';
import 'package:mediaintersosial/app/ui/quiz/ui/QuizHarian.dart';
import 'package:mediaintersosial/app/ui/quiz/ui/WidgetSub1Quiz1.dart';
import 'package:mediaintersosial/app/ui/quiz/ui/WidgetSubQuiz2.dart';
import 'package:mediaintersosial/app/ui/quiz/ui/WidgetSubQuiz3.dart';

class QuizController extends GetxController {
  var data = List<Map<dynamic, dynamic>>().obs;
  var numberQuiz = 0.obs;
  var onclickj = false.obs;
  var klik = "".obs;
  int javabne = 0;
  var jawabbenar = "".obs;
  get getTotalBenar => javabne;

  @override
  void onInit() {
    // interval(onclickj, (_) => checkanswer(),
    //     time: Duration(milliseconds: 2500));
    // debounce(onclickj, (_) => checkanswer(),
    //     time: Duration(milliseconds: 2500));
    // debounce(numberQuiz, (_) => nextpertanyaan(),
    //     time: Duration(milliseconds: 250));
    super.onInit();
  }

  checkanswer() {
    if (klik.value == jawabbenar.value) {
      javabne++;
      print("Jawaban Benar");
    } else {
      print("Jawaban salah");
    }
    onclickj.value = false;

    numberQuiz.value = numberQuiz.value + 1;
    // update();
    if (numberQuiz >= data.length) {
      // numberQuiz.value = 0;
      Get.off(QuizDoneScreen(), arguments: javabne);
    }
  }

  klikjawab(String answer, String jwbbenar) {
    if (onclickj.value == false) {
      print("klik lagi true");
      onclickj.value = true;
      klik.value = answer;
      jawabbenar.value = jwbbenar;
      new Future.delayed(const Duration(seconds: 2), () => checkanswer());
    } else {
      print("klik lagi false");
    }
  }

  void initSubSoal1() async {
    numberQuiz.value = 0;
    data.clear();
    data.assignAll([
      {
        "route": WidgetSubSoal1Quiz1(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal1Quiz2(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal1Quiz3(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal1Quiz4(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal1Quiz5(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal1Quiz6(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal1Quiz7(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal1Quiz8(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal1Quiz9(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal1Quiz10(),
        "images": "assets/kuis/headtitle-17.png"
      },
    ]);
  }

  nextpertanyaan() {
    print(numberQuiz.value);
  }

  initQuiz1() {}

  initSubSoal2() {
    numberQuiz.value = 0;
    data.clear();
    data.assignAll([
      {
        "route": WidgetSubSoal2Quiz1(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal2Quiz2(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal2Quiz3(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal2Quiz4(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal2Quiz5(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal2Quiz6(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal2Quiz7(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal2Quiz8(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal2Quiz9(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal2Quiz10(),
        "images": "assets/kuis/headtitle-17.png"
      },
    ]);
  }

  initSubSoal3() {
    numberQuiz.value = 0;
    data.clear();
    data.assignAll([
      {
        "route": WidgetSubSoal3Quiz1(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal3Quiz2(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal3Quiz3(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal3Quiz4(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal3Quiz5(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal3Quiz6(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal3Quiz7(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal3Quiz8(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal3Quiz9(),
        "images": "assets/kuis/headtitle-17.png"
      },
      {
        "route": WidgetSubSoal3Quiz10(),
        "images": "assets/kuis/headtitle-17.png"
      },
    ]);
  }

  initSubSoalHarian() {
    numberQuiz.value = 0;
    data.clear();
    data.assignAll([
      {"route": WidgetQuizHarian1(), "images": "assets/kuis/headtitle-17.png"},
      {"route": WidgetQuizHarian2(), "images": "assets/kuis/headtitle-17.png"},
      {"route": WidgetQuizHarian3(), "images": "assets/kuis/headtitle-17.png"},
      {"route": WidgetQuizHarian4(), "images": "assets/kuis/headtitle-17.png"},
      {"route": WidgetQuizHarian5(), "images": "assets/kuis/headtitle-17.png"},
      {"route": WidgetQuizHarian6(), "images": "assets/kuis/headtitle-17.png"},
      {"route": WidgetQuizHarian7(), "images": "assets/kuis/headtitle-17.png"},
      {"route": WidgetQuizHarian8(), "images": "assets/kuis/headtitle-17.png"},
      {"route": WidgetQuizHarian9(), "images": "assets/kuis/headtitle-17.png"},
      {"route": WidgetQuizHarian11(), "images": "assets/kuis/headtitle-17.png"},
      {"route": WidgetQuizHarian12(), "images": "assets/kuis/headtitle-17.png"},
      {"route": WidgetQuizHarian13(), "images": "assets/kuis/headtitle-17.png"},
      {"route": WidgetQuizHarian14(), "images": "assets/kuis/headtitle-17.png"},
      {"route": WidgetQuizHarian15(), "images": "assets/kuis/headtitle-17.png"},
    ]);
  }
}
