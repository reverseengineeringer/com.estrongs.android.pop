package com.estrongs.android.ui.preference;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.preference.Preference;
import android.widget.EditText;
import com.estrongs.android.ftp.k;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.cg;

class f
  implements DialogInterface.OnClickListener
{
  f(FtpServerPreference paramFtpServerPreference) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject = (cg)paramDialogInterface;
    String str = ((EditText)((cg)localObject).findViewById(2131362493)).getText().toString();
    localObject = ((EditText)((cg)localObject).findViewById(2131362494)).getText().toString();
    ad.a(a).g(str, (String)localObject);
    try
    {
      k localk = k.a();
      localk.a(a, new g(this, localk, str, (String)localObject));
      if ((str == null) || (str.length() == 0)) {
        a.c.setSummary(a.getText(2131427652) + (String)a.getText(2131427436));
      }
      for (;;)
      {
        paramDialogInterface.dismiss();
        return;
        a.c.setSummary(a.getText(2131427652) + str);
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */