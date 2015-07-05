package com.estrongs.android.ui.preference.fragments;

import android.app.Activity;
import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.app.BrowserDownloaderActivity;

class ak
  implements Preference.OnPreferenceChangeListener
{
  ak(DownloadPreferenceFragment paramDownloadPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramPreference = a.getActivity().getPackageManager();
    ComponentName localComponentName = new ComponentName(a.getActivity(), BrowserDownloaderActivity.class);
    if (((Boolean)paramObject).booleanValue())
    {
      paramPreference.setComponentEnabledSetting(localComponentName, 2, 1);
      return true;
    }
    paramPreference.setComponentEnabledSetting(localComponentName, 1, 1);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */