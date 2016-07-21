package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;

class au
  implements Preference.OnPreferenceChangeListener
{
  au(PasswordPreferenceFragment paramPasswordPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue())
    {
      paramPreference = ad.a(a.getActivity()).H();
      if ((paramPreference == null) || (paramPreference.length() == 0))
      {
        PasswordPreferenceFragment.a(a, 111);
        return false;
      }
      PasswordPreferenceFragment.a(a).setEnabled(true);
      FexApplication.a().d(((Boolean)paramObject).booleanValue());
      return true;
    }
    PasswordPreferenceFragment.b(a, 112);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */