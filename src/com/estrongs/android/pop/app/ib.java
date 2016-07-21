package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.widget.EditText;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.view.ak;

class ib
  implements DialogInterface.OnClickListener
{
  ib(PopPreferenceActivity paramPopPreferenceActivity, int paramInt) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject = (ci)paramDialogInterface;
    String str = ((EditText)((ci)localObject).findViewById(2131625231)).getText().toString();
    localObject = ((EditText)((ci)localObject).findViewById(2131625233)).getText().toString();
    if ((str == null) || (str.length() == 0)) {
      ak.a(b, 2131231803, 1);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (str.equals(localObject)) {
        break;
      }
      ak.a(b, 2131231807, 1);
    }
    ad.a(b).x(str);
    if (a == 108)
    {
      b.f.setChecked(true);
      FexApplication.a().c(true);
    }
    for (;;)
    {
      b.p.setEnabled(true);
      break;
      if (a == 111)
      {
        b.g.setChecked(true);
        FexApplication.a().d(true);
      }
      else if (a == 113)
      {
        b.h.setChecked(true);
        FexApplication.a().e(true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */