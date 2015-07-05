package com.estrongs.android.pop.spfs.dialog;

import com.estrongs.android.pop.spfs.Album;
import java.util.ArrayList;
import java.util.List;

class FlickrPhotoPrivacyDialog$1
  implements FlickrPhotoAlbumDialog.AlbumOptionCallback
{
  FlickrPhotoPrivacyDialog$1(FlickrPhotoPrivacyDialog paramFlickrPhotoPrivacyDialog) {}
  
  public void setAlbum(List<Album> paramList1, List<Album> paramList2, List<Album> paramList3, boolean paramBoolean, String paramString)
  {
    FlickrPhotoPrivacyDialog.access$002(this$0, paramList1);
    FlickrPhotoPrivacyDialog.access$102(this$0, paramList2);
    FlickrPhotoPrivacyDialog.access$202(this$0, paramList3);
    if (paramBoolean)
    {
      if (FlickrPhotoPrivacyDialog.access$000(this$0) == null) {
        FlickrPhotoPrivacyDialog.access$002(this$0, new ArrayList());
      }
      FlickrPhotoPrivacyDialog.access$000(this$0).add(new Album(null, paramString, null, null));
      paramList3.add(new Album(null, paramString, null, null));
    }
    FlickrPhotoPrivacyDialog.access$300(this$0, paramList3);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */