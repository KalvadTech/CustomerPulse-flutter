import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class CustomerPulseWebView extends StatelessWidget {
  final String url;

  const CustomerPulseWebView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      initialUrlRequest: URLRequest(url: WebUri(url)),
      onWebViewCreated: (controller) {
        final webViewController = controller;

        // Register JavaScript handler
        webViewController.addJavaScriptHandler(
          handlerName: 'Android',
          callback: (args) {
            log("JavaScript sent: ${args[0]}");
            switch (args[0]) {
              case "so-widget-completed":
                close(context);
                break;
              case "open":
                break;
              default:
                log("JsEvent: Event Case Not Implemented");
            }
            // Handle the event or perform any operation you need here
            return 'Event Received!';
          },
        );
      },
    );
  }

  void close(BuildContext context) {
    Navigator.of(context).pop();
  }
}
