package com.estrongs.android.pop.spfs.dialog;

import android.view.View;
import android.view.View.OnClickListener;

class FlickrPhotoPrivacyDialog$2
  implements View.OnClickListener
{
  FlickrPhotoPrivacyDialog$2(FlickrPhotoPrivacyDialog paramFlickrPhotoPrivacyDialog, FlickrPhotoAlbumDialog.AlbumOptionCallback paramAlbumOptionCallback) {}
  
  public void onClick(View paramView)
  {
    if (this$0.albumDialog == null) {
      this$0.albumDialog = new FlickrPhotoAlbumDialog(FlickrPhotoPrivacyDialog.access$400(this$0), val$aocb, FlickrPhotoPrivacyDialog.access$500(this$0), FlickrPhotoPrivacyDialog.access$600(this$0), FlickrPhotoPrivacyDialog.access$700(this$0));
    }
    this$0.albumDialog.show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */