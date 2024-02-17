import 'dart:async';
import 'dart:io';
import 'package:create_doc/util/shered_preferences.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


class NotificationHelper {

  int? lastMessageId;
  String? messageId;

  static NotificationHelper? _notificationHelper;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  static bool showMessageNotification = true;

  static NotificationHelper? getInstance(BuildContext context) {
    _notificationHelper ??= NotificationHelper();
    return _notificationHelper;
  }

  static const _channel = MethodChannel('tayst');

  Future<dynamic> get getTokenData async {
    final tokenData = await _channel.invokeMethod('iosToken');
    return tokenData;
  }

  Future<String?> getFcmToken() async {
    if (Platform.isIOS) {
      final String? iosToken = await getTokenData;
      if (iosToken == null || iosToken.toString().isEmpty) {
        getFcmToken();
        return null;
      }
      print("main ios token ==> $iosToken");
      SheredPreferences.setIosToken(iosToken: iosToken);
      return iosToken;
    } else {
      var token = await FirebaseMessaging.instance.getToken();
      print("token ==> $token");
      SheredPreferences.setDeviceToken(deviceToken: token);
      return token;
    }
  }

 /* void navigateToScreen(Map<String, dynamic> value) {
    if (value["click_action"] == CommonStrings.notificationEvent) {
      // EventDetailPage eventDetailPage = EventDetailPage(
      //   eventId: value.data["event_id"],
      //   eventData: null,
      // );
      // Navigator.push(buildContext,
      //     MaterialPageRoute(builder: (context) => eventDetailPage));

      EventDetailPage eventDetailPage = EventDetailPage(
        eventId: value["event_id"],
        eventData: null,
      );
      Navigator.push(
          MyAppState.navigatorKey.currentState!.context, MaterialPageRoute(builder: (context) => eventDetailPage));
    } else if (value["click_action"] == CommonStrings.communityType ||
        value["click_action"] == CommonStrings.notificationCommunity) {
      // CommunityDetailPage communityDetailPage = CommunityDetailPage(
      //   communityId: value.data["community_id"],
      //   communityData: null,
      // );

      CommunityDetailPage communityDetailPage = CommunityDetailPage(
        communityId: value["event_id"],
        communityData: null,
      );
      Navigator.push(
          MyAppState.navigatorKey.currentState!.context, MaterialPageRoute(builder: (context) => communityDetailPage));
    } else if (value["click_action"] == CommonStrings.notificationHotspot ||
        value["click_action"] == CommonStrings.notificationHotspotDetail) {
      // var hotspotDetailPage = HotspotDetailPage(
      //   hotspotId: value.data["event_id"],
      //   hotspotListDataResponse: null,
      // );
      //
      // Navigator.push(buildContext,
      //     MaterialPageRoute(builder: (context) => hotspotDetailPage));

      var hotspotDetailPage = HotspotDetailPage(
        hotspotId: value["event_id"],
        hotspotListDataResponse: null,
      );

      Navigator.push(
          MyAppState.navigatorKey.currentState!.context, MaterialPageRoute(builder: (context) => hotspotDetailPage));
    } else if (value["click_action"] == CommonStrings.notificationFriendRequest ||
        value["click_action"] == CommonStrings.notificationJoinRequest ||
        value["click_action"] == CommonStrings.notificationNotification ||
        value["click_action"] == CommonStrings.notificationNotificationRequest) {
      Navigator.pushNamed(MyAppState.navigatorKey.currentState!.context, CommonStrings.notificationsRouter);
    } else if (value["click_action"] == CommonStrings.notificationAcceptHobby ||
        value["click_action"] == CommonStrings.notificationAddInterestHobby) {
      // Navigator.pushNamed(buildContext,
      //     CommonStrings.filterProfileRouter);
      Navigator.push(MyAppState.navigatorKey.currentState!.context,
          MaterialPageRoute(builder: (context) => const HobbiesProfilePage()));
    } else if (value["click_action"] == CommonStrings.notificationAcceptInterest) {
      Navigator.push(MyAppState.navigatorKey.currentState!.context,
          MaterialPageRoute(builder: (context) => const InterestsProfilePage()));
    } else if (value["click_action"] == CommonStrings.notificationHomeFeed) {
      Navigator.pushNamed(MyAppState.navigatorKey.currentState!.context, CommonStrings.dashBoardRouter);
    } else if (value["click_action"] == CommonStrings.notificationChat) {
      Navigator.pushNamed(MyAppState.navigatorKey.currentState!.context, CommonStrings.chatRouter, arguments: [
        value["userId"],
        value["shopName"],
        value["channelName"],
        value["isFriend"] == 'true' ? true : false,
        value["profilePic"],
            () {},
        true,
        ['']
      ]);
    }
  }

  Future<void> _requestPermissions() async {
    if (Platform.isIOS || Platform.isMacOS) {
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
        critical: true,
      );
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<MacOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
        critical: true,
      );
    } else if (Platform.isAndroid) {
      final AndroidFlutterLocalNotificationsPlugin? androidImplementation = flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();

      final bool? granted = await androidImplementation?.requestPermission();
    }
  }

  void configLocalNotification() {
    AndroidInitializationSettings initializationSettingsAndroid =
    const AndroidInitializationSettings('@drawable/ic_stat_ic_notifcation');
    final DarwinInitializationSettings initializationSettingsDarwin = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification: (int id, String? title, String? body, String? payload) async {
        print("Notification payload $title $payload");
        *//*onDidReceiveLocalNotification(id, title ?? "", body ?? "", payload ?? "");
        didReceiveLocalNotificationStream.add(NotificationData(
            notification: NotificationPay(title: title ?? '', body: body ?? ''),
            data: Data.fromJson(jsonDecode(payload ?? '') ?? {})));*//*
      },
    );
    final InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) {
          switch (notificationResponse.notificationResponseType) {
            case NotificationResponseType.selectedNotification:
              selectNotification(notificationResponse.payload);
              break;
            case NotificationResponseType.selectedNotificationAction:
              break;
          }
        });
  }
*/
  /*Future onDidReceiveLocalNotification(int id, String title, String body, String payload) async {
    // display a dialog with the notification details, tap ok to go to another page
    if (lastMessageId != id) {
      lastMessageId = id;
      // showNotification(id, title, body, payload ?? '');
    }
  }

  String? clickedNotificationId;

  Future<bool> setFcm({bool isUpdate = false}) async {
    try {
      await _requestPermissions();
      configLocalNotification();
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        print('onMessage: ${message.notification?.title} ${messageId} ${message.messageId}');
        if (message.notification != null && messageId != message.messageId) {
          messageId = message.messageId;
          showNotification(
              Random().nextInt(100), message.notification?.title ?? "", message.notification?.body ?? '', message.data);
        }
      });

      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        print('A new onMessageOpenedApp event was published! $message ${message.data} $messageId $clickedNotificationId');
        if (clickedNotificationId != message.messageId) {
          clickedNotificationId = message.messageId;
          messageId ='';
          navigateToScreen(message.data);
        }
        FirebaseMessaging.instance.getInitialMessage();
      });
      // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
      // if (isUpdate) getFcmToken();
      return true;
    } catch (e) {
      print('Error ----------- $e');
      return false;
    }
  }

  void showNotification(int id, String title, String body, Map<String, dynamic> payload) async {
    // if (!UserSession.isShowNotification) return;
    AndroidNotificationDetails androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      'com.tayst',
      'tayst',
      playSound: true,
      enableVibration: true,
      importance: Importance.max,
      priority: Priority.high,
    );
    DarwinNotificationDetails darwinNotificationDetails = DarwinNotificationDetails();
    NotificationDetails platformChannelSpecifics =
    NotificationDetails(android: androidPlatformChannelSpecifics, iOS: darwinNotificationDetails);
    try {
      if (!showMessageNotification && payload['type'].toString().toLowerCase() == 'chat') {
        return;
      }
      await flutterLocalNotificationsPlugin.show(
        id,
        title,
        body,
        platformChannelSpecifics,
        payload: jsonEncode(payload),
      );
    } catch (_) {
      await flutterLocalNotificationsPlugin.show(
        id,
        title,
        body,
        platformChannelSpecifics,
        payload: jsonEncode(payload),
      );
    }
  }

  /// Define a top-level named handler which background/terminated messages will
  /// call.
  ///
  /// To verify things are working, check out the native platform logs.
  Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    // If you're going to use other Firebase services in the background, such as Firestore,
    // make sure you call `initializeApp` before using other Firebase services.
    await Firebase.initializeApp();
    print('Handling a background message ${message.messageId}');
  }

  void selectNotification(String? payload) {
    print('Handling a selectNotification${payload}');
    navigateToScreen(jsonDecode(payload!));
  }*/
}
