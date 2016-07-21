package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.view.utils.RemoteSynchronizer;

class t
  implements Preference.OnPreferenceChangeListener
{
  t(BackupPreferenceFragment paramBackupPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if (!Boolean.valueOf(paramObject.toString()).booleanValue()) {
      RemoteSynchronizer.f();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */