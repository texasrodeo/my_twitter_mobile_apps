import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

class DynamicLinksService{

  DynamicLinksService._privateConstructor();

  static final DynamicLinksService _instance = DynamicLinksService._privateConstructor();

  factory DynamicLinksService() {
    return _instance;
  }

  Future<Uri> createDynamicLinkForPost(String postId) async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      // This should match firebase but without the username query param
      uriPrefix: 'https://mytwitterapp.page.link',
      link: Uri.parse('https://mytwitterapp.page.link/post?postId=$postId'),
      androidParameters: AndroidParameters(
        packageName: 'com.example.my_twitter',
        minimumVersion: 1,
      ),
    );
    final link = await parameters.buildUrl();
    final ShortDynamicLink shortenedLink = await DynamicLinkParameters.shortenUrl(
      link,
      DynamicLinkParametersOptions(shortDynamicLinkPathLength: ShortDynamicLinkPathLength.unguessable),
    );
    return shortenedLink.shortUrl;
  }
}
