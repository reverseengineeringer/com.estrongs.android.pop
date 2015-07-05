package com.estrongs.android.ui.preference.fragments;

import android.content.Intent;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;

class be
  implements Preference.OnPreferenceClickListener
{
  be(WindowPreferenceFragment paramWindowPreferenceFragment) {}
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    a.startActivity(new Intent("com.estrongs.action.DEFAULT_OPEN_WINDOW_LIST"));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */