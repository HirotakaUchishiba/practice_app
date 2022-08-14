import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:practice_app/screens/home_screen.dart';
import 'package:practice_app/screens/map_screen.dart';
import 'package:practice_app/screens/profile_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'app',
      home: ScreenContainer(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//ここで初期値を入れる
final tabTypeProvider = StateProvider<int>((ref) => 0);

class ScreenContainer extends ConsumerWidget {
  const ScreenContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int tabType = ref.watch(tabTypeProvider);
    final _screens = [
      HomeScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: _screens[tabType],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabType,
        onTap: (int selectIndex) {
          ref.read(tabTypeProvider.notifier).state = selectIndex;
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'プロフィール',
          ),
        ],
      ),
    );
  }
}
