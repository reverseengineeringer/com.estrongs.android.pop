package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.widget.EditText;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.view.ag;

class ay
  implements DialogInterface.OnClickListener
{
  ay(PasswordPreferenceFragment paramPasswordPreferenceFragment, int paramInt) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject = (cg)paramDialogInterface;
    String str = ((EditText)((cg)localObject).findViewById(2131362494)).getText().toString();
    localObject = ((EditText)((cg)localObject).findViewById(2131362496)).getText().toString();
    if ((str == null) || (str.length() == 0)) {
      ag.a(b.getActivity(), 2131427999, 1);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (str.equals(localObject)) {
        break;
      }
      ag.a(b.getActivity(), 2131428000, 1);
    }
    ad.a(b.getActivity()).x(str);
    if (a == 108)
    {
      PasswordPreferenceFragment.c(b).setChecked(true);
      FexApplication.a().c(true);
    }
    for (;;)
    {
      PasswordPreferenceFragment.a(b).setEnabled(true);
      break;
      if (a == 111)
      {
        PasswordPreferenceFragment.d(b).setChecked(true);
        FexApplication.a().d(true);
      }
      else if (a == 113)
      {
        PasswordPreferenceFragment.e(b).setChecked(true);
        FexApplication.a().e(true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */