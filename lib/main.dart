import 'package:agents/core/di/agent_configure_providers.dart';
import 'package:flutter/material.dart';
import 'package:agents/ui/page/home_page.dart';

import 'package:provider/provider.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  final data = await AgentConfigureProviders.createDependencyTree();

  runApp(AppRoot(data: data));
}

class AppRoot extends StatelessWidget {
  final AgentConfigureProviders data;

  const AppRoot({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: data.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Agência de Heróis',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}