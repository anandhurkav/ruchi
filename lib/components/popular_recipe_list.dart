import 'package:flutter/material.dart';
import 'package:ruchi/models/recipe.dart';

class PopularRecipeList extends StatelessWidget {
  const PopularRecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
      ),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: recipes.length,
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Container(
            height: 98,
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.transparent),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 53,
                        width: 73,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/${recipes[index].recipeImage}'))),
                      ),
                      const SizedBox(
                        width: 18.5,
                      ),
                      Expanded(
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              recipes[index].recipeName,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                 fontFamily: 'FML-Akhila',
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '${recipes[index].recipeMaker}',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 17,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: recipes[index].startColor,
                      child: Text(recipes[index].recipeMaker[0],
                      style: TextStyle(
                        color: recipes[index].endColor
                      ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: const [
                        Icon(Icons.share, size: 18,),
                        SizedBox(width: 7.65,),
                        Icon(Icons.bookmark_add_outlined,size: 18,)
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
