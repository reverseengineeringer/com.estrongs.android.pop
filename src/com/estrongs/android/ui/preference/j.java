package com.estrongs.android.ui.preference;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;

class j
  implements Preference.OnPreferenceClickListener
{
  j(FtpServerPreference paramFtpServerPreference) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    a.showDialog(110);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */