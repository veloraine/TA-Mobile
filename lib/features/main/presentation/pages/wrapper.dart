part of '_pages.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  late final UserInitializationCubit _cubit;

  @override
  void initState() {
    _cubit = get<UserInitializationCubit>()..init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserInitializationCubit, UserInitializationState>(
      bloc: _cubit,
      builder: (context, state) {
        return const MainPage();
      },
    );
  }
}
