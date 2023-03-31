
import '../../../data/model/dummy_task_model/dummy_task_model.dart';
import '../../entity/dummy_task.dart';

abstract class DummyTaskUseCase{
  Future<List<DummyTaskModel>> call();
}