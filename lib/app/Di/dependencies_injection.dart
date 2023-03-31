import 'package:assignment/app/features/cash_king/data/data_source/local_json_data/abstract_json_data_source/abstract_json_data_source.dart';
import 'package:assignment/app/features/cash_king/data/data_source/local_json_data/abstract_json_data_source/imple_json_data_source.dart';
import 'package:assignment/app/features/cash_king/data/repo_impl/repo_impl.dart';
import 'package:assignment/app/features/cash_king/domain/use_cases/dummy_detail/implement_dummy_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import '../features/cash_king/data/model/dummy_detail_model/dummy_detail_model.dart';
import '../features/cash_king/data/model/dummy_task_model/dummy_task_model.dart';
import '../features/cash_king/domain/use_cases/dummy_task/implement_dummy_task.dart';
import '../features/cash_king/presentation/controller/dummy_and_detail.dart';

class Di{
 static init() async {
    await Hive.initFlutter();
    ///Hive.registerAdapter(UserAdapter());
    WidgetsFlutterBinding.ensureInitialized();
    final appDocumentDir = await  getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    Hive.registerAdapter((DummyDetailModelAdapter()));
    Hive.registerAdapter(DummyTaskModelAdapter());
    final JsonLocalDataSource userLocalDataSource=JsonDataSourceImpl();
    final dummyRepo=RepositoryImpl(userLocalDataSource );
    Get.put(DummyDetailUseCaseImpl(dummyRepo));
    Get.put(DummyTaskUseCaseImpl(dummyRepo));
   //Get.put(UserRepositoryImpl(localDataSource: userLocalDataSource));
    Get.put(DummyDetailAndTaskController());
  }
}