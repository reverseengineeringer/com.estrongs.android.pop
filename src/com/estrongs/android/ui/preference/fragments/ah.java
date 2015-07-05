package com.estrongs.android.ui.preference.fragments;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.UsbMonitorActivity;

class ah
  implements Preference.OnPreferenceChangeListener
{
  ah(DisplayPreferenceFragment paramDisplayPreferenceFragment) {}
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramPreference = FexApplication.a().getPackageManager();
    ComponentName localComponentName = new ComponentName(FexApplication.a(), UsbMonitorActivity.class);
    if (((Boolean)paramObject).booleanValue())
    {
      paramPreference.setComponentEnabledSetting(localComponentName, 1, 1);
      return true;
    }
    paramPreference.setComponentEnabledSetting(localComponentName, 2, 1);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */