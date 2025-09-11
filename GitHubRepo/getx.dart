import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constants/Constants.dart';
import '../Widgets/PostCard.dart';
import '../controllers/PostController.dart'; // Import your PostController

class PostListScreen extends StatelessWidget {
  const PostListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the controller instance (automatically manages lifecycle)
    final PostController controller = Get.put(PostController());

    // Fetch posts when the screen is first loaded
    controller.fetchPosts();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive Blog Posts'),
        backgroundColor: AppConstants.secondColor,
      ),
      body: Obx(() {
        // Using Obx to listen to the changes of posts and loading state
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.posts.isEmpty) {
          return const Center(child: Text('No posts found'));
        }

        return ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            final post = controller.posts[index];
            return PostCard(post: post);
          },
        );
      }),
    );
  }
}


