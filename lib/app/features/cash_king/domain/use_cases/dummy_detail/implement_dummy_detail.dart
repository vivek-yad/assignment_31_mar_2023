import 'package:assignment/app/features/cash_king/data/repo_impl/repo_impl.dart';
import 'package:assignment/app/features/cash_king/domain/entity/dummy_detail.dart';

import '../../../data/model/dummy_detail_model/dummy_detail_model.dart';
import 'abstrsact_dummy_detail.dart';

class DummyDetailUseCaseImpl implements DummyDetailUseCase{
  RepositoryImpl dummyRepo;
  DummyDetailUseCaseImpl(this.dummyRepo);

  @override
  Future<List<DummyDetailModel>> call() async {
    // TODO: implement call
   return await dummyRepo.getDummyDetail();
  }
}