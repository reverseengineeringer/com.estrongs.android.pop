package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.n;

@SuppressLint({"NewApi"})
public class AboutPreferenceFragment
  extends i
{
  private ad a;
  
  private void a()
  {
    Object localObject1 = b();
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = "1.x";
    }
    Object localObject3 = "Market";
    int i;
    if ("Market".equalsIgnoreCase("oem"))
    {
      localObject1 = localObject3;
      if (z.b != null) {
        localObject1 = z.b;
      }
      if ("工信部".equalsIgnoreCase(FileExplorerActivity.e)) {
        localObject1 = "ES";
      }
      localObject3 = localObject1;
      if (((String)localObject1).length() > 0) {
        localObject3 = " (" + (String)localObject1 + ")";
      }
      findPreference("preference_version").setSummary(getResources().getText(2131427343) + " " + (String)localObject2 + (String)localObject3);
      localObject1 = findPreference("preference_special_thanks_to_translators");
      localObject2 = getString(2131428379);
      if (z.b == null) {
        break label269;
      }
      i = 1;
      label158:
      if ((i == 0) && (!((String)localObject2).equals("none"))) {
        break label274;
      }
      ((PreferenceScreen)findPreference("preference_about")).removePreference((Preference)localObject1);
    }
    for (;;)
    {
      if (z.m) {}
      try
      {
        ((PreferenceScreen)findPreference("preference_about")).removePreference(findPreference("preference_more_app"));
        return;
      }
      catch (Exception localException) {}
      localObject1 = localObject3;
      if (!"Market".equals("Market")) {
        break;
      }
      localObject1 = localObject3;
      if (FileExplorerActivity.e == null) {
        break;
      }
      localObject1 = localObject3;
      if (FileExplorerActivity.e.length() <= 0) {
        break;
      }
      if (!FileExplorerActivity.e.equals("百度"))
      {
        localObject1 = FileExplorerActivity.e;
        break;
      }
      localObject1 = "ES";
      break;
      label269:
      i = 0;
      break label158;
      label274:
      ((Preference)localObject1).setSummary(((String)localObject2).replaceAll(",", "\n"));
    }
  }
  
  private String b()
  {
    String str = null;
    try
    {
      PackageInfo localPackageInfo = getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 8192);
      if (localPackageInfo != null) {
        str = versionName;
      }
      return str;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject = null;
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034119);
    a = ad.a(getActivity());
    a();
  }
  
  public boolean onPreferenceTreeClick(PreferenceScreen paramPreferenceScreen, Preference paramPreference)
  {
    boolean bool = super.onPreferenceTreeClick(paramPreferenceScreen, paramPreference);
    if ((!bool) && ((!paramPreference.getKey().equals("preference_website")) || (!z.m))) {}
    do
    {
      try
      {
        paramPreference = getString(2131428711);
        paramPreferenceScreen = paramPreference;
        if (!paramPreference.startsWith("http://"))
        {
          paramPreferenceScreen = paramPreference;
          if (!paramPreference.startsWith("https://")) {
            paramPreferenceScreen = "http://" + paramPreference;
          }
        }
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramPreferenceScreen)));
        return bool;
      }
      catch (Exception paramPreferenceScreen) {}
      if (paramPreference.getKey().equals("preference_more_app"))
      {
        w.a(getActivity(), "\"ES APP Group\"", "pub");
        return bool;
      }
    } while (!paramPreference.getKey().equals("preference_feedback"));
    n.a(getActivity());
    return bool;
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.AboutPreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */