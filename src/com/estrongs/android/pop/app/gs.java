package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;

class gs
  implements Preference.OnPreferenceClickListener
{
  gs(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    a.showDialog(107);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */