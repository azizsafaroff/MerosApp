import 'package:flutter/material.dart';
import 'package:meros/models/constants.dart';
import 'package:meros/views/screens/profile/components/profile_item_widget.dart';
import 'package:meros/views/widgets/custom_footer_widget.dart';

import 'profile_location_widgets.dart';
import 'profile_user_widget.dart';

class ProfileRegistredScreen extends StatelessWidget {
  const ProfileRegistredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const ProfileUserWidget(),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const ProfileLocationWIdget(),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ProfileItemWidget(
                item: PROFILE_REGISTERED_SCREEN_VARIABLES[index],
              ),
              childCount: PROFILE_REGISTERED_SCREEN_VARIABLES.length,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 8.0,
                ),
                const CustomFooterWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
