package com.estrongs.android.pop.spfs.dialog;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

class FlickrPhotoAlbumDialog$AlbumAdapter$1
  implements CompoundButton.OnCheckedChangeListener
{
  FlickrPhotoAlbumDialog$AlbumAdapter$1(FlickrPhotoAlbumDialog.AlbumAdapter paramAlbumAdapter, int paramInt) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      FlickrPhotoAlbumDialog.access$300(this$1.this$0)[val$position] = 1;
      return;
    }
    FlickrPhotoAlbumDialog.access$300(this$1.this$0)[val$position] = 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.AlbumAdapter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */