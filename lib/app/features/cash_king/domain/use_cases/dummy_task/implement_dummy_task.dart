import 'package:assignment/app/features/cash_king/data/repo_impl/repo_impl.dart';
import 'package:assignment/app/features/cash_king/domain/entity/dummy_task.dart';

import '../../../data/model/dummy_task_model/dummy_task_model.dart';
import 'abstract_dummy_task.dart';

class DummyTaskUseCaseImpl implements DummyTaskUseCase{
  RepositoryImpl dummyRepo;
  DummyTaskUseCaseImpl(this.dummyRepo);

  @override
  Future<List<DummyTaskModel>> call() async {
    // TODO: implement call
    return await  dummyRepo.getDummyTask();
  }
}
