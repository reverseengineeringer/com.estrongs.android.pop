package com.estrongs.android.pop.app;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.ad;

class bt
  implements Preference.OnPreferenceChangeListener
{
  bt(ESNetSettingActivity paramESNetSettingActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    a.b.setChecked(true);
    a.c.setChecked(false);
    ad.a(a).k(false);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */