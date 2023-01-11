import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'pricing_details.dart';

void main() {
  runApp(const RowExample());
}

class RowExample extends StatelessWidget {
  const RowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      tools: const [
        DeviceSection(),
      ],
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        title: 'Responsive and adaptive UI in Flutter',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Row'),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 600.0),
                child: Card(
                  color: Colors.green[200],
                  child: Row(
                    children: [
                      Container(
                          color: Colors.green[500],
                          child: const FlutterLogo(size: 190.0)),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            PricingDetails(),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                  'Description: the Flutter logo is a beautiful blue icon.',
                                  style: TextStyle(fontSize: 18.0)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
