import 'package:codealerts_app/app/data/models/project.dart';
import 'package:codealerts_app/app/modules/add/controllers/add_controller.dart';
import 'package:codealerts_app/app/modules/add/widgets/source_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepTwoContent extends StatelessWidget {
  const StepTwoContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _addCtrl = Get.find<AddController>(tag: 'add');

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Write a search term',
                        style: Get.textTheme.bodyText1,
                      ),
                      SizedBox(height: 5),
                      Text(
                        'or paste an ${_addCtrl.sourcesDetails[_addCtrl.selectedSource.value]!['title']} URL',
                        style: Get.textTheme.bodyText2,
                      )
                    ],
                  ),
                ),
                OutlinedButton(
                  child: Text('Cancel'),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 25,
                    ),
                  ),
                  onPressed: () {
                    _addCtrl.selectedSource.value = null;
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextFormField(
              // controller: _textController,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black26,
                  ),
                ),
                hintText: "Search text or URL",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onChanged: (_) {
                // Refresh ui
                // setState(() {});
              },
              onFieldSubmitted: (_) async {
                // await _addResourceTabCtrl.onSubmitUrlTextField(
                //   _textController.text,
                // );
                // _textController.clear();
              },
            ),
          ),
          SizedBox(height: 6),
        ],
      ),
    );
  }
}
