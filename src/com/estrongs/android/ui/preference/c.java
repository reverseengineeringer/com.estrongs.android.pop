package com.estrongs.android.ui.preference;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.estrongs.android.widget.f;
import com.estrongs.fs.h;

class c
  implements DialogInterface.OnClickListener
{
  c(DirChoosePreference paramDirChoosePreference, f paramf) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.a = a.e().getAbsolutePath();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */