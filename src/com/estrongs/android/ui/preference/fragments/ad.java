package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.ui.notification.i;

class ad
  implements Preference.OnPreferenceChangeListener
{
  ad(DisplayPreferenceFragment paramDisplayPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue()) {
      i.a(a.getActivity()).b();
    }
    for (;;)
    {
      return true;
      i.a(a.getActivity()).c();
      i.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */