import 'dart:convert';

import 'package:app_live/api_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ApiView extends StatelessWidget {
  const ApiView({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.watch<ApiController>().response == null) {
      context.watch<ApiController>().getData();
    }

    return Scaffold(
      body: context.watch<ApiController>().response == null
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: context.watch<ApiController>().response!.length,
              itemBuilder: (context, i) {
                return Text(
                    "${context.watch<ApiController>().response!.first.slogan}");
              }),
    );
  }
}
