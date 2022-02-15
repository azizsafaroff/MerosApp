import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';

class ProductWriteCommentWidget extends StatelessWidget {
  const ProductWriteCommentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Card(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 16.0,
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Ваша оценка:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    5,
                    (index) => const Icon(
                      Icons.star,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Text(
                  'Достоинства',
                ),
                const SizedBox(
                  height: 8.0,
                ),
                TextField(
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    hintText: 'Что вам понравилось',
                    hintStyle: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Text('Комментарий'),
                const SizedBox(
                  height: 8.0,
                ),
                TextField(
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                  minLines: 3,
                  maxLines: 8,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    hintText: 'Другие впечатления о модели',
                    hintStyle: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Text('Фотографии товара'),
                const SizedBox(
                  height: 8.0,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    'Загрузить',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kPrimaryDarkColor,
                      padding: const EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 24.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Оставить отзыв',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
