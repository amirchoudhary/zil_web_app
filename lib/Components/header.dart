import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/zil_logo.png',
                width: 72,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                children: const [
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Sell on ZIL',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Container(
                  width: 600,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xFFE5E5E5),
                            blurRadius: 5,
                            offset: Offset(5, 5))
                      ],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE1E1E1))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Color(0xFFF44336),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12))),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Center(
                              child: Icon(
                            Icons.search,
                            color: Colors.white,
                          )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      width: 600,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF6F6F6),
                          boxShadow: const [
                            BoxShadow(
                                color: Color(0xFFE5E5E5),
                                blurRadius: 5,
                                offset: Offset(5, 5))
                          ],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: const Color(0xFFE1E1E1))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/Icons/fast_delivery.png'),
                          Image.asset('assets/Icons/pune.png'),
                          Image.asset('assets/Icons/account.png'),
                          Image.asset('assets/Icons/bag.png'),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 48,
                      child: Container(
                        height: 24,
                        width: 24,
                        padding: const EdgeInsets.all(6),
                        decoration: const BoxDecoration(
                            color: Color(0xFFF44336),
                            borderRadius:
                                BorderRadius.all(Radius.circular(64))),
                        child: const Center(
                          child: Text(
                            '5',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              48,
              24,
              0,
              24,
            ),
            child: Row(
              children: [
                Container(
                  height: 42,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      color: const Color(0xFFF6F6F6),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xFFE5E5E5),
                            blurRadius: 5,
                            offset: Offset(5, 5))
                      ],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE1E1E1))),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color(0xFF242860),
                  ),
                ),
                const SizedBox(
                  width: 64,
                ),
                Expanded(
                  child: Container(
                    height: 42,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF6F6F6),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0xFFE5E5E5),
                              blurRadius: 5,
                              offset: Offset(5, 5))
                        ],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFE1E1E1))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 6),
                      child: Row(
                        children:  [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child:categoryText('Fast Delivery')
                          ),
                          const VerticalDivider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: categoryText('Flower Bouquets')
                          ),
                          const VerticalDivider(
                            thickness: 1,
                          ),
                           Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: categoryText('Cakes'),
                          ),
                          const VerticalDivider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: categoryText('Gift Bundles'),
                          ),
                          const VerticalDivider(
                            thickness: 1,
                          ),
                           Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: categoryText('Personalised'),
                          ),
                          const VerticalDivider(
                            thickness: 1,
                          ),
                           Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: categoryText('Create your own'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget categoryText(String category) {
    return Text(
      category,
      style: const TextStyle(color: Color(0xFF242860)),
    );
  }
}
