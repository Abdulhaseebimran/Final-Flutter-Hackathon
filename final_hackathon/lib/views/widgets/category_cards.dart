import 'package:final_hackathon/views/widgets/category_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.ratio,
    required this.title,
    required this.instructor,
    required this.percentvalue,
    required this.linewidth,
    required this.color,
  }) : super(key: key);

  final color;
  final String ratio;
  final String title;
  final String instructor;
  final String percentvalue;
  final double linewidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ongoing . $ratio',
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  instructor,
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff0145AA),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          PercentIndicator(percent: percentvalue, percent_value: linewidth),
        ],
      ),
    );
  }
}