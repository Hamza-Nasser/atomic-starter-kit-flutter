import 'package:ui_kit/ui_kit.dart';

class TitledTextInput extends StatelessWidget {
  const TitledTextInput({super.key});

  @override
  Widget build(BuildContext context) {
    return const UiTextField.titled(
      title: "Title",
      style: UiTextFieldStyle(
        hintText: "Hint",
      ),
    );
  }
}
