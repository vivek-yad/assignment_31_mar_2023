import 'package:assignment/app/features/cash_king/domain/entity/dummy_detail.dart';

import '../../../data/model/dummy_detail_model/dummy_detail_model.dart';

abstract class DummyDetailUseCase {
  Future<List<DummyDetailModel>> call();
}
