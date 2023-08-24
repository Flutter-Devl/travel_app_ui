import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/activity_screen.dart';
import 'package:travel_app_ui/utils/side_bar.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/activities',
      routes: {
        ActivitiesScreen.routeName: (context) => const ActivitiesScreen(),
      },
      builder: (context, child) {
        return _TravelApp(child: child ?? const SizedBox());
      },
    );
  }
}

class _TravelApp extends StatefulWidget {
  const _TravelApp({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<_TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<_TravelApp> {
  bool isOnboarding = true;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double width = mediaQuery.size.width;
    final double height = mediaQuery.size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF5EDDC),
      body: isOnboarding
          ? _buildOnboarding(context)
          : _buildMainContent(context, width, height),
    );
  }

  Widget _buildMainContent(BuildContext context, double width, double height) {
    final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
    return Row(
      children: [
        SideBar(
          width: width,
          height: height,
          navigator: navigatorKey,
        ),
        Expanded(child: widget.child),
      ],
    );
  }

  Container _buildOnboarding(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.45,
          bottom: MediaQuery.of(context).size.height * 0.1,
          left: 30,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hidden Treasures',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontSize: 65,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isOnboarding = false;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.zero,
                elevation: 0,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_circle_right_outlined,
                    size: 50,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Explore More',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
