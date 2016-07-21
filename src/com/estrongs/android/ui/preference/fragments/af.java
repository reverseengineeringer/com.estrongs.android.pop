package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.ui.notification.j;

class af
  implements Preference.OnPreferenceChangeListener
{
  af(DisplayPreferenceFragment paramDisplayPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue()) {
      j.a(a.getActivity()).b();
    }
    for (;;)
    {
      return true;
      j.a(a.getActivity()).c();
      j.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */