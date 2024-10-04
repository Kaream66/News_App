import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articaleModel});
  final ArticaleModel articaleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: articaleModel.image != null
                  ? Image.network(
                      articaleModel.image!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      height: 20,
                      width: 100,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: const Text(
                        'NO IMAGE',
                        style: TextStyle(
                            fontSize: 18, color: Color.fromARGB(127, 0, 0, 0)),
                      ),
                    )),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articaleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articaleModel.subTitle ?? '',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
