package com.estrongs.android.ui.preference.fragments;

import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.estrongs.android.pop.app.DefaultWindowSetting;

class bg
  implements Preference.OnPreferenceClickListener
{
  bg(WindowPreferenceFragment paramWindowPreferenceFragment) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    paramPreference = new Intent(a.getActivity(), DefaultWindowSetting.class);
    a.startActivity(paramPreference);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */