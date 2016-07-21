package com.estrongs.android.pop.spfs.dialog;

import android.os.AsyncTask;
import android.view.View;
import android.widget.EditText;
import android.widget.ProgressBar;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.AlbumException;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.util.ap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class FlickrPhotoPrivacyDialog$6
  extends AsyncTask<Void, Void, Void>
{
  boolean result = false;
  
  FlickrPhotoPrivacyDialog$6(FlickrPhotoPrivacyDialog paramFlickrPhotoPrivacyDialog, ProgressBar paramProgressBar, View paramView, SPFileObject paramSPFileObject) {}
  
  protected Void doInBackground(Void... paramVarArgs)
  {
    try
    {
      if (val$fo != null) {
        if (!FlickrPhotoPrivacyDialog.access$1400(this$0))
        {
          FlickrPhotoPrivacyDialog.access$1102(this$0, PhotoInfoManager.getPhotoInfo(val$fo.getPath()));
          FlickrPhotoPrivacyDialog.access$602(this$0, PhotoInfoManager.getAlbums(val$fo.getPath()));
          break label128;
        }
      }
      for (;;)
      {
        result = true;
        break label209;
        if ((!FlickrPhotoPrivacyDialog.access$1400(this$0)) && (ap.aS(FlickrPhotoPrivacyDialog.access$500(this$0))) && (!ap.aT(FlickrPhotoPrivacyDialog.access$500(this$0))))
        {
          FlickrPhotoPrivacyDialog.access$702(this$0, PhotoInfoManager.getAllAlbums(FlickrPhotoPrivacyDialog.access$500(this$0)));
          paramVarArgs = FlickrPhotoPrivacyDialog.access$700(this$0).iterator();
          label128:
          if (paramVarArgs.hasNext())
          {
            Album localAlbum = (Album)paramVarArgs.next();
            if (!FlickrPhotoPrivacyDialog.access$500(this$0).startsWith(path)) {
              break;
            }
            FlickrPhotoPrivacyDialog.access$602(this$0, new ArrayList());
            FlickrPhotoPrivacyDialog.access$600(this$0).add(localAlbum);
          }
        }
      }
      return null;
    }
    catch (PhotoInfoException paramVarArgs)
    {
      paramVarArgs.printStackTrace();
    }
    catch (AlbumException paramVarArgs)
    {
      paramVarArgs.printStackTrace();
    }
  }
  
  protected void onPostExecute(Void paramVoid)
  {
    int i = 0;
    val$scan_progress.setVisibility(8);
    val$album_view.setVisibility(0);
    if (result)
    {
      if (!FlickrPhotoPrivacyDialog.access$1400(this$0))
      {
        if (FlickrPhotoPrivacyDialog.access$1100(this$0) != null)
        {
          localObject = FlickrPhotoPrivacyDialog.access$1200(this$0);
          if (access$1100this$0).description != null) {}
          for (paramVoid = access$1100this$0).description;; paramVoid = "")
          {
            ((EditText)localObject).setText(paramVoid);
            paramVoid = access$1100this$0).tags;
            if (paramVoid == null) {
              break label188;
            }
            int j = paramVoid.size();
            localObject = new StringBuilder();
            if (j < 1) {
              break label188;
            }
            while (i < j)
            {
              ((StringBuilder)localObject).append(((com.gmail.yuyang226.flickr.b.a)paramVoid.get(i)).a());
              if (i != j - 1) {
                ((StringBuilder)localObject).append(" ");
              }
              i += 1;
            }
          }
          FlickrPhotoPrivacyDialog.access$1500(this$0).setText(((StringBuilder)localObject).toString());
        }
        label188:
        FlickrPhotoPrivacyDialog.access$300(this$0, FlickrPhotoPrivacyDialog.access$600(this$0));
        return;
      }
      Object localObject = FlickrPhotoPrivacyDialog.access$1200(this$0);
      if (val$fo.getDescription() != null) {}
      for (paramVoid = val$fo.getDescription();; paramVoid = "")
      {
        ((EditText)localObject).setText(paramVoid);
        return;
      }
    }
    com.estrongs.android.pop.utils.a.a(FlickrPhotoPrivacyDialog.access$1700(this$0), 2131231509);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */