import 'package:flutter/material.dart';

class HeaderSlider extends StatelessWidget {
  const HeaderSlider({
    required this.pic,
    required this.url,
    required this.category,
    required this.off,
    Key? key,
  }) : super(key: key);
  final String off;
  final String category;
  final String url;
  final String pic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 20,
        right: 10,
        bottom: 20,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xFFEFEFEF),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 17,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      off,
                      style: const TextStyle(
                        color: Color(0xff202727),
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    category,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: ElevatedButton(
                      onPressed: () {
                        print(url);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      child: const Text(
                        "Shop now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Image.asset(
              pic,
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width * 0.3,
            ),
          ],
        ),
      ),
    );
  }
}
