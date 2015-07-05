package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.i;

public class RecyclePreferenceFragment
  extends i
{
  @SuppressLint({"NewApi"})
  private void a()
  {
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)findPreference("enable_recycle");
    localCheckBoxPreference.setChecked(ad.a(getActivity()).aD());
    localCheckBoxPreference.setOnPreferenceChangeListener(new ba(this));
  }
  
  @SuppressLint({"NewApi"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034132);
    a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.RecyclePreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */