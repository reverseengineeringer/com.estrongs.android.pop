package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;

class aq
  implements Preference.OnPreferenceChangeListener
{
  aq(PasswordPreferenceFragment paramPasswordPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if (((Boolean)paramObject).booleanValue())
    {
      paramPreference = ad.a(a.getActivity()).G();
      if ((paramPreference == null) || (paramPreference.length() == 0))
      {
        PasswordPreferenceFragment.a(a, 108);
        return false;
      }
      PasswordPreferenceFragment.a(a).setEnabled(true);
      FexApplication.a().c(((Boolean)paramObject).booleanValue());
      return true;
    }
    PasswordPreferenceFragment.b(a, 109);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */