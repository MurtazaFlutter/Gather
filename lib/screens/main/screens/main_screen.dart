import 'package:provider/provider.dart';
import '../../../controllers/main_screen_notifier.dart';
import '../../../utils/imports.dart';
import '../widgets/bottom_bar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> pageList = [
    const HomeScreen(),
    const SearchScreen(),
    const FavoritesScreen(),
    const ProfileSceen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
        builder: (context, mainScreenNotifier, child) {
      return Scaffold(
        body: pageList[mainScreenNotifier.pageIndex],
        bottomNavigationBar: const BottomBar(),
      );
    });
  }
}