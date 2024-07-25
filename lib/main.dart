import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_food_ordering_app/scr/providers/category.dart';
import 'package:my_food_ordering_app/scr/providers/user.dart'
    as myAppAuth; // Alias to resolve naming conflict
import 'package:my_food_ordering_app/scr/providers/user.dart';
import 'package:my_food_ordering_app/scr/screens/home.dart';
import 'package:my_food_ordering_app/scr/screens/login.dart';
import 'package:my_food_ordering_app/scr/widgets/loading.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: UserProvider.initialize()),
        ChangeNotifierProvider.value(value: CategoryProvider.initialize()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ScreensController(),
      )));
}

class ScreensController extends StatelessWidget {
  const ScreensController({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<myAppAuth.UserProvider>(context); // Use alias here
    switch (auth.status) {
      case Status.Uninitialized:
        return Loading();
      case Status.Unauthenticated:
      case Status.Authenticating:
        return LoginScreen();
      case Status.Authenticated:
        return Home();
      default:
        return LoginScreen();
    }
  }
}
