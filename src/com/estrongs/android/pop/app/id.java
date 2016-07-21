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

class id
  implements DialogInterface.OnClickListener
{
  id(PopPreferenceActivity paramPopPreferenceActivity, int paramInt) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = ((EditText)((ci)paramDialogInterface).findViewById(2131625231)).getText().toString();
    String str2 = ad.a(b).H();
    if ((str1 == null) || (str1.length() == 0) || (!str1.equals(str2))) {
      ak.a(b, 2131231784, 1);
    }
    label206:
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (a == 109)
      {
        b.f.setChecked(false);
        FexApplication.a().c(false);
      }
      for (;;)
      {
        if ((b.f.isChecked()) || (b.g.isChecked()) || (b.h.isChecked())) {
          break label206;
        }
        b.p.setEnabled(false);
        break;
        if (a == 112)
        {
          b.g.setChecked(false);
          FexApplication.a().d(false);
        }
        else if (a == 114)
        {
          b.h.setChecked(false);
          FexApplication.a().e(false);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.id
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */