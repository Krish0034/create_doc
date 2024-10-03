import '../model/address_model.dart';
import '../model/user_data.dart';
import '../../baseResponse/base_response.dart';
import '../../core/error_data.dart';
import 'package:dartz/dartz.dart';


abstract class LocationAccessServices
{
  Future<Either<ErrorData,BaseResponse>> searchLocation({required String searchQuery});
  Future<Either<ErrorData,UserData>> saveLocation({required AddressModel addressModel});
}
