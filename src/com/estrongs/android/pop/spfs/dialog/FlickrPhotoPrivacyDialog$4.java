package com.estrongs.android.pop.spfs.dialog;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.bk;
import java.util.List;

class FlickrPhotoPrivacyDialog$4
  implements DialogInterface.OnClickListener
{
  FlickrPhotoPrivacyDialog$4(FlickrPhotoPrivacyDialog paramFlickrPhotoPrivacyDialog, ProgressBar paramProgressBar, SPFileObject paramSPFileObject) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (val$scan_progress.getVisibility() == 0) {
      return;
    }
    if (val$fo != null)
    {
      if ((!val$fo.getName().equals(FlickrPhotoPrivacyDialog.access$1000(this$0).getText().toString())) || (FlickrPhotoPrivacyDialog.access$1100(this$0) == null) || (!access$1100this$0).description.equals(FlickrPhotoPrivacyDialog.access$1200(this$0).getText().toString())))
      {
        FlickrPhotoPrivacyDialog.access$1300(this$0).put("title", FlickrPhotoPrivacyDialog.access$1000(this$0).getText().toString());
        FlickrPhotoPrivacyDialog.access$1300(this$0).put("description", FlickrPhotoPrivacyDialog.access$1200(this$0).getText().toString());
      }
      if ((!FlickrPhotoPrivacyDialog.access$1400(this$0)) && ((FlickrPhotoPrivacyDialog.access$1100(this$0) == null) || (!access$1100this$0).tags.equals(FlickrPhotoPrivacyDialog.access$1500(this$0).getText().toString())))) {
        FlickrPhotoPrivacyDialog.access$1300(this$0).put("tags", FlickrPhotoPrivacyDialog.access$1500(this$0).getText().toString());
      }
      if ((FlickrPhotoPrivacyDialog.access$000(this$0) != null) && (FlickrPhotoPrivacyDialog.access$000(this$0).size() >= 1)) {
        FlickrPhotoPrivacyDialog.access$1300(this$0).put("sets", FlickrPhotoPrivacyDialog.access$000(this$0));
      }
      if ((FlickrPhotoPrivacyDialog.access$100(this$0) != null) && (FlickrPhotoPrivacyDialog.access$100(this$0).size() >= 1)) {
        FlickrPhotoPrivacyDialog.access$1300(this$0).put("sets_delete", FlickrPhotoPrivacyDialog.access$100(this$0));
      }
      if ((FlickrPhotoPrivacyDialog.access$1400(this$0)) || (FlickrPhotoPrivacyDialog.access$200(this$0) == null) || (FlickrPhotoPrivacyDialog.access$200(this$0).size() <= 0)) {
        break label641;
      }
      paramDialogInterface = (Album)FlickrPhotoPrivacyDialog.access$200(this$0).get(0);
      if (bk.a(path)) {
        break label596;
      }
      FlickrPhotoPrivacyDialog.access$1300(this$0).put("albums_selected", access$200this$0).get(0)).path);
      label398:
      if (!FlickrPhotoPrivacyDialog.access$1400(this$0))
      {
        if (!FlickrPhotoPrivacyDialog.access$1600(this$0).isChecked()) {
          break label701;
        }
        FlickrPhotoPrivacyDialog.access$1300(this$0).put("is_public", Boolean.valueOf(false));
        FlickrPhotoPrivacyDialog.access$1300(this$0).put("is_friend", Boolean.valueOf(FlickrPhotoPrivacyDialog.access$800(this$0).isChecked()));
        FlickrPhotoPrivacyDialog.access$1300(this$0).put("is_family", Boolean.valueOf(FlickrPhotoPrivacyDialog.access$900(this$0).isChecked()));
      }
    }
    for (;;)
    {
      this$0.dismiss(false);
      return;
      if (("".equals(FlickrPhotoPrivacyDialog.access$1000(this$0).getText().toString())) && ("".equals(FlickrPhotoPrivacyDialog.access$1200(this$0).getText().toString()))) {
        break;
      }
      FlickrPhotoPrivacyDialog.access$1300(this$0).put("title", FlickrPhotoPrivacyDialog.access$1000(this$0).getText().toString());
      FlickrPhotoPrivacyDialog.access$1300(this$0).put("description", FlickrPhotoPrivacyDialog.access$1200(this$0).getText().toString());
      break;
      label596:
      if (bk.a(name)) {
        break label398;
      }
      FlickrPhotoPrivacyDialog.access$1300(this$0).put("albums_new", access$200this$0).get(0)).name);
      break label398;
      label641:
      if ((FlickrPhotoPrivacyDialog.access$600(this$0) == null) || (FlickrPhotoPrivacyDialog.access$600(this$0).size() <= 0)) {
        break label398;
      }
      FlickrPhotoPrivacyDialog.access$1300(this$0).put("albums_selected", access$600this$0).get(0)).path);
      break label398;
      label701:
      FlickrPhotoPrivacyDialog.access$1300(this$0).put("is_public", Boolean.valueOf(true));
      FlickrPhotoPrivacyDialog.access$1300(this$0).put("is_friend", Boolean.valueOf(false));
      FlickrPhotoPrivacyDialog.access$1300(this$0).put("is_family", Boolean.valueOf(false));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */