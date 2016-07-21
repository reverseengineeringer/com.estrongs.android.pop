package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.Preference;
import com.estrongs.android.pop.esclasses.m;
import com.estrongs.android.ui.preference.CustomListPreference;

@SuppressLint({"NewApi"})
public class SearchEnginePreferenceFragment
  extends m
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034130);
    paramBundle = (CustomListPreference)findPreference("search_engine_default");
    String[] arrayOfString1 = getResources().getStringArray(2131492878);
    String[] arrayOfString2 = new String[arrayOfString1.length];
    arrayOfString2[0] = getString(2131232071);
    int i = 1;
    while (i < arrayOfString1.length)
    {
      arrayOfString2[i] = arrayOfString1[i];
      i += 1;
    }
    paramBundle.setEntries(arrayOfString2);
    if ((paramBundle.getValue() == null) || (paramBundle.getValue().equalsIgnoreCase("auto"))) {
      paramBundle.setSummary(getString(2131232071));
    }
    for (;;)
    {
      paramBundle.setOnPreferenceChangeListener(new bd(this, paramBundle));
      paramBundle = findPreference("show_search_engine");
      if (paramBundle != null) {
        paramBundle.setOnPreferenceChangeListener(new be(this));
      }
      return;
      paramBundle.setSummary(paramBundle.getEntry());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.SearchEnginePreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */