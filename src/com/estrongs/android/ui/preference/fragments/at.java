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

class at
  implements DialogInterface.OnClickListener
{
  at(PasswordPreferenceFragment paramPasswordPreferenceFragment, int paramInt) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = ((EditText)((ci)paramDialogInterface).findViewById(2131625231)).getText().toString();
    String str2 = ad.a(b.getActivity()).H();
    if ((str1 == null) || (str1.length() == 0) || (!str1.equals(str2))) {
      ak.a(b.getActivity(), 2131231784, 1);
    }
    label212:
    for (;;)
    {
      paramDialogInterface.dismiss();
      return;
      if (a == 109)
      {
        PasswordPreferenceFragment.c(b).setChecked(false);
        FexApplication.a().c(false);
      }
      for (;;)
      {
        if ((PasswordPreferenceFragment.c(b).isChecked()) || (PasswordPreferenceFragment.d(b).isChecked()) || (PasswordPreferenceFragment.e(b).isChecked())) {
          break label212;
        }
        PasswordPreferenceFragment.a(b).setEnabled(false);
        break;
        if (a == 112)
        {
          PasswordPreferenceFragment.d(b).setChecked(false);
          FexApplication.a().d(false);
        }
        else if (a == 114)
        {
          PasswordPreferenceFragment.e(b).setChecked(false);
          FexApplication.a().e(false);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */