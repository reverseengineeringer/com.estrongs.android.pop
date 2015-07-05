package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.am;
import com.estrongs.fs.a.b;

class ac
  implements Preference.OnPreferenceChangeListener
{
  ac(DisplayPreferenceFragment paramDisplayPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    DisplayPreferenceFragment.b(a).c(Boolean.valueOf(paramObject.toString()).booleanValue());
    paramPreference = am.bF(DisplayPreferenceFragment.b(a).j("Market")) + "*";
    b.a().a(paramPreference);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */