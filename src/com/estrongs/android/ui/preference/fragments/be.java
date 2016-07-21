package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;

class be
  implements Preference.OnPreferenceChangeListener
{
  be(SearchEnginePreferenceFragment paramSearchEnginePreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramPreference = paramPreference.getKey();
    FexApplication.a().a(paramPreference, paramObject);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */