import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crystal's fun emoji!"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchURL,
          child: new Text('Show Flutter homepage'),
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://colab.research.google.com/drive/12XHCzxsO8wcKViN0htjH_NstBUzMBrhl';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}