package com.estrongs.android.pop.app;

import android.os.Handler;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;

class gz
  implements Preference.OnPreferenceChangeListener
{
  gz(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    PopPreferenceActivity.b(a).post(new ha(this));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */