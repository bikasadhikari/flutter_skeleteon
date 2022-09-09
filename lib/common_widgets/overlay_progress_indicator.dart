import 'package:flutter/material.dart';
import 'package:teho_controller/constants/Palette.dart';

class OverlayProgressIndicator extends StatelessWidget {
  final VoidCallback? callback;
  final bool showRetryButton;
  const OverlayProgressIndicator({
    Key? key,
    this.callback,
    this.showRetryButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Scaffold(),
        const Opacity(
          opacity: 0.8,
          child: ModalBarrier(
            dismissible: false,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (!showRetryButton)
                const CircularProgressIndicator(
                  color: Palette.appPrimaryColor,
                ),
              if (showRetryButton)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Palette.appPrimaryColor,
                  ),
                  onPressed: () {
                    callback!();
                  },
                  child: const Text(
                    'Retry',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
