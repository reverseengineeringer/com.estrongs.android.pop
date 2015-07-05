package com.estrongs.android.pop.spfs.dialog;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.RadioButton;

class FlickrPhotoAlbumDialog$AlbumAdapter$3
  implements View.OnClickListener
{
  FlickrPhotoAlbumDialog$AlbumAdapter$3(FlickrPhotoAlbumDialog.AlbumAdapter paramAlbumAdapter, RadioButton paramRadioButton, CheckBox paramCheckBox) {}
  
  public void onClick(View paramView)
  {
    if (FlickrPhotoAlbumDialog.access$500(this$1.this$0))
    {
      val$album_radio.setChecked(true);
      return;
    }
    if (val$album_check.isChecked())
    {
      val$album_check.setChecked(false);
      return;
    }
    val$album_check.setChecked(true);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.AlbumAdapter.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */