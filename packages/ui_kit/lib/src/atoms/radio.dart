import 'package:ui_kit/ui_kit.dart';


class UiRadio<T> extends StatelessWidget {

  const UiRadio({
    required this.value,
    required this.groupValue,
    this.onChanged,
    super.key,
  });

  final T value;

  final T groupValue;

  final ValueChanged<T?>? onChanged;

  @override
  Widget build(BuildContext context) {
    final activeColor = Theme.of(context).colorPalette.primary;

    final inactiveColor = Theme.of(context).colorPalette.border.withOpacity(0.38);

    final fillColor = WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return inactiveColor;
        }
        if (states.contains(WidgetState.selected)) {
          return activeColor;
        }
        return null;
      },
    );

    return Radio<T>(
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      activeColor: activeColor,
      fillColor: fillColor,
    );
  }
}
