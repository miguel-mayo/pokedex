import 'package:flutter/material.dart';
import 'package:pokedex/shared/shared.dart';

class AdaptiveNavigation extends StatelessWidget {
  const AdaptiveNavigation({
    super.key,
    required this.destinations,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.child,
  });

  final List<NavigationDestination> destinations;
  final int selectedIndex;
  final void Function(int index) onDestinationSelected;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, dimens) {
        // Tablet Layout
        if (dimens.maxWidth >= 600) {
          return Scaffold(
            body: Row(
              children: [
                NavigationRail(
                  extended: dimens.maxWidth >= 800,
                  minExtendedWidth: 180,
                  destinations: destinations
                      .map((e) => NavigationRailDestination(
                            icon: e.icon,
                            label: Text(e.label),
                          ))
                      .toList(),
                  selectedIndex: selectedIndex,
                  onDestinationSelected: onDestinationSelected,
                ),
                Expanded(child: child),
              ],
            ),
          );
        }
        // Mobile Layout
        return Scaffold(
          body: child,
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(BorderRadiusSize.l),
              topRight: Radius.circular(BorderRadiusSize.l),
            ),
            child: NavigationBar(
              backgroundColor: context.colors.primary.withOpacity(0.3),
              indicatorShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(BorderRadiusSize.xl),
              ),
              indicatorColor: context.colors.primary,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
              surfaceTintColor: context.colors.primary,
              destinations: destinations,
              selectedIndex: selectedIndex,
              onDestinationSelected: onDestinationSelected,
            ),
          ),
        );
      },
    );
  }
}
