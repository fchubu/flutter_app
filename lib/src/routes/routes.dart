import 'package:flutter/material.dart';

import 'package:flutter_app/src/routes/paths.dart';

import 'package:flutter_app/src/pages/home_page.dart';
import 'package:flutter_app/src/pages/alert_page.dart';
import 'package:flutter_app/src/pages/avatar_page.dart';
import 'package:flutter_app/src/pages/card_page.dart';


Map<String, WidgetBuilder> getAppRoutes() {
    return <String, WidgetBuilder>{
        home  : (BuildContext contex) => HomePage(),
        alert : (BuildContext contex) => AlertPage(),
        avatar: (BuildContext contex) => AvatarPage(),
        card  : (BuildContext contex) => CardPage(),
    };
}