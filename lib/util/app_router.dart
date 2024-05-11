import 'package:flutter/material.dart';
import '../auth/presentaion/common/search_location_page.dart';
import '../auth/presentaion/signup/signup_page_tab.dart';
import '../dashbord/presentaion/dash_bord_page.dart';
import '../onbording/walk_through.dart';
import '../splash_screen.dart';
import 'lost_connection_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case 'splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case 'walkthrough':
        return MaterialPageRoute(builder: (_) => const Walkthrough());
      case 'isInternet':
        {
          return MaterialPageRoute(builder: (_) => const LostConnectionPage());
        }
        case 'signupRoute':
        {
          return MaterialPageRoute(builder: (_) => const SignUpPageTab());
        }
        case 'locationPage':
        {
          return MaterialPageRoute(builder: (_) => const SearchLocationPage());
        }
        case 'homePage':
        {
          return MaterialPageRoute(builder: (_) => const DashBordPage());
        }
      /*case 'coach':
        return MaterialPageRoute(builder: (_) => const CoachMarkScreen());
      case 'login':
        return MaterialPageRoute(builder: (_) => const Login());
      case 'signup':
        {
          final args = settings.arguments as int?;
          return MaterialPageRoute(builder: (_) => SignUpPage(shared: args));
        }
      case 'verifyOTP':
        return MaterialPageRoute(
            builder: (_) => VerifyOtpPage(
              phone: '',
              type: '',
              countryCode: '',
            ));
      case 'successWaitList':
        return MaterialPageRoute(builder: (_) => const SuccessWaitListPage());
      case 'confirmDetail':
        return MaterialPageRoute(builder: (_) => const ConfirmDetailsPage());
      case 'verifyIdentity':
        return MaterialPageRoute(
            builder: (_) => VerifyIdentityPage(
                completeProfileRequest: CompleteProfileRequest()));
      case 'locationPermission':
        return MaterialPageRoute(
            builder: (_) => LocationPermissionPage(
                completeProfileRequest: CompleteProfileRequest()));
      case 'contactPermission':
        return MaterialPageRoute(
            builder: (_) => ContactPermissionPage(
                completeProfileRequest: CompleteProfileRequest()));
      case 'buildingYourProfile':
        return MaterialPageRoute(
            builder: (_) => BuildingYourProfile(
                completeProfileRequest: CompleteProfileRequest()));
      case 'buildingYourProfileInterest':
        return MaterialPageRoute(
            builder: (_) => BuildingYourProfileInterest(
                completeProfileRequest: CompleteProfileRequest()));
      case 'joinWaitList':
        return MaterialPageRoute(builder: (_) => const JoinWaitList());
      case 'profileReview':
        return MaterialPageRoute(builder: (_) => const ProfileReview());
      case 'dashboard':
        {
          final args = settings.arguments as String?;
          return MaterialPageRoute(
              builder: (_) => DashboardPage(waitlist: args),
              maintainState: true);
        }
      case 'socialProfileRouter':
        return MaterialPageRoute(
            builder: (_) => const SocialProfilePage(), maintainState: true);
      case 'updateProfileInformationNewRouter':
        return MaterialPageRoute(
            builder: (_) => const UpdateProfileInformationData(),
            maintainState: true);
      case 'personalInformationRouter':
        return MaterialPageRoute(
            builder: (_) => const MyProfilePersonalInformationPage(),
            maintainState: true);
      case 'professionalInformationRouter':
        return MaterialPageRoute(
            builder: (_) => const MyProfileProfessionalInformationPage(),
            maintainState: true);
      case 'myProfileRouter':
        return MaterialPageRoute(
            builder: (_) => const MyProfilePage(), maintainState: true);
      case 'mySubscriptionRouter':
        return MaterialPageRoute(builder: (_) => const MySubscriptionPage());
      case 'myStatusUpdateRouter':
        return MaterialPageRoute(builder: (_) => const MyStatusUpdatePage());
      case 'blockedProfileRouter':
        return MaterialPageRoute(builder: (_) => const BlockedProfilePage());
      case 'securityRouter':
        return MaterialPageRoute(builder: (_) => const SecurityPage());
      case 'privacyPermissionRouter':
        return MaterialPageRoute(builder: (_) => const PrivacyPermissionPage());
      case 'supportRouter':
        return MaterialPageRoute(builder: (_) => const SupportPage());
      case 'faqRouter':
        return MaterialPageRoute(builder: (_) => const FAQPage());
      case 'aboutUsRouter':
        return MaterialPageRoute(builder: (_) => const AboutUsPage());
      case 'termsConditionsRouter':
        return MaterialPageRoute(builder: (_) => const TermsConditonsPage());
      case 'privacyPolicyRouter':
        return MaterialPageRoute(builder: (_) => const PrivacyPolicyPage());
      case 'filterProfileRouter':
        return MaterialPageRoute(builder: (_) => const FilterProfilePage());
      case 'myQrCodeRouter':
        return MaterialPageRoute(builder: (_) => const MyQrCodePage());
      case 'communityDetailPage':
        {
          final args = settings.arguments as String?;
          return MaterialPageRoute(
              builder: (_) => CommunityDetailPage(
                communityData: CommunityListDataResponse(),
                communityId: args,
              ));
        }
      case 'eventDetailPage':
        {
          final args = settings.arguments as String?;
          return MaterialPageRoute(
              builder: (_) => EventDetailPage(
                eventData: CommunityListDataResponse(),
                eventId: args,
              ));
        }
      case 'hotspotDetailPage':
        {
          final args = settings.arguments as HotspotListDataResponse;
          return MaterialPageRoute(
              builder: (_) => HotspotDetailPage(
                hotspotListDataResponse: args,
              ));
        }
      case 'createStatusRouter':
        return MaterialPageRoute(
            builder: (_) => CreateStatusPage(
              communityId: '',
            ));
      case 'createCommunityRouter':
        return MaterialPageRoute(builder: (_) => const CreateCommunityPage());
      case 'createEventRouter':
        return MaterialPageRoute(
            builder: (_) => CreateEventPage(
              communityId: '',
            ));
      case 'createHotspotRouter':
        return MaterialPageRoute(builder: (_) => const CreateHotspotPage());
      case 'chatRouter':
        {
          final args = settings.arguments as List;
          return MaterialPageRoute(
              maintainState: false,
              builder: (_) => ChatPage(
                  uuid: args[0],
                  name: args[1],
                  channelId: args[2],
                  isFriend: args[3],
                  image: args[4],
                  updateCircle: args[5],
                  canChat: args[6],
                  otherUserDeviceTokenList: args[7]));
        }
      case 'testing':
        return MaterialPageRoute(builder: (_) => const TestingClass());
      case 'groupChatRouter':
        {
          final args = settings.arguments as ChatUser;
          return MaterialPageRoute(
              builder: (_) => GroupChatPage(
                chatUser: args,
              ));
        }
      case 'notificationsRouter':
        return MaterialPageRoute(builder: (_) => const NotificationsPage());
      case 'createPostRouter':
        return MaterialPageRoute(
            builder: (_) => CreatePostPage(
              communityId: '',
            ));
      case 'contactRequestRouter':
        return MaterialPageRoute(builder: (_) => const ContactRequestsPage());
      case 'manageSubscriptionRouter':
        return MaterialPageRoute(
            builder: (_) => const ManageSubscriptionPage());
      case 'homePurchaseBoostRouter':
        return MaterialPageRoute(builder: (_) => const HomePurchaseBoostPage());

      case 'memberProfileRouter':
        {
          final args = settings.arguments as List;
          final args1 = args.first as List<String>;
          final args3 = args[2] as String?;
          return MaterialPageRoute(
              builder: (_) => MemberProfilePage(
                uuids: args1,
                name: args3,
              ));
        }

      */
      default:
        return _errorRoute(settings.name!);
    }
  }

  static Route<dynamic> _errorRoute(String name) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: Center(
          child: Text(
            'No route defined for $name',
          ),
        ),
      );
    });
  }
}