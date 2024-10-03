
import 'dart:io';

import '../../repositories/impl/location_repository_impl.dart';
import '../../../../util/logger.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../baseResponse/base_response.dart';
import '../../../../core/error_data.dart';
import '../../../model/address_model.dart';
import '../../../model/user_data.dart';
import '../location_services.dart';

@Injectable(as: LocationServices)
class LocationServicesImpl extends LocationServices
{
  final LocationRepositoryImpl _locationRepositoryImpl;
  
  LocationServicesImpl(this._locationRepositoryImpl);
  
  @override
  Future<Either<ErrorData, BaseResponse>> searchLocation({required String searchQuery})
  async{
    Logger.data("In LocationServices searchLocation searchQuery is: $searchQuery");
    String apiKey;
    BaseResponse? baseResponse;
    if(Platform.isIOS)
    {apiKey="AIzaSyDEFbHe4um5QIVdHxvB4DV-bFgzwMUdKzU";}
    else
    {apiKey="AIzaSyBn1Tdx2w3-Bogj3Vm2iTnG8eufJsINqXY";}
    Logger.data("In LocationServices searchLocation apiKey is: $apiKey");
    final Map<String,dynamic> response= await _locationRepositoryImpl.searchLocation(searchQuery, apiKey, "1234");
    if (response['status'] == "OK") {
      baseResponse?.data = response['predictions'];
    }
    return right(baseResponse??BaseResponse());
  }

  @override
  Future<Either<ErrorData, UserData>> saveLocation({required AddressModel addressModel}) {
    // TODO: implement saveLocation
    throw UnimplementedError();
  }

}
