package com.estrongs.android.pop.app.imageviewer;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.estrongs.android.util.bk;

class bs
  implements DialogInterface.OnClickListener
{
  bs(ViewImage21 paramViewImage21, CharSequence[] paramArrayOfCharSequence) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    long l = bk.a(a[paramInt]);
    if ((l > 0L) && (b.q != l))
    {
      b.q = l;
      paramDialogInterface = ViewImage21.u(b).edit();
      paramDialogInterface.putLong("slide_setting_interval", b.q);
      paramDialogInterface.commit();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */