import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


class ScaffoldWithBottomNavBar extends ConsumerStatefulWidget {
  const ScaffoldWithBottomNavBar({super.key, required this.child});
  final Widget child;

  @override
  ConsumerState<ScaffoldWithBottomNavBar> createState() =>
      _ScaffoldWithBottomNavBarState();
}

class _ScaffoldWithBottomNavBarState
    extends ConsumerState<ScaffoldWithBottomNavBar> {
  int _selectedIndex = 0;

  void _tap(BuildContext context, int index) {
    if (index == _selectedIndex) {
      return;
    }
    setState(() => _selectedIndex = index);
    // if (index == 0) {
    //   context.goNamed(AppRoute.pokemon.name);
    // } else if (index == 1) {
    //   context.goNamed(AppRoute.moves.name);
    // } else if (index == 2) {
    //   context.goNamed(AppRoute.items.name);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PokeSearch'),
      ),
      body: SafeArea(child: widget.child),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pokemon',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Moves'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Items'),
        ],
        onTap: (index) => _tap(context, index),
      ),
    );
  }
}
