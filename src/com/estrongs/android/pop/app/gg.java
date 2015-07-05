package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;

class gg
  implements Preference.OnPreferenceChangeListener
{
  gg(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramPreference = paramPreference.getKey();
    FexApplication.a().a(paramPreference, paramObject);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */