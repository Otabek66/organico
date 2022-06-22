import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class BaseView<T> extends StatefulWidget {
  final T? viewModal;
  final Widget Function(BuildContext context, T value)? onPageBuildre;
  final Function(T model)? onModelReady;
  final VoidCallback? onDispose;

  const BaseView(
      {Key? key,
      required this.viewModal,
      required this.onPageBuildre,
      this.onModelReady,
      this.onDispose})
      : super(key: key);

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  dynamic subscription;
  dynamic internetStatus;
  @override
  void initState() {
    super.initState();
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      setState(() {
        internetStatus = result;
      });
    });
    if (widget.onModelReady != null) widget.onModelReady!(widget.viewModal);
  }

  @override
  Widget build(BuildContext context) {
    return internetStatus == ConnectivityResult.none
        ? const Text("Yooo internet")
        : widget.onPageBuildre!(context, widget.viewModal);
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.onDispose != null) widget.onDispose!();
  }
}
