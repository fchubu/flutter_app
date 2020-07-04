import 'package:flutter/material.dart';

final _icons = <String, IconData>{
    'add_alert': Icons.add_alert,
    'accesibility': Icons.accessibility,
    'folder_open': Icons.folder_open,
};

Icon getIcon (String iconName, Color color) => Icon(_icons[iconName], color: color);
