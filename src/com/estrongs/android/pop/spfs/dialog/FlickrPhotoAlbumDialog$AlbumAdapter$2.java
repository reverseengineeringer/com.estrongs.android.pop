package com.estrongs.android.pop.spfs.dialog;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RadioButton;

class FlickrPhotoAlbumDialog$AlbumAdapter$2
  implements CompoundButton.OnCheckedChangeListener
{
  FlickrPhotoAlbumDialog$AlbumAdapter$2(FlickrPhotoAlbumDialog.AlbumAdapter paramAlbumAdapter, int paramInt) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this$1.cancelAllRadio();
      FlickrPhotoAlbumDialog.access$600(this$1.this$0).setChecked(false);
      if (paramBoolean) {
        FlickrPhotoAlbumDialog.access$300(this$1.this$0)[val$position] = 1;
      }
      this$1.notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.AlbumAdapter.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */