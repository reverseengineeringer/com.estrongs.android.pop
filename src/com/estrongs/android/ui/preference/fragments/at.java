package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;

class at
  implements Preference.OnPreferenceChangeListener
{
  at(PasswordPreferenceFragment paramPasswordPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue())
    {
      paramPreference = ad.a(a.getActivity()).G();
      if ((paramPreference == null) || (paramPreference.length() == 0))
      {
        PasswordPreferenceFragment.a(a, 113);
        return false;
      }
      PasswordPreferenceFragment.a(a).setEnabled(true);
      FexApplication.a().e(((Boolean)paramObject).booleanValue());
      return true;
    }
    PasswordPreferenceFragment.b(a, 114);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */