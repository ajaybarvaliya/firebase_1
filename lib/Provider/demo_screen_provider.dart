import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class DemoScreenProvider extends StatefulWidget {
  const DemoScreenProvider({Key? key}) : super(key: key);
  @override
  State<DemoScreenProvider> createState() => _DemoScreenProviderState();
}

class _DemoScreenProviderState extends State<DemoScreenProvider> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      body: Consumer<CounterProvider>(
        builder: (context, counterProvider, child) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${counterProvider.counter}'),
              ElevatedButton(
                  onPressed: () => counterProvider.increment(),
                  child: const Text('Increment'))
            ],
          ),
        ),
      ),
    );
  }
}
