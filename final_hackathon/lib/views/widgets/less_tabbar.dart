import 'package:final_hackathon/constants/colors._constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidgets extends StatelessWidget {
  const TabBarWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const SizedBox(height: 10),
                      Text(
                        'About Course',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                     const SizedBox(height: 10),
                      Text(
                        'This course is aimed at people new to design, new to User Experience design. Even if you’re not totally sure what UX really means, don’t worry. We’ll start right at the beginning and work our way through step by step.',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          height: 2,
                          color: const Color(0xff697B7A),
                        ),
                      ),
                  const SizedBox(height: 20,),
                   Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton.icon(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.white10
                        ),
                         icon: const Icon(Icons.shopping_basket_outlined, size: 24,), 
                         label: Text("Add to Cart", style: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.white
                         ),)),
                        ElevatedButton(onPressed: (){},
                         child: Text("Buy Now \$145",
                         style: GoogleFonts.poppins(
                          fontSize: 18, color: Colors.white
                         ),))
                      ],
                    ),
                   )
                    ],
                  ),
                ),
              );
  }
}