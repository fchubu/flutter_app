import 'package:flutter/material.dart';
import 'package:flutter_app/src/routes/routes.dart';

class App extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter App',
            initialRoute: '/',
            routes: getAppRoutes()
        );
    }
}