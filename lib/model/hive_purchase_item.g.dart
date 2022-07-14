// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_purchase_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HivePurchaseItemAdapter extends TypeAdapter<HivePurchaseItem> {
  @override
  final int typeId = 6;

  @override
  HivePurchaseItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HivePurchaseItem(
      itemName: fields[0] as String,
      count: fields[1] as int,
      size: fields[2] as String,
      color: fields[3] as String,
      priceType: fields[4] as String,
      price: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HivePurchaseItem obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.itemName)
      ..writeByte(1)
      ..write(obj.count)
      ..writeByte(2)
      ..write(obj.size)
      ..writeByte(3)
      ..write(obj.color)
      ..writeByte(4)
      ..write(obj.priceType)
      ..writeByte(5)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HivePurchaseItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
