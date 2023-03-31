import 'package:assignment/app/features/cash_king/data/data_source/local_json_data/abstract_json_data_source/abstract_json_data_source.dart';
import 'package:assignment/app/features/cash_king/data/model/dummy_task_model/dummy_task_model.dart';
import 'package:assignment/app/features/cash_king/domain/entity/dummy_detail.dart';
import 'package:assignment/app/features/cash_king/domain/entity/dummy_task.dart';
import '../../domain/repo/repository.dart';
import '../model/dummy_detail_model/dummy_detail_model.dart';

class RepositoryImpl implements Repository{
  JsonLocalDataSource jsonLocalDataSource;
  RepositoryImpl(this.jsonLocalDataSource);

  @override
  Future<List<DummyDetailModel>> getDummyDetail() {
   return jsonLocalDataSource.getDummyDetail();
    // TODO: implement getDummyDetail
  }

  @override
  Future<List<DummyTaskModel>> getDummyTask() {
  return jsonLocalDataSource.getDummyTask();
  }
}