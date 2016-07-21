package com.estrongs.android.pop.app;

import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;

class hq
  implements Preference.OnPreferenceClickListener
{
  hq(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    paramPreference = new Intent(a, DefaultWindowSetting.class);
    a.startActivity(paramPreference);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.hq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */