package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.widget.EditText;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.view.ag;

class hm
  implements DialogInterface.OnClickListener
{
  hm(PopPreferenceActivity paramPopPreferenceActivity, int paramInt) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject = (cg)paramDialogInterface;
    String str = ((EditText)((cg)localObject).findViewById(2131362494)).getText().toString();
    localObject = ((EditText)((cg)localObject).findViewById(2131362496)).getText().toString();
    if ((str == null) || (str.length() == 0)) {
      ag.a(b, 2131427999, 1);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (str.equals(localObject)) {
        break;
      }
      ag.a(b, 2131428000, 1);
    }
    ad.a(b).x(str);
    if (a == 108)
    {
      b.f.setChecked(true);
      FexApplication.a().c(true);
    }
    for (;;)
    {
      b.r.setEnabled(true);
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
 * Qualified Name:     com.estrongs.android.pop.app.hm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */