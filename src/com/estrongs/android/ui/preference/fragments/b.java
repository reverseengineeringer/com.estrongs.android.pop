package com.estrongs.android.ui.preference.fragments;

import android.app.Activity;
import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import com.estrongs.android.pop.app.AppCheckUpdateList;

class b
  implements Preference.OnPreferenceClickListener
{
  b(AppPreferenceFragment paramAppPreferenceFragment) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    paramPreference = new Intent(a.getActivity(), AppCheckUpdateList.class);
    a.getActivity().startActivity(paramPreference);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */