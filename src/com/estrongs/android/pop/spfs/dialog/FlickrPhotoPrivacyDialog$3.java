package com.estrongs.android.pop.spfs.dialog;

import android.widget.CheckBox;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;

class FlickrPhotoPrivacyDialog$3
  implements RadioGroup.OnCheckedChangeListener
{
  FlickrPhotoPrivacyDialog$3(FlickrPhotoPrivacyDialog paramFlickrPhotoPrivacyDialog) {}
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramRadioGroup.getCheckedRadioButtonId() == 2131362328)
    {
      FlickrPhotoPrivacyDialog.access$800(this$0).setEnabled(true);
      FlickrPhotoPrivacyDialog.access$900(this$0).setEnabled(true);
    }
    while (paramRadioGroup.getCheckedRadioButtonId() != 2131362331) {
      return;
    }
    FlickrPhotoPrivacyDialog.access$800(this$0).setEnabled(false);
    FlickrPhotoPrivacyDialog.access$900(this$0).setEnabled(false);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */