import 'package:family_tree/Presentation/Admin/screens/dashboard.dart';
import 'package:family_tree/Presentation/Admin/screens/memberScreen.dart';
import 'package:family_tree/Utils/colours.dart';
import 'package:family_tree/Utils/size.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminMainHome extends StatelessWidget {
  AdminMainHome({super.key});

  final ValueNotifier<int> _selectedIndexNotifier = ValueNotifier<int>(0);

  final List<IconData> _icons = [
    Icons.home,
    Icons.family_restroom,
    Icons.groups,
    Icons.settings,
  ];

  final List<String> labels = [
    'Home',
    'Family',
    'Members',
    'Settings',
  ];

  final List<Widget> _pages = [
    const AdminDashboard(),
    const Center(child: Text('tree')),
    const MemberListscreen(),
    const Center(child: Text('Settings')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: _selectedIndexNotifier,
        builder: (context, index, _) => _pages[index],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: ValueListenableBuilder<int>(
          valueListenable: _selectedIndexNotifier,
          builder: (context, selectedIndex, _) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      _navItemFixedWidth(index: 0, selectedIndex: selectedIndex),
      _navItemFixedWidth(index: 1, selectedIndex: selectedIndex),
      SizedBox(
        height: 50,
        width: 50,
        child: Center(
          child: FloatingActionButton(
            onPressed: () {
              GoRouter.of(context).push('/addmemberscreen');
            },
            shape: const CircleBorder(),
            elevation: 4,
            backgroundColor: primaryColor,
            child: const Icon(Icons.add, size: 35, color: whitecolour),
          ),
        ),
      ),
      _navItemFixedWidth(index: 2, selectedIndex: selectedIndex),
      _navItemFixedWidth(index: 3, selectedIndex: selectedIndex),
    ],
  ),
),


        ),
      ),
    );
  }
Widget _navItemFixedWidth({required int index, required int selectedIndex}) {
  return SizedBox(
    width: 70, 
    child: _buildNavItem(
      icon: _icons[index],
      index: index,
      selectedIndex: selectedIndex,
    ),
  );
}
  Widget _buildNavItem({
    required IconData icon,
    required int index,
    required int selectedIndex,
  }) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => _selectedIndexNotifier.value = index,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            icon,
            color: isSelected ? primaryColor : Colors.grey,
            size: 25,
            
          ),
          Text(
            labels[index],
            style: GoogleFonts.outfit(
              color: isSelected ? primaryColor : Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          sizedBox_h10,
        ],
      ),
    );
  }
}


