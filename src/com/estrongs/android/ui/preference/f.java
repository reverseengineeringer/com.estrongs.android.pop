package com.estrongs.android.ui.preference;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.preference.Preference;
import android.widget.EditText;
import com.estrongs.android.ftp.k;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.ci;

class f
  implements DialogInterface.OnClickListener
{
  f(FtpServerPreference paramFtpServerPreference) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject = (ci)paramDialogInterface;
    String str = ((EditText)((ci)localObject).findViewById(2131625230)).getText().toString();
    localObject = ((EditText)((ci)localObject).findViewById(2131625231)).getText().toString();
    ad.a(a).g(str, (String)localObject);
    try
    {
      k localk = k.a();
      localk.a(a, new g(this, localk, str, (String)localObject));
      if ((str == null) || (str.length() == 0)) {
        a.c.setSummary(a.getText(2131232058) + (String)a.getText(2131231609));
      }
      for (;;)
      {
        paramDialogInterface.dismiss();
        return;
        a.c.setSummary(a.getText(2131232058) + str);
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