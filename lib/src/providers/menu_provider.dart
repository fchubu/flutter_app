import 'dart:convert';

import "package:flutter/services.dart" show rootBundle;

class _MenuProvider {
    List<dynamic> _options = [];

    _MenuProvider();

    Future<List<dynamic>> loadData() async {
        final response = await rootBundle.loadString('data/menu_options.json');

        Map data = json.decode(response);
        _options = data['routes'];
        return _options;
    }
        
}

final menuProvider = new _MenuProvider();