import 'dart:convert';

import 'package:assignment/app/core/value/app_assets.dart';
import 'package:assignment/app/features/cash_king/data/model/dummy_detail_model/dummy_detail_model.dart';

import 'package:assignment/app/features/cash_king/data/model/dummy_task_model/dummy_task_model.dart';
import 'package:flutter/services.dart';

import '../../../../domain/entity/dummy_detail.dart';
import '../../../../domain/entity/dummy_task.dart';
import 'abstract_json_data_source.dart';

class JsonDataSourceImpl implements JsonLocalDataSource {
  @override
  Future<List<DummyDetailModel>> getDummyDetail() async {
    final dummyModel = await rootBundle.loadString(AppAssets.dummyDetailJson);
    List<Map<String, dynamic>> jsonList =
        jsonDecode(dummyModel).cast<Map<String, dynamic>>();
    List<DummyDetailModel> dummyDetail =
        jsonList.map((json) => DummyDetailModel.fromJson(json)).toList();
    return dummyDetail;
  }

  @override
  Future<List<DummyTaskModel>> getDummyTask() async {
    final dummyModel = await rootBundle.loadString(AppAssets.dummyTaskJson);
    List<Map<String, dynamic>> jsonList =
        jsonDecode(dummyModel).cast<Map<String, dynamic>>();
    List<DummyTaskModel> dummyTask =
        jsonList.map((json) => DummyTaskModel.fromJson(json)).toList();

    return dummyTask;
  }
}
