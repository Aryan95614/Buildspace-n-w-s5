import 'package:demoapp/utils/fonts.dart';
import 'package:demoapp/utils/SideMenuView.dart';
import 'package:demoapp/views/MainNav.dart';
import 'package:demoapp/views/SideNav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// Controllers
import 'controllers/constantsController.dart';

// Directly ran afterwards
ConstantsController constantsController = Get.find();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Implementing the env file
  await dotenv.load(fileName: ".env");

  // Implementing the GetxControllers
  Get.put(ConstantsController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Buildspace Week 2',
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor:
              constantsController.SCAFFOLD_BACKGROUND_COLOR),
      home: const MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey, // Ensure GlobalKey is accessible
        appBar: AppBar(
          title: Text(
            'DevEase: Focus on your AI',
            style: Fonts.normalReturn(),
          ),
          backgroundColor: constantsController.APPBAR_BACKGROUND_COLOR,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 2, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.height * 0.87,
                          child: const SideNavViewer(),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          height: MediaQuery.of(context).size.height * 0.87,
                          child: const MainNavViewer(),
                        ),
                      ],
                    )
                  ],
                ))));
  }
}
