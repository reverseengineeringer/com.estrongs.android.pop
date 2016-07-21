package com.estrongs.android.pop.spfs.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.utils.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class FlickrPhotoAlbumDialog$3
  implements DialogInterface.OnClickListener
{
  FlickrPhotoAlbumDialog$3(FlickrPhotoAlbumDialog paramFlickrPhotoAlbumDialog, ProgressBar paramProgressBar, CheckBox paramCheckBox, EditText paramEditText, Context paramContext) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (val$scan_progress.getVisibility() == 0) {
      return;
    }
    if (FlickrPhotoAlbumDialog.access$500(this$0))
    {
      if (!FlickrPhotoAlbumDialog.access$600(this$0).isChecked()) {}
    }
    else {
      while (val$new_album_check.isChecked())
      {
        if (!"".equals(val$new_album_name.getText().toString().trim())) {
          break;
        }
        a.a(val$context, 2131232153);
        return;
      }
    }
    paramDialogInterface = new ArrayList();
    ArrayList localArrayList = new ArrayList();
    this$0.selectedList.clear();
    paramInt = 0;
    while (paramInt < FlickrPhotoAlbumDialog.access$300(this$0).length)
    {
      if (FlickrPhotoAlbumDialog.access$300(this$0)[paramInt] != 0) {
        this$0.selectedList.add(FlickrPhotoAlbumDialog.access$100(this$0).get(paramInt));
      }
      paramInt += 1;
    }
    Object localObject1 = this$0.selectedList.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Album)((Iterator)localObject1).next();
      if (!FlickrPhotoAlbumDialog.access$400(this$0, FlickrPhotoAlbumDialog.access$200(this$0), (Album)localObject2)) {
        paramDialogInterface.add(localObject2);
      }
    }
    localObject1 = FlickrPhotoAlbumDialog.access$200(this$0).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Album)((Iterator)localObject1).next();
      if (!FlickrPhotoAlbumDialog.access$400(this$0, this$0.selectedList, (Album)localObject2)) {
        localArrayList.add(localObject2);
      }
    }
    localObject1 = FlickrPhotoAlbumDialog.access$700(this$0);
    Object localObject2 = this$0.selectedList;
    if (FlickrPhotoAlbumDialog.access$500(this$0)) {}
    for (boolean bool = FlickrPhotoAlbumDialog.access$600(this$0).isChecked();; bool = val$new_album_check.isChecked())
    {
      ((FlickrPhotoAlbumDialog.AlbumOptionCallback)localObject1).setAlbum(paramDialogInterface, localArrayList, (List)localObject2, bool, val$new_album_name.getText().toString());
      this$0.dismiss();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */