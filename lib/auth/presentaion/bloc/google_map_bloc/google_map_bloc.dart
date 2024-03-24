
import 'package:bloc/bloc.dart';
import 'package:create_doc/auth/model/address_model.dart';
import 'package:create_doc/util/logger.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../baseResponse/base_response.dart';
import '../../../../core/error_data.dart';
import '../../../domain/location_access_services.dart';
import '../../../model/user_data.dart';

part 'google_map_event.dart';
part 'google_map_state.dart';
part  'google_map_bloc.freezed.dart';

@injectable
class GoogleMapBloc extends Bloc<GoogleMapEvent, GoogleMapState> {

  final LocationAccessServices _locationAccessServices;

  GoogleMapBloc(this._locationAccessServices) : super(GoogleMapState.initial()) {
    on<GoogleMapEvent>((event, emit) async {
      await event.when(
        searchLocation: (String searchQuery) => searchLocation(emit, searchQuery),
        saveLocation: (AddressModel addressModel) => saveLocation(emit, addressModel),
      );
    });
  }

 List<AddressModel> listAddress=[];

  Future<dynamic> searchLocation(Emitter<GoogleMapState> emit,String searchQuery)
  async {
    Logger.data("In Bloc searchLocation searchQuery is: $searchQuery");
    final result= await _locationAccessServices.searchLocation(searchQuery: searchQuery);
    emit(
      result.fold(
            (ErrorData errorData) => state.copyWith(errorData: errorData,userData: none()),
            (BaseResponse baseResponse){
              listAddress.clear();
              if(baseResponse.data !=null && baseResponse.data!.isNotEmpty)
              {
                Logger.data("In Bloc searchLocation searchQuery is: ${baseResponse.data?.length}");
                baseResponse.data?.forEach((element) {
                  // listAddress.add(element);
                });
              }
              return state.copyWith(userData: none(),addressList: optionOf(listAddress));
            },
      ),
    );
  }
  Future<dynamic> saveLocation(Emitter<GoogleMapState> emit,AddressModel addressModel)
  async {
    final result= await _locationAccessServices.saveLocation( addressModel: addressModel);
    emit(
      result.fold(
            (ErrorData errorData) => state.copyWith(errorData: errorData,userData: none()),
            (UserData userData) => state.copyWith(userData: optionOf(userData)),
      ),
    );
  }
}
