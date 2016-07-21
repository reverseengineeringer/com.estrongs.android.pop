package com.estrongs.android.pop.app;

import android.os.Handler;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;

class hi
  implements Preference.OnPreferenceChangeListener
{
  hi(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    PopPreferenceActivity.b(a).post(new hj(this));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.hi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */