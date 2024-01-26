import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable(
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
)
class ImageModel {
  const ImageModel({
    required this.id,
    required this.url,
    this.createdAt,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  final String id;
  final String url;
  final DateTime? createdAt;

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}

@Collection<ImageModel>('images')
final imagesRef = ImageModelCollectionReference();
