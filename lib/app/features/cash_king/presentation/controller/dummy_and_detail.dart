import 'package:assignment/app/features/cash_king/data/model/dummy_task_model/dummy_task_model.dart';
import 'package:assignment/app/features/cash_king/domain/entity/dummy_detail.dart';
import 'package:assignment/app/features/cash_king/domain/use_cases/dummy_detail/implement_dummy_detail.dart';
import 'package:assignment/app/features/cash_king/domain/use_cases/dummy_task/implement_dummy_task.dart';
import 'package:get/get.dart';
import '../../data/model/dummy_detail_model/dummy_detail_model.dart';
import '../../domain/entity/dummy_task.dart';

class DummyDetailAndTaskController extends GetxController {
  final _getDummyDetailUseCase = Get.find<DummyDetailUseCaseImpl>();
  final _getDummyTaskUseCase = Get.find<DummyTaskUseCaseImpl>();
  final dummyDetail = RxList<DummyDetailModel>().obs;
  final dummyTask = RxList<DummyTaskModel>().obs;

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
  await  getDummyTask();
  await  getDummyDetail();
  }

  getDummyDetail() async {
    final dummyDetails = await _getDummyDetailUseCase();
    print(dummyDetails);
    dummyDetail.value.assignAll(dummyDetails);
    dummyDetail.refresh();
    update();
  }

  getDummyTask() async {
    final dummyTasks = await _getDummyTaskUseCase();
    dummyTask.value.assignAll(dummyTasks);
    dummyTask.refresh();
    update();
  }
}
