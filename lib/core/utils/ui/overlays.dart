import 'package:flutter/material.dart';

void showErrorTopOverlay(BuildContext context, {String? message}) {
  final overlay = Overlay.of(context);
  late OverlayEntry overlayEntry;

  overlayEntry = OverlayEntry(
    builder: (context) => _Overlay(
      message: message ?? "Something went wrong. Please try again.",
      backgroundColor: Colors.red,
      onEnd: () => overlayEntry.remove(),
    ),
  );

  overlay.insert(overlayEntry);
}

void showSuccessTopOverlayV2(BuildContext context, {String? message}) {
  final overlay = Overlay.of(context);
  late OverlayEntry overlayEntry;

  overlayEntry = OverlayEntry(
    builder: (context) => _Overlay(
      message: message ?? "Process completed successfully.",
      backgroundColor: Colors.green,
      onEnd: () => overlayEntry.remove(),
    ),
  );

  overlay.insert(overlayEntry);
}

class _Overlay extends StatefulWidget {
  final String message;
  final VoidCallback onEnd;
  final Color backgroundColor;

  const _Overlay({
    required this.message,
    required this.onEnd,
    this.backgroundColor = const Color.fromARGB(255, 31, 31, 31),
  });

  @override
  _OverlayState createState() => _OverlayState();
}

class _OverlayState extends State<_Overlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      _controller.reverse().then((_) => widget.onEnd());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).viewInsets.top + 60,
      left: 16,
      right: 16,
      child: Material(
        color: Colors.transparent,
        child: FadeTransition(
          opacity: _controller,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(widget.message),
          ),
        ),
      ),
    );
  }
}
