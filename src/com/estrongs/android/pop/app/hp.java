package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;

class hp
  implements Preference.OnPreferenceChangeListener
{
  hp(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    PopPreferenceActivity.c(a).onPreferenceChange(paramPreference, paramObject);
    a.finish();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.hp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */