package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import com.estrongs.android.pop.esclasses.m;

@SuppressLint({"NewApi"})
public class BackupPreferenceFragment
  extends m
{
  private Preference a;
  private Preference b;
  private Handler c = new Handler();
  
  private void a()
  {
    a = findPreference("backupsettings");
    a.setOnPreferenceClickListener(new e(this));
    b = findPreference("restoresettings");
    b.setOnPreferenceClickListener(new l(this));
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)findPreference("enableRemoteSynchronizer");
    if (localCheckBoxPreference != null) {
      localCheckBoxPreference.setOnPreferenceChangeListener(new t(this));
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034121);
    a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.BackupPreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */