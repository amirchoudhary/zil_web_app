import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Filters',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Clear filter',
                  style: TextStyle(
                      color: Colors.grey, decoration: TextDecoration.underline),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Categories',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [buildCategoryCheckbox(true), categoryText('Jackets')],
            ),
            Row(
              children: [buildCategoryCheckbox(false), categoryText('Fleece')],
            ),
            Row(
              children: [
                buildCategoryCheckbox(false),
                categoryText('Sweatshirts & Hoodies')
              ],
            ),
            Row(
              children: [buildCategoryCheckbox(false), categoryText('Sweaters')],
            ),
            Row(
              children: [buildCategoryCheckbox(false), categoryText('Shirts')],
            ),
            Row(
              children: [buildCategoryCheckbox(false), categoryText('T-Shirts')],
            ),
            Row(
              children: [
                buildCategoryCheckbox(false),
                categoryText('Pants & Jeans')
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Color',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    selectColors(Colors.blue),
                    selectColors(Colors.pink),
                    selectColors(Colors.red),
                    selectColors(Colors.green),
                    selectColors(Colors.grey),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    selectColors(Colors.teal),
                    selectColors(Colors.indigo),
                    selectColors(Colors.deepOrange),
                    selectColors(Colors.amber),
                    selectColors(Colors.lime),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container selectColors(Color color) {
    return Container(
      margin: const EdgeInsets.all(4),
      height: 24,
      width: 24,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          color: color,
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: const BorderRadius.all(Radius.circular(64))),
    );
  }

  Checkbox buildCategoryCheckbox(bool bool) {
    return Checkbox(
      activeColor: Colors.white,
      checkColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      side: MaterialStateBorderSide.resolveWith(
        (states) => const BorderSide(width: 1.0, color: Colors.black),
      ),
      value: bool,
      onChanged: (newValue) {
        setState(() {
          // checkedValue = newValue;
        });
      },
    );
  }

  Widget categoryText(String category) {
    return Text(
      category,
      style: const TextStyle(color: Color(0xFF242860)),
    );
  }
}
