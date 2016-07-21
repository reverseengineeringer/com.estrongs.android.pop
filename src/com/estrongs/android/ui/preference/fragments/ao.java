package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import com.estrongs.android.pop.app.PrivacyActivity;
import com.estrongs.android.pop.esclasses.m;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.util.an;

@SuppressLint({"NewApi"})
public class ao
  extends m
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
      paramBundle.setOnPreferenceClickListener(new ap(this));
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
      if (paramPreference.getKey().equals("preference_rate")) {
        try
        {
          w.a(getActivity(), "com.estrongs.android.pop", "pname");
          return bool;
        }
        catch (Exception paramPreferenceScreen)
        {
          paramPreferenceScreen.printStackTrace();
          return bool;
        }
      }
    } while (!paramPreference.getKey().equals("preference_privacy"));
    if (an.d())
    {
      paramPreferenceScreen = new Intent();
      paramPreferenceScreen.setClassName(getActivity().getPackageName(), PrivacyActivity.class.getName());
      getActivity().startActivity(paramPreferenceScreen);
      return bool;
    }
    paramPreferenceScreen = new cv(getActivity());
    paramPreferenceScreen.a(getText(2131231714)).b(getText(2131232382)).a(2131231270, new ar(this));
    paramPreferenceScreen.c();
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */