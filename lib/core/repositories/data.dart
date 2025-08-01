import 'package:calmi_app/providers/chat_search_provider.dart';
import 'package:flutter/material.dart';
import 'package:calmi_app/features/chat/clear_chat_dialog.dart';
import 'package:provider/provider.dart';

final List<Map<String, dynamic>> chatDropDownItems = [
  {
    'title': 'Search',
    'icon': 'assets/icons/search.png',
    'color': Colors.black,
    'function': (BuildContext context) {
      Navigator.pop(context);
      Provider.of<ChatSearchProvider>(context, listen:false).showSearchBar();
    }
  },
  {
    'title': 'Export Chat',
    'icon': 'assets/icons/export.png',
    'color': Colors.black,
    'function': (BuildContext context) {
      Navigator.pop(context);
    }
  },
  {
    'title': 'Clear Chat',
    'icon': 'assets/icons/trash.png',
    'color': Colors.red,
    'function': (BuildContext context) {
      Navigator.pop(context);
      showClearChatDialog(context);
    }
  },
];