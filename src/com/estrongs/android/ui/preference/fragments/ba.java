package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.widget.EditText;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.view.ak;

class ba
  implements DialogInterface.OnClickListener
{
  ba(PasswordPreferenceFragment paramPasswordPreferenceFragment, int paramInt) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Object localObject = (ci)paramDialogInterface;
    String str = ((EditText)((ci)localObject).findViewById(2131625231)).getText().toString();
    localObject = ((EditText)((ci)localObject).findViewById(2131625233)).getText().toString();
    if ((str == null) || (str.length() == 0)) {
      ak.a(b.getActivity(), 2131231803, 1);
    }
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (str.equals(localObject)) {
        break;
      }
      ak.a(b.getActivity(), 2131231807, 1);
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
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */