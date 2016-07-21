package com.estrongs.android.pop.app;

import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;

class hu
  implements Preference.OnPreferenceClickListener
{
  hu(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    paramPreference = new Intent(a, AppCheckUpdateList.class);
    a.startActivity(paramPreference);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.hu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */