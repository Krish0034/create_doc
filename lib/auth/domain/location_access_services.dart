import 'package:create_doc/auth/model/address_model.dart';
import 'package:create_doc/auth/model/user_data.dart';
import 'package:create_doc/baseResponse/base_response.dart';
import 'package:create_doc/core/error_data.dart';
import 'package:dartz/dartz.dart';


abstract class LocationAccessServices
{
  Future<Either<ErrorData,BaseResponse>> searchLocation({required String searchQuery});
  Future<Either<ErrorData,UserData>> saveLocation({required AddressModel addressModel});
}