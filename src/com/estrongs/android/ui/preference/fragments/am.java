package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import com.estrongs.android.pop.app.PrivacyActivity;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.util.ak;

@SuppressLint({"NewApi"})
public class am
  extends i
{
  @SuppressLint({"NewApi"})
  private void a()
  {
    PreferenceCategory localPreferenceCategory = (PreferenceCategory)findPreference("preference_tools_settings");
    if (z.R) {}
    try
    {
      localPreferenceCategory.removePreference(findPreference("gesture_settings"));
      if (z.T) {}
      try
      {
        localPreferenceCategory.removePreference(findPreference("downloader_settings"));
        if (!z.j) {}
        try
        {
          localPreferenceCategory.removePreference(findPreference("appmanager_preference"));
          if (z.m) {}
          try
          {
            ((PreferenceCategory)findPreference("preference_upgrade_settings_text_category")).removePreference(findPreference("preference_rate"));
            return;
          }
          catch (Exception localException1) {}
        }
        catch (Exception localException2)
        {
          for (;;) {}
        }
      }
      catch (Exception localException3)
      {
        for (;;) {}
      }
    }
    catch (Exception localException4)
    {
      for (;;) {}
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034127);
    paramBundle = findPreference("preference_help");
    if (!z.k) {
      paramBundle.setOnPreferenceClickListener(new an(this));
    }
    for (;;)
    {
      paramBundle = findPreference("preference_display_settings_category");
      onPreferenceTreeClick(getPreferenceScreen(), paramBundle);
      a();
      return;
      PreferenceCategory localPreferenceCategory = (PreferenceCategory)findPreference("preference_upgrade_settings_text_category");
      if ((localPreferenceCategory != null) && (paramBundle != null)) {
        localPreferenceCategory.removePreference(paramBundle);
      }
    }
  }
  
  public boolean onPreferenceTreeClick(PreferenceScreen paramPreferenceScreen, Preference paramPreference)
  {
    boolean bool = super.onPreferenceTreeClick(paramPreferenceScreen, paramPreference);
    if ((bool) || (paramPreference.getKey().equals("preference_help"))) {}
    do
    {
      return bool;
      if (paramPreference.getKey().equals("preference_rate"))
      {
        w.a(getActivity(), "com.estrongs.android.pop", "pname");
        return bool;
      }
    } while (!paramPreference.getKey().equals("preference_privacy"));
    if (ak.d())
    {
      paramPreferenceScreen = new Intent();
      paramPreferenceScreen.setClassName(getActivity().getPackageName(), PrivacyActivity.class.getName());
      getActivity().startActivity(paramPreferenceScreen);
      return bool;
    }
    paramPreferenceScreen = new ct(getActivity());
    paramPreferenceScreen.a(getText(2131427398)).b(getText(2131427796)).a(2131427339, new ap(this));
    paramPreferenceScreen.c();
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */