package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.i;

class ag
  implements Preference.OnPreferenceChangeListener
{
  ag(DisplayPreferenceFragment paramDisplayPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramPreference = FileExplorerActivity.X();
    if (paramPreference != null) {
      H.a(null);
    }
    ad.a(a.getActivity()).a(((Boolean)paramObject).booleanValue(), false);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */