import 'package:assignment/app/features/cash_king/data/model/dummy_detail_model/dummy_detail_model.dart';

import '../../../../domain/entity/dummy_detail.dart';
import '../../../../domain/entity/dummy_task.dart';
import '../../../model/dummy_task_model/dummy_task_model.dart';

abstract class JsonLocalDataSource{
  Future <List<DummyDetailModel>>getDummyDetail();
  Future <List<DummyTaskModel>> getDummyTask();
}