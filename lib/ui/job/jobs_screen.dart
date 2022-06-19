import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:oea_app/ui/job/widgets/job_list.dart';
import 'package:oea_app/ui/layout/layout_base.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBase(
      child: JobList()
    );
  }
}