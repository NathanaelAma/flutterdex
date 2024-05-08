import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:yapdex/app.dart';
import 'package:yapdex/environnements.dart';
import 'package:yapdex/firebase_options_dev.dart' as firebase_dev;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final env = Environment.fromEnv();
  final logger = Logger();
  logger.i('Starting app in ${env.name} mode');
  // I like to force portrait mode on mobile devices
  // What is the last time you used an app in landscape mode?
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.light,
    ),
  );

  //@kit[firebase]
  await env.when(
    dev: (_) => Firebase.initializeApp(
      options: firebase_dev.DefaultFirebaseOptions.currentPlatform,
    ),
    prod: (_) => Firebase.initializeApp(),
  );

  // await initializeDateFormatting('fr');
  // TODO force this from device language or fallback to english

  runApp(const ProviderScope(child: App()));
}
