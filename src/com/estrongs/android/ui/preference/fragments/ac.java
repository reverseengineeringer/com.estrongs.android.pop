package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;

class ac
  implements Preference.OnPreferenceChangeListener
{
  ac(DisplayPreferenceFragment paramDisplayPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramPreference = paramPreference.getKey();
    FexApplication.a().a(paramPreference, paramObject);
    if ("hidden_file".equals(paramPreference)) {
      ad.a(a.getActivity()).a(((Boolean)paramObject).booleanValue(), false);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */