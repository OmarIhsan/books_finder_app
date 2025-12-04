import 'package:hive_flutter/hive_flutter.dart';

Future<void> init() async {
  // Initialize Hive for local persistence. Register adapters here as you add
  // domain models that need local storage.
  await Hive.initFlutter();
}
