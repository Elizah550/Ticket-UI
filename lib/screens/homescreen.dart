import 'package:flutter/material.dart';
import 'package:machinetest4/colors.dart';
import 'package:machinetest4/screens/logic/tabbar_button_logic.dart';
import 'package:machinetest4/screens/widgets/custom_bottomnavbar.dart';
import 'package:machinetest4/screens/widgets/custom_tabs.dart';
import 'package:machinetest4/screens/widgets/ticket_container.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldColor,
        appBar: AppBar(
          backgroundColor: appBarcolor,
          title: const Text(
            'Your tickets',
            style: TextStyle(
                color: kwhitecolor, fontSize: 35, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Consumer<ButtonSelectionModel>(
                  builder: (context, buttonModel, _) {
                return Container(
                  height: 65,
                  width: double.infinity,
                  color: appBarcolor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        text: 'Upcoming',
                        color: buttonModel.isUpcomingSelected
                            ? primaryColor
                            : secondaryColor,
                        onPressed: () {
                          buttonModel.selectUpcoming();
                        },
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      CustomButton(
                        text: 'History',
                        color: buttonModel.isHistorySelected
                            ? primaryColor
                            : secondaryColor,
                        onPressed: () {
                          buttonModel.selectHistory();
                        },
                      ),
                    ],
                  ),
                );
              }),
              SizedBox(
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
                        child: const TicketContainer(
                          image:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvCIsRenafIJJ7QjK4xCn0sCNFv2UvefwDgg',
                          singer: 'Katty Perry',
                          firstcolor: Colors.pink,
                          secondcolor: Color.fromARGB(255, 153, 28, 69),
                          thirdcolor: Color.fromRGBO(216, 107, 163, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 75,
                      left: 0,
                      child: SizedBox(
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        child: const TicketContainer(
                          image:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThFU_IDia6sMIUosBlOhr0D5VsHiyrD9wtuA',
                          singer: 'Tylor Swift',
                          firstcolor: Color.fromRGBO(52, 26, 110, 1),
                          secondcolor: Color.fromRGBO(46, 16, 112, 1),
                          thirdcolor: Color.fromRGBO(158, 123, 233, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
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
              ),
              const SizedBox(height: 2),
              SizedBox(
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
                        child: const TicketContainer(
                          image:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0NRpmTjdDQqS5tIp3jfki_4Ro0rVtjlto1w',
                          singer: 'Alen Walker',
                          firstcolor: Colors.red,
                          secondcolor: Color.fromARGB(249, 190, 5, 29),
                          thirdcolor: Color.fromRGBO(224, 87, 74, 1),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 75,
                      left: 0,
                      child: SizedBox(
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        child: const TicketContainer(
                          image:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD6C3cOsJBrg2qVve8o4eqSMp1I4ZmY-9tDw',
                          singer: 'Jennifer Lopez',
                          firstcolor: Color.fromARGB(255, 7, 72, 126),
                          secondcolor: Color.fromARGB(255, 18, 116, 197),
                          thirdcolor: Color.fromARGB(255, 52, 152, 233),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavBar());
  }
}
