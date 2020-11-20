import 'package:asset_cache/asset_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mediaintersosial/app/ui/SplashScreen/SplashScreen.dart';
import 'package:mediaintersosial/app/ui/materi/MateriScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/BentukPerubahanSosialWidget/ArahPerubahanSosial/ArahPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/BentukPerubahanSosialWidget/KecepatanPerubahanSosial/KecepatanPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/BentukPerubahanSosialWidget/ProsesnyaPerubahanSosial/ProsesnyaPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/BentukPerubahanSosialWidget/SifatPerubahanSosial/SifatPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/BentukPerubahanSosialWidget/UkuranPerubahan/UkuranPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/DampakPerubahanSosial/DampakNegatif.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/DampakPerubahanSosial/DampakPositif.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/AgenPerubahanSosial/AgenPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/FaktorPendorongPerubahanSosial/FaktorPendorongPerubahanSosial.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/FaktorPenghambat/FaktorPenghambatScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/FaktorPerubahanSosial/FaktorExternalPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/FaktorPerubahanSosial/FaktorInternalPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/ProsesPerubahanSosial/ProsesPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/Widget/PerubahanSosialWidget/TeoriPerubahanSosial/TeoriPerubahanSosialScreen.dart';
import 'package:mediaintersosial/app/ui/materi/binding/MateriBinding.dart';
import 'package:mediaintersosial/app/ui/materi/binding/PerubahanSosialBinding.dart';
import 'package:mediaintersosial/app/ui/quiz/binding/QuizBinding.dart';
import 'package:mediaintersosial/app/ui/quiz/ui/QuizSub1Screen.dart';

void main() {
  ByteDataAssets.instance.basePath = 'assets/images/';
  JsonAssets.instance.basePath = 'assets/json/';

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  runApp(MyApp());
}

const Color secondaryColor = Color(0xFF73AFB0);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
      transitionDuration: new Duration(milliseconds: 1000),
      title: 'Flutter Demo',
      theme: buildThemeData(context),
      // theme: ThemeData.dark(),
      initialRoute: '/SPLASH',

      getPages: [
        //Simple GetPage
        GetPage(name: '/SPLASH', page: () => SplashScreen()),
        GetPage(
          name: '/MATERI',
          page: () => MateriScreen(),
          binding: MateriBinding(),
        ),
        GetPage(
          name: '/PROSESPERUBAHANSOSIAL',
          page: () => ProsesPerubahanSosialScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/FAKTORINTERNALPERUBAHANSOSIAL',
          page: () => FaktorInternalPerubahanSosialScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/FAKTOREXTERNALPERUBAHANSOSIAL',
          page: () => FaktorExternalPerubahanSosialScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/FAKTORPENDORONGPERUBAHANSOSIAL',
          page: () => FaktorPendorongPerubahanSosialScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/FAKTORPENHAMBATPERUBAHANSOSIAL',
          page: () => FaktorPenghambatScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/AGENPERUBAHANSOSIAL',
          page: () => AgenPerubahanSosialScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/TEORIPERUBAHANSOSIAL',
          page: () => TeoriPerubahanSosialScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/PROSESNYAPERUBAHANSOSIAL',
          page: () => ProsesnyaPerubahanSosialScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/ARAHPERUBAHANSOSIAL',
          page: () => ArahPerubahanSosialScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/KECEPATANPERUBAHANSOSIAL',
          page: () => KecepatanPerubahanSosialScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/SIFATPERUBAHANSOSIAL',
          page: () => SifatPerubahanSosialScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/UKURANPERUBAHANSOSIAL',
          page: () => UkuranPerubahanSosialScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/DAMPAKPOSITIFPERUBAHANSOSIAL',
          page: () => DampakPositifScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/DAMPAKNEGATIFPERUBAHANSOSIAL',
          page: () => DampakNegatifScreen(),
          binding: PerubahanSosialBinding(),
        ),
        GetPage(
          name: '/QuizSub1',
          page: () => QuizSub1Screen(),
          binding: QuizBinding(),
        )
        // GetPage with custom transitions and bindings
      ],
    );
  }

  ThemeData buildThemeData(BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.blue,
      // accentColor: Colors.indigo[900],
      visualDensity: VisualDensity.adaptivePlatformDensity,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
            textTheme: ButtonTextTheme.primary,
          ),
    );
  }
}
