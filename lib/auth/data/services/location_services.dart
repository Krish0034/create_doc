
import 'package:dartz/dartz.dart';
import '../../../baseResponse/base_response.dart';
import '../../../core/error_data.dart';
import '../../model/address_model.dart';
import '../../model/user_data.dart';

abstract class LocationServices
{
  Future<Either<ErrorData,BaseResponse>> searchLocation({required String searchQuery});
  Future<Either<ErrorData,UserData>> saveLocation({required AddressModel addressModel});
}
