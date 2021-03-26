import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ProviderScope(observers: [Logger()], child: App()));
}

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase provider, Object newValue) {
//     print('''
// {
//   "provider": "${provider.name ?? provider.runtimeType}",
//   "newValue": "$newValue"
// }''');
  }
}
