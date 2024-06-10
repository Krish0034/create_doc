// // import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(title: Text('Security Meter')),
// //         body: SecurityMeter(),
// //       ),
// //     );
// //   }
// // }
// //
// // class SecurityMeter extends StatefulWidget {
// //   const SecurityMeter({super.key});
// //
// //   @override
// //   _SecurityMeterState createState() => _SecurityMeterState();
// // }
// //
// // class _SecurityMeterState extends State<SecurityMeter>
// //     with SingleTickerProviderStateMixin {
// //   late AnimationController _controller;
// //   late Animation<double> _animation;
// //   double securityLevel = 0.2; // Initial security level
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = AnimationController(
// //       duration: const Duration(seconds: 2),
// //       vsync: this,
// //     );
// //     _animation =
// //     Tween<double>(begin: 0.0, end: securityLevel).animate(_controller)
// //       ..addListener(() {
// //         setState(() {});
// //       });
// //     _controller.forward();
// //   }
// //
// //   @override
// //   void dispose() {
// //     _controller.dispose();
// //     super.dispose();
// //   }
// //
// //   void increaseSecurityLevel() {
// //     setState(() {
// //       securityLevel += 0.2;
// //       if (securityLevel > 1.0) securityLevel = 1.0;
// //       _animation = Tween<double>(begin: _animation.value, end: securityLevel)
// //           .animate(_controller);
// //       _controller.reset();
// //       _controller.forward();
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           CustomPaint(
// //             size: const Size(150, 150),
// //             painter: HousePainter(_animation.value),
// //           ),
// //           const SizedBox(height: 20),
// //           Text(
// //             '${(securityLevel * 100).toInt()}% Secure',
// //             style: const TextStyle(fontSize: 24),
// //           ),
// //           const SizedBox(height: 20),
// //           ElevatedButton(
// //             onPressed: increaseSecurityLevel,
// //             child: const Text('Add more items'),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // /*void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         backgroundColor: Colors.black,
// //         body: Center(
// //           child: SecurityMeter(percentage: 20),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class SecurityMeter extends StatelessWidget {
// //   final double percentage;
// //
// //   SecurityMeter({super.key, required this.percentage});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       mainAxisSize: MainAxisSize.min,
// //       children: [
// //         CustomPaint(
// //           size: const Size(150, 150),
// //           painter: HousePainter(percentage),
// //         ),
// //         const SizedBox(height: 20),
// //         const Text(
// //           '20% Secure',
// //           style: TextStyle(color: Colors.white, fontSize: 20),
// //         ),
// //         const Text(
// //           'Add items to secure more',
// //           style: TextStyle(color: Colors.white70, fontSize: 16),
// //         ),
// //       ],
// //     );
// //   }
// // }*/
// //
// // class HousePainter extends CustomPainter {
// //   final double percentage;
// //
// //   HousePainter(this.percentage);
// //
// //   @override
// //   void paint(Canvas canvas, Size size) {
// //     final paint = Paint()
// //       ..color = Colors.white
// //       ..strokeWidth = 2.0
// //       ..style = PaintingStyle.stroke;
// //
// //     final path = Path();
// //     path.moveTo(0, 0);
// //     path.lineTo(-size.width * 0.3, 0);
// //     path.quadraticBezierTo(-size.width * 0.15, 0, -size.width * 0.3, 0);
// //     path.lineTo(size.width*0.6,-size.height * 0.8);
// //     path.lineTo(size.width * 1.5, 0);
// //     path.lineTo(size.width *1.2, 0);
// //     path.lineTo(size.width*1.2, size.height);
// //     path.lineTo(0, size.height);
// //     path.lineTo(0, size.height * 0.4);
// //     path.close(); // Close the path
// //
// //
// //     canvas.drawPath(path, paint);
// //
// //     final fillPaint = Paint()
// //       ..color = Colors.red
// //       ..style = PaintingStyle.fill;
// //
// //     final fillHeight = (percentage / 100) * size.height;
// //     final fillPath = Path();
// //     fillPath.moveTo(0, size.height);
// //     fillPath.lineTo(size.width*1.2, size.height);
// //     fillPath.lineTo(size.width*1.2, size.height - fillHeight);
// //     fillPath.lineTo(0, size.height - fillHeight);
// //     fillPath.close();
// //
// //     canvas.drawPath(fillPath, fillPaint);
// //   }
// //
// //   @override
// //   bool shouldRepaint(CustomPainter oldDelegate) {
// //     return false;
// //   }
// // }
// //
// //
// //
// // /*
// // class HousePainter extends CustomPainter {
// //   final double percentage;
// //
// //   HousePainter(this.percentage);
// //
// //   @override
// //   void paint(Canvas canvas, Size size) {
// //     final paint = Paint()
// //       ..color = Colors.white
// //       ..strokeWidth = 2.0
// //       ..style = PaintingStyle.stroke;
// //
// //     final path = Path();
// //     path.moveTo(0, 0);
// //     path.lineTo(-size.width * 0.3, 0);
// //     path.quadraticBezierTo(-size.width * 0.15, 0, -size.width * 0.3, 0);
// //     path.lineTo(size.width*0.6,-size.height * 0.8);
// //     path.lineTo(size.width * 1.5, 0);
// //     path.lineTo(size.width *1.2, 0);
// //     path.lineTo(size.width*1.2, size.height);
// //     path.lineTo(0, size.height);
// //     path.lineTo(0, size.height * 0.4);
// //     path.close(); // Close the path
// //
// //
// //     canvas.drawPath(path, paint);
// //
// //     final fillPaint = Paint()
// //       ..color = Colors.red
// //       ..style = PaintingStyle.fill;
// //
// //     final fillHeight = (percentage / 100) * size.height;
// //     final fillPath = Path();
// //     fillPath.moveTo(0, size.height);
// //     fillPath.lineTo(size.width*1.2, size.height);
// //     fillPath.lineTo(size.width*1.2, size.height - fillHeight);
// //     fillPath.lineTo(0, size.height - fillHeight);
// //     fillPath.close();
// //
// //     canvas.drawPath(fillPath, fillPaint);
// //   }
// //
// //   @override
// //   bool shouldRepaint(CustomPainter oldDelegate) {
// //     return false;
// //   }
// // }*/
//
//
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(title: const Text('Security Meter')),
//         body: const SecurityMeter(),
//       ),
//     );
//   }
// }
//
// class SecurityMeter extends StatefulWidget {
//   const SecurityMeter({Key? key}) : super(key: key);
//
//   @override
//   _SecurityMeterState createState() => _SecurityMeterState();
// }
//
// class _SecurityMeterState extends State<SecurityMeter>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;
//   double securityLevel = 0.2; // Initial security level
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 2),
//       vsync: this,
//     );
//     _animation = Tween<double>(begin: 0.0, end: securityLevel).animate(_controller)
//       ..addListener(() {
//         setState(() {});
//       });
//     _controller.forward();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   void increaseSecurityLevel() {
//     setState(() {
//       securityLevel += 0.2;
//       if (securityLevel > 1.0) securityLevel = 1.0;
//       _animation = Tween<double>(begin: _animation.value, end: securityLevel)
//           .animate(_controller);
//       _controller.reset();
//       _controller.forward();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           CustomPaint(
//             size: const Size(150, 150),
//             painter: HousePainter(_animation),
//           ),
//           const SizedBox(height: 20),
//           Text(
//             '${(securityLevel * 100).toInt()}% Secure',
//             style: const TextStyle(fontSize: 24),
//           ),
//           const SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: increaseSecurityLevel,
//             child: const Text('Add more items'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class HousePainter extends CustomPainter {
//   final Animation<double> animation;
//
//   HousePainter(this.animation);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.white
//       ..strokeWidth = 2.0
//       ..style = PaintingStyle.stroke;
//
//     final path = Path();
//     path.moveTo(0, 0);
//     path.lineTo(-size.width * 0.3, 0);
//     path.quadraticBezierTo(-size.width * 0.15, 0, -size.width * 0.3, 0);
//     path.lineTo(size.width*0.6,-size.height * 0.8);
//     path.lineTo(size.width * 1.5, 0);
//     path.lineTo(size.width *1.2, 0);
//     path.lineTo(size.width*1.2, size.height);
//     path.lineTo(0, size.height);
//     path.lineTo(0, size.height * 0.4);
//     path.close(); // Close the path
//
//
//     canvas.drawPath(path, paint);
//
//     final fillPaint = Paint()
//       ..color = Colors.red
//       ..style = PaintingStyle.fill;
//
//     final fillHeight = (animation.value) * size.height;
//     final fillPath = Path();
//     fillPath.moveTo(0, size.height);
//     fillPath.lineTo(size.width*1.2, size.height);
//     fillPath.lineTo(size.width*1.2, size.height - fillHeight);
//     fillPath.lineTo(0, size.height - fillHeight);
//     fillPath.close();
//
//     canvas.drawPath(fillPath, fillPaint);
//
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: const Text('Security Meter')),
        body: const SecurityMeter(),
      ),
    );
  }
}

class SecurityMeter extends StatefulWidget {
  const SecurityMeter({Key? key}) : super(key: key);

  @override
  _SecurityMeterState createState() => _SecurityMeterState();
}

class _SecurityMeterState extends State<SecurityMeter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  double securityLevel = 0.2; // Initial security level

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: securityLevel).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void increaseSecurityLevel() {
    setState(() {
      securityLevel += 0.2;
      if (securityLevel > 1.0) securityLevel = 1.0;
      _animation = Tween<double>(begin: _animation.value, end: securityLevel)
          .animate(_controller);
      _controller.reset();
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomPaint(
            size: const Size(150, 150),
            painter: HousePainter(animation: _animation),
          ),
          const SizedBox(height: 20),
          Text(
            '${(securityLevel * 100).toInt()}% Secure',
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: increaseSecurityLevel,
            child: const Text('Add more items'),
          ),
        ],
      ),
    );
  }
}

class HousePainter extends CustomPainter {
  final Animation<double> animation;

  HousePainter({required this.animation});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(-size.width * 0.3, 0);
    path.quadraticBezierTo(-size.width * 0.15, 0, -size.width * 0.3, 0);
    path.lineTo(size.width*0.6,-size.height * 0.8);
    path.lineTo(size.width * 1.5, 0);
    path.lineTo(size.width *1.2, 0);
    path.lineTo(size.width*1.2, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height * 0.4);
    path.close(); // Close the path

    canvas.drawPath(path, paint);

    final fillPaint = Paint()
      ..color = Colors.red.withOpacity(animation.value) // Change fill color based on animation value
      ..style = PaintingStyle.fill;

    final fillPath = Path();
    fillPath.moveTo(0, 0); // Start from the top-left corner
    fillPath.lineTo(size.width*1.2, 0); // Move to the top-right corner
    fillPath.lineTo(size.width*1.2, size.height); // Move to the bottom-right corner
    fillPath.lineTo(0, size.height); // Move to the bottom-left corner
    fillPath.close(); // Close the path

    canvas.drawPath(fillPath, fillPaint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
