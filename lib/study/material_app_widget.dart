import 'package:flutter/material.dart';

void main() {
  runApp(const MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// Title of the application displayed in the OS task switcher
      title: 'MaterialApp Example',

      /// Theme data for the application
      theme: ThemeData(
        /// Primary color swatch used for the theme
        primarySwatch: Colors.blue,
        /// Density that adapts to the platform's conventions
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      /// Dark theme data for the application
      darkTheme: ThemeData.dark(),

      /// Specifies the theme mode - light, dark, or system default
      themeMode: ThemeMode.system,

      /// Locale for the application
      locale: const Locale('en', 'IN'),

      /// Whether to show debug banner in checked mode
      debugShowCheckedModeBanner: false,

      // Background color of the application
      color: Colors.white,

      /// List of actions to include in the application
      actions:<Type, Action<Intent>>{
        ... WidgetsApp.defaultActions,
        ActivateAction: CallbackAction<Intent>(
          onInvoke: (Intent intent) {
            // Do something here...
            return null;
          },
        ),
      },

      /// Widget builder for the application
      builder: (context, widget) {
        return const MyHomePage();
      },

      /// Whether to overlay a checkerboard pattern on offscreen layers
      checkerboardOffscreenLayers: false,

      /// Whether to overlay a checkerboard pattern on raster cache images
      checkerboardRasterCacheImages: false,

      /// Whether to show a debug grid overlay
      debugShowMaterialGrid: false,

      /// Dark theme data for high contrast mode
      highContrastDarkTheme: ThemeData.light(),

      /// Theme data for high contrast mode
      highContrastTheme: ThemeData.light(),

      /// Initial route of the application
      initialRoute: '/',

      /// Unique identifier for the widget
      key: const Key('material_app_key'),

      /// Callback for resolving the list of supported locales
      localeListResolutionCallback: null,

      /// Callback for resolving the locale
      localeResolutionCallback: null,

      /// Delegates for localizations
      localizationsDelegates: [],

      /// Key for the navigator
      navigatorKey: GlobalKey<NavigatorState>(),

      /// List of observers for the navigator
      navigatorObservers: [],

      /// Callback for generating initial routes
      onGenerateInitialRoutes: null,

      /// Callback for generating routes dynamically
      onGenerateRoute: (settings) {
        if (settings.name == '/second') {
          return MaterialPageRoute(builder: (context) => const SecondPage());
        }
        return null;
      },

      /// Callback for generating the application title
      onGenerateTitle: (context) => 'MaterialApp Example',

      /// Callback for navigation notifications
      onNavigationNotification: null,

      /// Identifier for restoration
      restorationScopeId: 'material_app_restoration_scope',

      /// Key for the scaffold messenger
      scaffoldMessengerKey: GlobalKey<ScaffoldMessengerState>(),

      /// Scroll behavior for the application
      scrollBehavior: const ScrollBehavior(),

      /// Shortcuts for the application
      shortcuts: {},

      /// Whether to show a performance overlay
      showPerformanceOverlay: false,

      /// Whether to show a semantics debugger
      showSemanticsDebugger: false,

      /// List of supported locales
      supportedLocales: const [Locale('en', 'IN')],

      /// Curve for theme animation
      themeAnimationCurve: Curves.linear,

      /// Duration for theme animation
      themeAnimationDuration: const Duration(milliseconds: 200),

      /// Style for theme animation
      themeAnimationStyle: AnimationStyle.noAnimation,

      /// Whether to use inherited media query
      useInheritedMediaQuery: true,

      /// Home page of the application
      home: const MyHomePage(),

      /// Named routes of the application
      routes: {
        '/second': (context) => const SecondPage(),
      },

      /// Callback for unknown routes
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const UnknownPage(),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/second');
          },
          child:const Text('Go to Second Page'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child:const Text('Go back'),
        ),
      ),
    );
  }
}

class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Unknown Page'),
      ),
      body: const Center(
        child: Text('404 - Page not found'),
      ),
    );
  }
}
