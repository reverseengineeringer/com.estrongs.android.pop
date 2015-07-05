package com.estrongs.android.ui.preference.fragments;

import android.os.Handler;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;

class ai
  implements Preference.OnPreferenceChangeListener
{
  ai(DisplayPreferenceFragment paramDisplayPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    DisplayPreferenceFragment.c(a).post(new aj(this));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */