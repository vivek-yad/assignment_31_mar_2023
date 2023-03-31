import 'package:assignment/app/features/cash_king/domain/entity/dummy_detail.dart';

import '../../data/model/dummy_detail_model/dummy_detail_model.dart';
import '../../data/model/dummy_task_model/dummy_task_model.dart';
import '../entity/dummy_task.dart';

abstract class Repository{

Future<List<DummyDetailModel>>  getDummyDetail();
 Future<List<DummyTaskModel>> getDummyTask();
}