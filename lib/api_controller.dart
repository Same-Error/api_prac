import 'dart:convert';

import 'package:app_live/api_modal.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiController extends ChangeNotifier {
  List<Ofslogan>? _response;
  List<Ofslogan>? get response => _response;

  void getData() async {
    var api = await http.get(Uri.parse(
        "https://mapi.trycatchtech.com/v3/virat_kohli/slogans_list_no_page"));
    if (api.statusCode == 200) {
      _response = Ofslogan.slog(jsonDecode(api.body));
      notifyListeners();
    }
  }
}
