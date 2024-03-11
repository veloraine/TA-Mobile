import 'package:flutter/material.dart';

import '../../../themes/_themes.dart';
import '../atoms/bottom_navbar_item.dart';

class ButtomNavbar extends StatelessWidget {
  final List<BottomNavbarItem> items;
  final void Function(int) onTap;
  final int initialActiveIndex;

  const ButtomNavbar({
    required this.items,
    required this.onTap,
    this.initialActiveIndex = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Material(
        elevation: 8,
        child: Container(
          color: BaseColors.white,
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 12,
          ),
          child: Row(
            children: List.generate(
              items.length,
              (index) {
                final isSelected = initialActiveIndex == index;
                return Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => onTap.call(index),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 8),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              items[index].label,
                              style: FontTheme.captionMedium.copyWith(
                                color: isSelected
                                    ? BaseColors.primary
                                    : BaseColors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
