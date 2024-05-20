import 'package:flutter/material.dart';

import '../profile_section.dart';
import 'app_bar_layout_large_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      backgroundColor: Colors.white,
      title: LayoutBuilder(
        builder: (context, constraints) {
          bool isSmallScreen = constraints.maxWidth < 600;
          return Row(
            children: [
              const Text(
                'Jidox',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(width: 16),
              if (!isSmallScreen) const AppBarLayoutLargeScreen(),
              if (isSmallScreen)
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.grey),
                  onPressed: () {
                    // Handle search icon press
                  },
                ),
            ],
          );
        },
      ),
      actions: [
        if (MediaQuery.of(context).size.width >= 800)
          DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: "English",
              icon: const Icon(Icons.arrow_drop_down, color: Colors.grey),
              items: ['English', 'Spanish', 'French'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {},
            ),
          ),
        const SizedBox(width: 8),
        IconButton(
          icon: const Icon(Icons.notifications, color: Colors.grey),
          onPressed: () {},
        ),
        if (MediaQuery.of(context).size.width >= 600) ...[
          IconButton(
            icon: const Icon(Icons.category, color: Colors.grey),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.grey),
            onPressed: () {
              // Add functionality to switch theme
            },
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: const Icon(Icons.brightness_2, color: Colors.grey),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
          IconButton(
            icon:
                const Icon(Icons.settings_overscan_rounded, color: Colors.grey),
            onPressed: () {},
          ),
        ],
        const SizedBox(width: 8),
        const VerticalDivider(width: 2),
        const SizedBox(width: 6),
        const ProfileSection(),
        const SizedBox(width: 10),
      ],
    );
  }
}
