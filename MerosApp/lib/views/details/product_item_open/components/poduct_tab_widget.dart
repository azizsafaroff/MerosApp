import 'package:flutter/material.dart';
import 'package:flutter_custom_tab_bar/library.dart';
import 'package:meros/models/constants.dart';

class ProductTabWidget extends StatefulWidget {
  const ProductTabWidget({Key? key}) : super(key: key);

  @override
  _ProductTabWidgetState createState() => _ProductTabWidgetState();
}

class _ProductTabWidgetState extends State<ProductTabWidget> {
  final List<String> _itemText = ['Описание', 'Характеристики'];
  final int pageCount = 2;
  final PageController _controller = PageController();

  final CustomTabBarController _tabBarController = CustomTabBarController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTabBar(
          tabBarController: _tabBarController,
          height: 50.0,
          pinned: true,
          itemCount: pageCount,
          builder: _buildTabBarItem,
          indicator: StandardIndicator(
            width: 50.0,
            height: 2,
            color: kPrimaryColor,
            radius: BorderRadius.circular(4.0),
          ),
          pageController: _controller,
        ),
        const SizedBox(
          height: 14.0,
        ),
        SizedBox(
          height: 170.0,
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Text(
                  'Молодость быстро и обычно незаметно проходит. Большинство берутся за ум после 30-ти, когда тело дряхлеет, ум слабеет,а в кармане пусто. Между тем есть иные перспективы для сегодняшних 10-15-летних. Обычно мы не понимаем, что такое лидерство и не стремимся к этому, а потому большинство коротают судьбу вагона, прицепленного к локомотиву чужой жизни. Изучить основы лидерства и понять его принципы - хорошая возможность взять жизнь  ум слабеет,а в кармане пусто. Между тем есть иные перспективы для сегодняшних 10-15-летних. Обычно мы не понимаем, что такое лидерство и не стремимся к этому, а потому большинство коротают судьбу вагона, прицепленного к локомотиву чужой жизни. Изучить основы лидерства и понять его принципы - хорошая возможность взять жизнь',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 10,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Column(
                  children: [
                    _buildCharacterChild('Автор', 'Шамиль Аляутдинов'),
                    _buildCharacterChild('Языки', 'Русский'),
                    _buildCharacterChild('Надпись', 'Кириллица'),
                    _buildCharacterChild('Издательство', 'Диля'),
                    _buildCharacterChild('Серия', 'Мир Ислама'),
                    _buildCharacterChild('Вес', '680 г'),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Divider(
            color: kGreyColor,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
      ],
    );
  }

  Widget _buildCharacterChild(String character, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                character,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.start,
                style: const TextStyle(fontSize: 16.0, color: kGreyColor),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBarItem(BuildContext context, int index) {
    return TabBarItem(
      index: index,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        alignment: Alignment.center,
        constraints: const BoxConstraints(minWidth: 70),
        child: Text(
          _itemText[index],
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
