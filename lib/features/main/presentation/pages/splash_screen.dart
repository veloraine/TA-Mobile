part of '_pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..addListener(() {
        setState(() {});
        if (_animationController.isCompleted) {
          nav.pushReplacement<Wrapper, Widget>(const Wrapper());
        }
      });
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BaseScaffold(
      body: Column(
        children: [
          const Expanded(child: SizedBox()),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Splash Screen',
                  style: FontTheme.subHeader.copyWith(
                    color: BaseColors.primary,
                  ),
                ),
                const SizedBox(height: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: SizedBox(
                    height: 10,
                    width: size.width * 0.6,
                    child: LinearProgressIndicator(
                      value: _animationController.value, // percent filled
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        BaseColors.primary,
                      ),
                      backgroundColor: BaseColors.primary.shade200,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Splash Screen Tagline....',
                  style: FontTheme.textSemiBold.copyWith(
                    color: BaseColors.primary,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
