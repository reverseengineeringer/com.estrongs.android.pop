package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.fs.d;

class hb
  implements Preference.OnPreferenceChangeListener
{
  hb(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    d.a().a(Boolean.valueOf(paramObject.toString()));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.hb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */