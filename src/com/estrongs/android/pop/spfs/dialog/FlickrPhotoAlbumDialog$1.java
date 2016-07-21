package com.estrongs.android.pop.spfs.dialog;

import android.os.AsyncTask;
import android.view.View;
import android.widget.ListView;
import android.widget.ProgressBar;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.AlbumException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.utils.a;
import java.util.ArrayList;
import java.util.List;

class FlickrPhotoAlbumDialog$1
  extends AsyncTask<Void, Void, Void>
{
  boolean result = false;
  
  FlickrPhotoAlbumDialog$1(FlickrPhotoAlbumDialog paramFlickrPhotoAlbumDialog, ProgressBar paramProgressBar, View paramView, ListView paramListView, FlickrPhotoAlbumDialog.AlbumAdapter paramAlbumAdapter, String paramString) {}
  
  protected Void doInBackground(Void... paramVarArgs)
  {
    for (;;)
    {
      int i;
      try
      {
        if (FlickrPhotoAlbumDialog.access$100(this$0) == null) {
          FlickrPhotoAlbumDialog.access$102(this$0, PhotoInfoManager.getAllAlbums(val$path));
        }
        if (FlickrPhotoAlbumDialog.access$200(this$0) == null) {
          FlickrPhotoAlbumDialog.access$202(this$0, new ArrayList());
        }
        int j = FlickrPhotoAlbumDialog.access$100(this$0).size();
        FlickrPhotoAlbumDialog.access$302(this$0, new boolean[j]);
        i = 0;
        if (i < j) {
          if (FlickrPhotoAlbumDialog.access$400(this$0, FlickrPhotoAlbumDialog.access$200(this$0), (Album)FlickrPhotoAlbumDialog.access$100(this$0).get(i))) {
            FlickrPhotoAlbumDialog.access$300(this$0)[i] = 1;
          } else {
            FlickrPhotoAlbumDialog.access$300(this$0)[i] = 0;
          }
        }
      }
      catch (AlbumException paramVarArgs)
      {
        paramVarArgs.printStackTrace();
      }
      for (;;)
      {
        return null;
        result = true;
      }
      i += 1;
    }
  }
  
  protected void onPostExecute(Void paramVoid)
  {
    if (result)
    {
      val$scan_progress.setVisibility(8);
      val$album_view.setVisibility(0);
      val$album_list.setAdapter(val$adapter);
      val$adapter.notifyDataSetChanged();
      return;
    }
    a.a(FlickrPhotoAlbumDialog.access$000(this$0), 2131231507);
    this$0.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */