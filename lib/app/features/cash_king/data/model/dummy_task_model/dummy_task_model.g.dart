// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dummy_task_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DummyTaskModelAdapter extends TypeAdapter<DummyTaskModel> {
  @override
  final int typeId = 2;

  @override
  DummyTaskModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DummyTaskModel();
  }

  @override
  void write(BinaryWriter writer, DummyTaskModel obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DummyTaskModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
