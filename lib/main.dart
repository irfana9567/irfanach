import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irfanach/bottom_navigationbar.dart';
import 'package:irfanach/class_page.dart';
import 'package:irfanach/dropdown_button.dart';
import 'package:irfanach/first_page.dart';
import 'package:irfanach/grid_view.dart';
import 'package:irfanach/home_page.dart';
import 'package:irfanach/irfana.dart';
import 'package:irfanach/list_grid.dart';
import 'package:irfanach/list_view.dart';
import 'package:irfanach/my_homepage.dart';
import 'package:irfanach/num_one.dart';
import 'package:irfanach/packages.dart';
import 'package:irfanach/page_1.dart';
import 'package:irfanach/result_page.dart';
import 'package:irfanach/splash_screen.dart';
import 'package:irfanach/tab_bar.dart';
import 'package:irfanach/tab_bar2.dart';
import 'package:irfanach/text_form.dart';
import 'package:irfanach/widget_page.dart';
import 'package:irfanach/work_out.dart';
import 'package:http/http.dart' as http;

import 'color_box.dart';
import 'firebase_options.dart';
var height;
var width;

// final nameProvider=Provider<String>((ref) =>'irfana');
//  final nameProvider=StateProvider<String?>((ref) => null);
// final userProvider=StateNotifierProvider((ref) => UserNotifier(User(name: '', age: 0)));
// final fetchUserProvider=FutureProvider((ref) {
//   const url="";
// } );

// final streamProvider=StreamProvider((ref) async*{
//   yield[1,2,3,4,5];
// });
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height;
    // String name='';
    return GestureDetector(
      onTap:() {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        // theme: ThemeData(
        //   textTheme: GoogleFonts.damionTextTheme()
        // ),
        debugShowCheckedModeBanner: false,
        home:numOne(),
      ),
    );
  }
}
