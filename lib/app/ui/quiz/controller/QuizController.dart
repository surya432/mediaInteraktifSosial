import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/DampakPerubahanSosial/DampakNegatif.dart';

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
    // interval(onclickj, (_) => checkanswer(),time: Duration(milliseconds: 2500));
    debounce(onclickj, (_) => checkanswer(),
        time: Duration(milliseconds: 2500));
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
      // Get.off(QuizDoneScreen(), arguments: javabne);
    }
  }

  klikjawab(String answer, String jwbbenar) {
    if (!onclickj.value) {
      print("klik lagi true");
      onclickj.value = true;
      klik.value = answer;
      jawabbenar.value = jwbbenar;
    } else {
      print("klik lagi false");
    }
  }

  void initSubSoal1() async {
    numberQuiz.value = 0;
    data.clear();
    data.assignAll([
      {"route": WidgetDampakNegatif1(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif2(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif3(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif4(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif5(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif6(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif7(), "images": "assets/button/btn-05.png"},
      {"route": WidgetDampakNegatif8(), "images": "assets/button/btn-05.png"}
    ]);
  }

  nextpertanyaan() {
    print(numberQuiz.value);
  }
}
