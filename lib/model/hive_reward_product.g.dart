// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_reward_product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveRewardProductAdapter extends TypeAdapter<HiveRewardProduct> {
  @override
  final int typeId = 9;

  @override
  HiveRewardProduct read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveRewardProduct(
      id: fields[0] as String,
      name: fields[1] as String,
      image: fields[2] as String,
      count: fields[3] as int,
      requirePoints: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HiveRewardProduct obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.count)
      ..writeByte(4)
      ..write(obj.requirePoints);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveRewardProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
