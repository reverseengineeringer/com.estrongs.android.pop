package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.fs.d;

class ho
  implements Preference.OnPreferenceChangeListener
{
  ho(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    d.a().a(Boolean.valueOf(paramObject.toString()));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ho
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */