import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleDetail extends StatefulWidget {
  final String title;
  final String url;

  const ArticleDetail({Key? key, required this.title, required this.url})
      : super(key: key);

  @override
  State<ArticleDetail> createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.maybePop(context);
          },
        ),
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            tooltip: '分享',
            onPressed: () {
              Share.share('【${widget.title}】\n${widget.url}');
            },
          ),
        ],
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
