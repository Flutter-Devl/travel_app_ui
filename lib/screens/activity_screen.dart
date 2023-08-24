import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travel_app_ui/models/activity_model.dart';
import 'package:travel_app_ui/screens/activity_detail_screen.dart';
import 'package:travel_app_ui/utils/custom_header.dart';
import 'package:shimmer/shimmer.dart'; // Import the shimmer package

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  static const routeName = '/activities';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<Activity> activities = Activity.activities;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          const CustomHeader(title: 'Activities'),
          _ActivitiesMasonryGrid(width: width, activities: activities),
        ],
      ),
    );
  }
}

class _ActivitiesMasonryGrid extends StatelessWidget {
  const _ActivitiesMasonryGrid({
    Key? key,
    this.masonryCardHeights = const [200, 250, 300],
    required this.width,
    required this.activities,
  }) : super(key: key);

  final List<double> masonryCardHeights;
  final double width;
  final List<Activity> activities;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(10.0),
      itemCount: activities.length,
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemBuilder: (context, index) {
        Activity activity = activities[index];
        return _buildActivityCard(context, activity, index);
      },
    );
  }

  InkWell _buildActivityCard(
      BuildContext context, Activity activity, int index) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ActivityDetailsScreen(activity: activity),
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: '${activity.id}_${activity.title}',
            child: _buildImageWithShimmer(
                activity.imageUrl, masonryCardHeights[index % 3]),
          ),
          const SizedBox(height: 10),
          Text(
            activity.title,
            maxLines: 3,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildImageWithShimmer(String imageUrl, double height) {
    return FutureBuilder(
      future:
          Future.delayed(const Duration(milliseconds: 1500), () => imageUrl),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            period: const Duration(milliseconds: 1500),
            child: Container(
                height: height, width: double.infinity, color: Colors.white),
          );
        } else {
          if (snapshot.hasError) {
            return const Icon(Icons.error);
          } else {
            return Image.network(
              snapshot.data.toString(),
              height: height,
              width: double.infinity,
              fit: BoxFit.cover,
            );
          }
        }
      },
    );
  }
}
