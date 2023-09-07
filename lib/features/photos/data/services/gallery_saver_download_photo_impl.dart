
import 'package:amd_group_test/features/photos/data/services/download_photo_service.dart';
import 'package:gallery_saver/gallery_saver.dart';

class GallerySaverDownloadPhotoImpl implements DownloadPhotoService {
  @override
  Future<void> downloadByUrl(String url) => GallerySaver.saveImage(url);
}
