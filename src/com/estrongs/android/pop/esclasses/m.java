package com.estrongs.android.pop.esclasses;

import android.annotation.SuppressLint;
import android.preference.PreferenceFragment;

@SuppressLint({"NewApi"})
public class m
  extends PreferenceFragment
{
  public void addPreferencesFromResource(int paramInt)
  {
    super.addPreferencesFromResource(paramInt);
    new n(getActivity()).a(paramInt, getPreferenceScreen());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.esclasses.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */