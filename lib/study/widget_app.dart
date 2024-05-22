import 'package:flutter/material.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(

    MediaQuery(
      data: MediaQueryData.fromWindow(WidgetsBinding.instance.window),
      child: WidgetsApp(
        color: const Color(0xFFFFFFFF), /// Primary color for the application
        debugShowCheckedModeBanner: false, /// Disable the debug banner
        title: "WidgetsApp Example", /// Title for the application
        initialRoute: '/', /// Initial route of the application
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(builder: (context) => const HomePage());
            case '/second':
              return MaterialPageRoute(builder: (context) => const SecondPage());
            default:
              return MaterialPageRoute(builder: (context) => const UnknownPage());
          }
        },
        pageRouteBuilder: <T>(RouteSettings settings, WidgetBuilder builder) {
          print("pageRouteBuilder function in widgets app.");
          return MaterialPageRoute(builder: builder, settings: settings);
        },
        onUnknownRoute: (RouteSettings settings) {
          print("onUnknownRoute function in widgets app.");
          return MaterialPageRoute(builder: (context) => const UnknownPage());
        },
        builder: (context, child) {
          print("Directionality function in widgets app.");
          return Directionality(
            textDirection: TextDirection.ltr,
            child: child ?? const Center(child: Text('No route defined!')),
          );
        },
      ),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/second');
          },
          child: const Text('Go to Second Page'),
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
        title: const Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/');
          },
          child: const Text('Go back to Home Page'),
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
        title: const Text('Unknown Page'),
      ),
      body: const Center(
        child: Text('404 - Page not found'),
      ),
    );
  }
}
