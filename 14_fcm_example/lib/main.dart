import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';

String phoneToken = '';

@pragma("vm:entry-point")
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

// You can request multiple permissions at once.
  Map<Permission, PermissionStatus> statuses = await [
    Permission.notification,
  ].request();

  var initialzationSettingsAndroid =
      const AndroidInitializationSettings('@mipmap/ic_launcher');

  var initialzationSettingsIOS = const DarwinInitializationSettings(
    requestSoundPermission: true,
    requestBadgePermission: true,
    requestAlertPermission: true,
  );

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  var initializationSettings = InitializationSettings(
      android: initialzationSettingsAndroid, iOS: initialzationSettingsIOS);

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );

  // var androidNotiDetails = AndroidNotificationDetails(
  //   channel.id,
  //   channel.name,
  //   channelDescription: channel.description,
  // );

  AndroidNotificationDetails androidNotiDetails =
      const AndroidNotificationDetails(
    "flutter_push_channel_0",
    "Flutter Push Message",
    importance: Importance.max,
    priority: Priority.max,
    showWhen: true,
    ticker: 'ticker',
    playSound: true, color: Colors.blue,
    // importance: Importance.max,
    // priority: Priority.max,
  );

  var iOSNotiDetails = const DarwinNotificationDetails();

  var details =
      NotificationDetails(android: androidNotiDetails, iOS: iOSNotiDetails);

  Map<String, dynamic> notificationData = message.data;

  String formatDate = DateFormat('yyMMddHHmmss').format(DateTime.now());

  flutterLocalNotificationsPlugin.show(
    formatDate.hashCode,
    notificationData['title'],
    notificationData['body'],
    details,
  );
}

/// 상단 알림을 위해 AndroidNotificationChannel 생성
AndroidNotificationChannel channel = const AndroidNotificationChannel(
  'flutter_push_channel_0', // ID
  'Flutter Push Message', // Title
  description: 'Push Sample Application Notification Channel',
  // importance: Importance.high,
  importance: Importance.max,
);

//FlutterLocalNotificationsPlugin 패키지 초기화
FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await FirebaseMessaging.instance.setDeliveryMetricsExportToBigQuery(true);

  // 권한
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    // announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    // provisional: false,
    sound: true,
  );
  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('User granted permission');
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    print('User granted provisional permission');
  } else {
    print('User declined or has not accepted permission');
  }

  var initialzationSettingsAndroid =
      const AndroidInitializationSettings('@mipmap/ic_launcher');

  var initialzationSettingsIOS = const DarwinInitializationSettings(
    requestSoundPermission: true,
    requestBadgePermission: true,
    requestAlertPermission: true,
  );

  flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  var initializationSettings = InitializationSettings(
      android: initialzationSettingsAndroid, iOS: initialzationSettingsIOS);

  // InitializationSettings initializationSettings = const InitializationSettings(
  //   android: AndroidInitializationSettings("@mipmap/ic_launcher"),
  //   iOS: DarwinInitializationSettings(),
  // );

  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  String? token = await FirebaseMessaging.instance.getToken();

  print('token: $token');

  phoneToken = token ?? '';

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setFcm();
  }

  setFcm() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      Map<String, dynamic> notificationData = message.data;

      AndroidNotification? android = message.notification?.android;

      var androidNotiDetails = AndroidNotificationDetails(
        channel.id,
        channel.name,
        channelDescription: channel.description,
      );
      var iOSNotiDetails = const DarwinNotificationDetails();
      var details =
          NotificationDetails(android: androidNotiDetails, iOS: iOSNotiDetails);

      String formatDate = DateFormat('yyMMddHHmmss').format(DateTime.now());

      flutterLocalNotificationsPlugin.show(
        formatDate.hashCode,
        notificationData['title'],
        notificationData['body'],
        details,
      );
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print('FirebaseMessaging: $message');
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '토큰 : $phoneToken',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
