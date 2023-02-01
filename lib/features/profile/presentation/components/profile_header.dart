import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProfileHeader extends StatelessWidget {
  final String imageUrl;
  final String name;
  final DateTime registeredDate;
  final DateFormat format = DateFormat("dd/MM/yyyy");

  ProfileHeader({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.registeredDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
          ),
          height: 170,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFAC1D41), Color(0xFF8D208D)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),

        // Header Content
        Positioned(
          bottom: 0,
          left: 16,
          right: 16,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Image
              Container(
                padding: const EdgeInsets.all(1),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              const SizedBox(width: 16),

              // Profile info
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: Theme.of(context).textTheme.headlineLarge,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        "Registered on: ${format.format(registeredDate)}",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
