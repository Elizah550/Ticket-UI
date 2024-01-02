import 'package:flutter/material.dart';
import 'package:machinetest4/screens/widgets/ticket_container.dart';

class HomeCard extends StatelessWidget {
  final String image;
  final String name;
  final Color firstcolor;
  final Color secondcolor;
  final Color thirdcolor;
  const HomeCard({
    super.key,
    required this.image,
    required this.name,
    required this.firstcolor,
    required this.secondcolor,
    required this.thirdcolor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: TicketContainer(
                image: image,
                singer: name,
                firstcolor: Color.fromARGB(255, 9, 49, 49),
                secondcolor: Color.fromARGB(255, 7, 119, 108),
                thirdcolor: thirdcolor,
              ),
            ),
          ),
          Positioned(
            top: 66,
            left: 0,
            child: SizedBox(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: const TicketContainer(
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW6yK9fpG4CALzPUzY3HuuXbtPmegizohsQQ&usqp=CAU',
                singer: 'Arjit singh',
                firstcolor: Color.fromARGB(255, 9, 49, 49),
                secondcolor: Color.fromARGB(255, 7, 119, 108),
                thirdcolor: Color.fromARGB(255, 6, 182, 164),
              ),
            ),
          ),
          Positioned(
            top: 130,
            left: 0,
            child: SizedBox(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: const TicketContainer(
                image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQW6yK9fpG4CALzPUzY3HuuXbtPmegizohsQQ&usqp=CAU',
                singer: 'Arjit singh',
                firstcolor: Color.fromARGB(255, 9, 49, 49),
                secondcolor: Color.fromARGB(255, 7, 119, 108),
                thirdcolor: Color.fromARGB(255, 6, 182, 164),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
