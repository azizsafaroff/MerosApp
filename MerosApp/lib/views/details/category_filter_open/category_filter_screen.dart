import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/details/category_open/open_category_screen.dart';
import 'package:meros/views/widgets/app_bar_text.dart';
import 'package:meros/views/widgets/buttons/custom_button.dart';
import 'package:meros/views/widgets/buttons/navigation_button.dart';

import 'components/category_filter_item_widget.dart';

class CategoryFilterScreen extends StatefulWidget {
  const CategoryFilterScreen({Key? key}) : super(key: key);

  @override
  State<CategoryFilterScreen> createState() => _CategoryFilterScreenState();
}

class _CategoryFilterScreenState extends State<CategoryFilterScreen> {
  int? groupValue;
  int? categoryValue;

  final List<String> _items = [
    'Книги',
    'Диски',
    'Атрибутика',
    'Канцтовары',
    'Для мужчин',
  ];

  final List<String> _categoryItems = [
    'Научная литература',
    'Историческая литература',
    'Художетвенная литература',
    'Детектив',
    'Литература Азии',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const AppBarText(title: 'Категории'),
        shadowColor: kGreyColor.withOpacity(.2),
        actions: [
          CustomButton(
            icon: 'assets/icons/ic_clear.svg',
            press: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(width: 16.0),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            groupValue != null
                ? CategoryFilterItemWidget(
                    title: _items[groupValue!],
                    value: groupValue!,
                    groupValue: groupValue,
                    press: () {
                      setState(() {
                        groupValue = null;
                      });
                    },
                  )
                : Column(
                    children: List.generate(
                      _items.length,
                      (index) => CategoryFilterItemWidget(
                        title: _items[index],
                        value: index,
                        groupValue: groupValue,
                        press: () {
                          setState(() {
                            groupValue = index;
                          });
                        },
                      ),
                    ),
                  ),
            if (groupValue != null)
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: categoryValue != null
                    ? CategoryFilterItemWidget(
                        title: _categoryItems[categoryValue!],
                        value: categoryValue!,
                        groupValue: categoryValue,
                        press: () {
                          setState(() {
                            categoryValue = null;
                          });
                        },
                      )
                    : Column(
                        children: List.generate(
                          _items.length,
                          (index) => CategoryFilterItemWidget(
                            title: _categoryItems[index],
                            value: index,
                            groupValue: categoryValue,
                            press: () {
                              setState(() {
                                categoryValue = index;
                              });
                            },
                          ),
                        ),
                      ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarButton(
        title: 'Посмотреть',
        press: () {
          if (groupValue != null && categoryValue != null) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => OpenCategoryScreen(
                  title: _categoryItems[categoryValue!],
                ),
              ),
            );
          } else if (groupValue != null) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => OpenCategoryScreen(
                  title: _items[groupValue!],
                ),
              ),
            );
          } else {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
