import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

import '../models/explore_page_model.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({Key? key, required this.imageData}) : super(key: key);

  final ImageData imageData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showCustomDialog(context),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.network(
          imageData.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  void showCustomDialog(BuildContext context) => showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            'assets/images/saber_ali.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      SizedBox(
                        height: 50,
                        width: 120,
                        child: FittedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Saber Ali',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'Dhaka, Bangladesh',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      RawMaterialButton(
                        elevation: 0,
                        shape: const StadiumBorder(),
                        onPressed: () {
                          print('Follow Clicked');
                        },
                        fillColor: const Color.fromARGB(255, 248, 231, 226),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Row(
                            children: const [
                              Icon(
                                FeatherIcons.userPlus,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                'Follow',
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.43,
                      width: MediaQuery.of(context).size.height * 0.43,
                      child: Image.network(
                        imageData.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    child: const Text(
                      'View Post',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.grey.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onPressed: () {
                      print('View Post Clicked');
                    },
                  ),
                ],
              ),
            ),
          );
        },
      );
}
