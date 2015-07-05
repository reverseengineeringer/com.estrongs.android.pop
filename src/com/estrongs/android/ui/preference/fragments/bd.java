package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.estrongs.android.ui.dialog.kf;

class bd
  implements Preference.OnPreferenceClickListener
{
  bd(UpgradePreferenceFragment paramUpgradePreferenceFragment) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    new kf(a.getActivity(), 1, "http://update.estrongs.com/up?id=1").b();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */