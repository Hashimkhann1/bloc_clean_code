import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';
part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel{

  factory UserModel({
    @Default('') @JsonKey(name: 'token') String token,
    @Default('') @JsonKey(name: 'error') String error,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String , dynamic> json) => _$UserModelFromJson(json);

}