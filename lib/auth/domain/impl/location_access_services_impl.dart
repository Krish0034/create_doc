
import '../../data/services/location_services.dart';
import '../../model/address_model.dart';
import '../../model/user_data.dart';
import '../../../core/error_data.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../baseResponse/base_response.dart';
import '../../../util/logger.dart';
import '../location_access_services.dart';

@Injectable(as: LocationAccessServices)
class LocationAccessServicesImpl extends LocationAccessServices
{
  final LocationServices _locationServices;
  LocationAccessServicesImpl(this._locationServices);
  @override
  Future<Either<ErrorData, BaseResponse>> searchLocation({required String searchQuery}) async{
    Logger.data("In LocationAccessServices searchLocation searchQuery is: $searchQuery");
    return _locationServices.searchLocation(searchQuery: searchQuery);
  }

  @override
  Future<Either<ErrorData, UserData>> saveLocation({required AddressModel addressModel}) async{
    return _locationServices.saveLocation(addressModel: addressModel);
  }
  
}
