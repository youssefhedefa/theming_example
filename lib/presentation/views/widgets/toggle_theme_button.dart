import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theming_example/presentation/controllers/theme_cubit.dart';

class ToggleThemeButton extends StatefulWidget {
  const ToggleThemeButton({super.key});

  @override
  State<ToggleThemeButton> createState() => _ToggleThemeButtonState();
}

class _ToggleThemeButtonState extends State<ToggleThemeButton> {
  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();
    return Switch(
      value: themeCubit.state.theme.isDark,
      onChanged: (value) {
        themeCubit.toggleTheme();
      },
      activeColor: Theme.of(context).colorScheme.primary,
    );
  }
}
