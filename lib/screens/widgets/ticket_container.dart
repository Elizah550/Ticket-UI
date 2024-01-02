import 'package:flutter/material.dart';
import 'package:machinetest4/colors.dart';

class TicketContainer extends StatelessWidget {
  final String singer;
  final Color firstcolor;
  final Color secondcolor;
  final Color thirdcolor;
  final String image;
  const TicketContainer({
    super.key,
    required this.singer,
    required this.firstcolor,
    required this.secondcolor,
    required this.thirdcolor,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    const double containerHeight = 180;
    const int totalAvatars = 6; // Including the two existing avatars

    // Calculate the spacing between avatars
    const double avatarSpacing =
        (containerHeight - (totalAvatars * 18)) / (totalAvatars - 1);

    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: containerHeight,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      firstcolor,
                      secondcolor,
                      thirdcolor,
                    ],
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 15),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(image), fit: BoxFit.cover),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 112, 111, 111)
                                    .withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 1,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              singer,
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: kwhitecolor,
                                  fontWeight: FontWeight.w600),
                            ),
                            const Text(
                              'India Tour 2023',
                              style:
                                  TextStyle(fontSize: 15, color: kwhitecolor),
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 16,
                                  color: kwhitecolor,
                                ),
                                Text(
                                  "03-042023,11:00am-2:00pm",
                                  style: TextStyle(
                                      color: kwhitecolor, fontSize: 10),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 16,
                                  color: kwhitecolor,
                                ),
                                Text(
                                  "Mumbai Stadium, Mumbai,India",
                                  style: TextStyle(
                                      color: kwhitecolor, fontSize: 10),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ColorFiltered(
                    colorFilter:
                        const ColorFilter.mode(kwhitecolor, BlendMode.srcIn),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/barcode1.png',
                              ),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
            ),
          ),
          // Left side avatars
          for (int i = 0; i < totalAvatars; i++)
            Positioned(
              top: 12 + i * (18 + avatarSpacing),
              left: 0,
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 9,
              ),
            ),
          // Right side avatars
          for (int i = 0; i < totalAvatars; i++)
            Positioned(
              top: 12 + i * (18 + avatarSpacing),
              right: 0,
              child: const CircleAvatar(
                backgroundColor: Colors.black,
                radius: 9,
              ),
            ),
          const Positioned(
            top: 6,
            right: 25,
            child: Text(
              'W84375GB837845G8',
              style: TextStyle(
                color: kwhitecolor,
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
