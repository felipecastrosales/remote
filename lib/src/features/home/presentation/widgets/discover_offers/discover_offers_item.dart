import 'package:flutter/material.dart';
import 'package:remote/src/data/services/firebase/firebase.dart';

class DiscoverOffersItem extends StatelessWidget {
  const DiscoverOffersItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.buttonText,
  });

  final String image, title, description, buttonText;

  @override
  Widget build(BuildContext context) {
    void onTap() {
      AppFirebaseAnalytics.logHomeEvent(['DiscoverOffers']);
    }

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Container(
        width: 240,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        child: Column(
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                color: Colors.grey[200],
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 32,
                      child: TextButton(
                        onPressed: onTap,
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          backgroundColor: Colors.teal,
                        ),
                        child: Text(
                          buttonText,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
