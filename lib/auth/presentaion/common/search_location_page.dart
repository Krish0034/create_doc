import 'package:create_doc/auth/model/address_model.dart';
import 'package:create_doc/auth/presentaion/bloc/google_map_bloc/google_map_bloc.dart';
import 'package:create_doc/di/di_setup.dart';
import 'package:create_doc/util/app_colors.dart';
import 'package:create_doc/util/app_strings.dart';
import 'package:create_doc/util/common_text_style.dart';
import 'package:create_doc/util/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../common/custom_text_field.dart';

class SearchLocationPage extends StatefulWidget {
  final String? userId;

  const SearchLocationPage({super.key, this.userId});

  @override
  State<SearchLocationPage> createState() => _SearchLocationPageState();
}

class _SearchLocationPageState extends State<SearchLocationPage> {
  final TextEditingController locationController = TextEditingController();

  late GoogleMapBloc _googleMapBloc;
  late List<AddressModel> generatedAddress = [];

  @override
  void initState() {
    _googleMapBloc = getIt<GoogleMapBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.whiteColor,
        title: Center(
          child: Text(
            AppString.locationPageTitle,
            style: CommonTextStyle.normalStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => _googleMapBloc,
        child: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppString.searchLocation,
                style: CommonTextStyle.normalStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gap(10.h),
              Text(
                AppString.findAddress,
                style: CommonTextStyle.normalStyle.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: AppColors.backButtonColor.withOpacity(0.5),
                ),
              ),
              Gap(10.h),
              Expanded(
                child: BlocBuilder<GoogleMapBloc, GoogleMapState>(
                  bloc: _googleMapBloc,
                  builder: (context, state) {
                    Logger.data("Search Location page in before state field");
                    if (state is GoogleMapState && state.addressList.isSome()) {
                      return state.addressList.fold(
                            () => const SizedBox(),
                            (addressData) {
                          if (addressData.isNotEmpty) {
                            Logger.data("Search Location page in if field");
                            return ListView.builder(
                              itemCount: addressData.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index) {
                                return Text("list $index");
                              },
                            );
                          } else {
                            Logger.data("Search Location page in else field");
                            return CustomTextField(
                              label: AppString.location,
                              controller: locationController,
                              hintText: AppString.enterLocationHint,
                              maxLength: 10,
                              textInputType: TextInputType.text,
                              borderRadius: BorderRadius.circular(10.r),
                              onChanged: (p0) {
                                Logger.data("on changed value is $p0");
                                if (p0.isNotEmpty && p0.length > 3) {
                                  _googleMapBloc.add(
                                    GoogleMapEvent.searchLocation(
                                      searchQuery: p0,
                                    ),
                                  );
                                }
                              },
                              onTap: () {},
                              validator: (value) {
                                if (value.isNotEmpty && value.length > 3) {
                                  _googleMapBloc.add(
                                    GoogleMapEvent.searchLocation(
                                      searchQuery: value,
                                    ),
                                  );
                                }
                                return null;
                              },
                            );
                          }
                        },
                      );
                    } else {
                      Logger.data("Search Location page in before state else field");
                      return CustomTextField(
                        label: AppString.location,
                        controller: locationController,
                        hintText: AppString.enterLocationHint,
                        maxLength: 10,
                        textInputType: TextInputType.text,
                        onChanged: (p0) {
                          Logger.data("on changed value is $p0");
                          if (p0.isNotEmpty && p0.length > 3) {
                            _googleMapBloc.add(
                              GoogleMapEvent.searchLocation(
                                searchQuery: p0,
                              ),
                            );
                          }
                        },
                        onTap: () {},
                        validator: (value) {
                          if (value.isNotEmpty && value.length > 3) {
                            _googleMapBloc.add(
                              GoogleMapEvent.searchLocation(
                                searchQuery: value,
                              ),
                            );
                          }
                          return null;
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
