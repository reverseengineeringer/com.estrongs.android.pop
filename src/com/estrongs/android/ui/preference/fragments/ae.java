package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.i;

class ae
  implements Preference.OnPreferenceChangeListener
{
  ae(DisplayPreferenceFragment paramDisplayPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramPreference = FileExplorerActivity.J();
    if (paramPreference != null) {
      K.a(null);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */