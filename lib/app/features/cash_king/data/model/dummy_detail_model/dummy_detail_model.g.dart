// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dummy_detail_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DummyDetailModelAdapter extends TypeAdapter<DummyDetailModel> {
  @override
  final int typeId = 1;

  @override
  DummyDetailModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DummyDetailModel();
  }

  @override
  void write(BinaryWriter writer, DummyDetailModel obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DummyDetailModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
