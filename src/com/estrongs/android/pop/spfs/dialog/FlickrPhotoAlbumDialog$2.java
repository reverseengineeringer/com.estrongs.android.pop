package com.estrongs.android.pop.spfs.dialog;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

class FlickrPhotoAlbumDialog$2
  implements CompoundButton.OnCheckedChangeListener
{
  FlickrPhotoAlbumDialog$2(FlickrPhotoAlbumDialog paramFlickrPhotoAlbumDialog, FlickrPhotoAlbumDialog.AlbumAdapter paramAlbumAdapter) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      val$adapter.cancelAllRadio();
      val$adapter.notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */