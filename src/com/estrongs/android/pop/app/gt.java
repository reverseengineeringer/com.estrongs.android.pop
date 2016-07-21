package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;

class gt
  implements Preference.OnPreferenceChangeListener
{
  gt(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramPreference = paramPreference.getKey();
    FexApplication.a().a(paramPreference, paramObject);
    if ("hidden_file".equals(paramPreference)) {
      ad.a(a).a(((Boolean)paramObject).booleanValue(), false);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */