import 'package:delivary_app/component/custom_button.dart';
import 'package:delivary_app/core/const/app_images.dart';
import 'package:delivary_app/core/const/app_text_style.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  const SizedBox(width: 4),
                  Text(
                    "3.8",
                    style: AppTextStyle.f14BlackBold,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Center(
            child: Image.asset(
              AppImages.hamburger,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text("Chicken burger", style: AppTextStyle.f16BlackBold),
          const SizedBox(height: 4),
          Text("100 gr chicken + tomato\n+ cheese  Lettuce",
              style: AppTextStyle.f12GreyNormal),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$20.00",
                style: AppTextStyle.f16BlackBold.copyWith(color: Colors.orange),
              ),
              CustomButton(
                iconColor: Colors.white,
                iconSize: 18,
                color: Colors.orange,
                height: 35,
                width: 35,
                icon: Icons.add,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
