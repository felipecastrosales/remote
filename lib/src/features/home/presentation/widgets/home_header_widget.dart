import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.paddingOf(context).top;

    return Container(
      padding: EdgeInsets.fromLTRB(16, statusBarHeight + 16, 16, 16),
      color: Colors.teal,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/59374587?v=4',
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.remove_red_eye,
                color: Colors.white,
              ),
              const SizedBox(width: 16),
              const Icon(
                Icons.help_outline_rounded,
                color: Colors.white,
              ),
              const SizedBox(width: 16),
              const Icon(
                Icons.person_search_outlined,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Text(
                'Olá, Felipe!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
