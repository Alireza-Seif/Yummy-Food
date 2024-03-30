import 'package:flutter/material.dart';

class MyRoundedImage extends StatelessWidget {
  const MyRoundedImage({
    super.key,
    required this.imageUrl,
    this.onPressed,
    this.isNetworkImage = false,
  });

  final String imageUrl;
  final bool isNetworkImage;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 350,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image(
            image: isNetworkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
