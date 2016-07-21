package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.fs.d;

class an
  implements Preference.OnPreferenceChangeListener
{
  an(DownloadPreferenceFragment paramDownloadPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    d.a().a(Boolean.valueOf(paramObject.toString()));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */