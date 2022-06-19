import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oea_app/ui/blog/widgets/post_list.dart';
import 'package:oea_app/ui/layout/layout_base.dart';


class PostsScreen extends StatelessWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBase(
      hasTop: false,
      child: PostList()
    );
  }
}
