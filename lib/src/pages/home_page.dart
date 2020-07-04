import 'package:flutter/material.dart';

import 'package:flutter_app/src/providers/menu_provider.dart';
import 'package:flutter_app/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Componentes'),
            ),
            body: _list()
        );
    }

    Widget _list() {
        return FutureBuilder(
            future: menuProvider.loadData(),
            initialData: [],
            builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) => ListView(
                children: _itemList(snapshot.data, context)
            )
        );
    }

    List<Widget> _itemList(List<dynamic> list, BuildContext context) {
        final List<Widget> options = [];
      
        list.forEach((_option) {
            final _widget = ListTile( 
                title: Text(_option['text']),
                leading: getIcon(_option['icon'], Colors.blueAccent),
                trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueAccent),
                onTap: () => Navigator.pushNamed(context, _option['route']),
            );

            options..add(_widget)
                    ..add(Divider());     
        });
        
        return options;
    }
}