package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.view.ag;
import java.io.File;

@SuppressLint({"NewApi"})
public class AppPreferenceFragment
  extends i
{
  private ad a;
  private EditTextPreference b;
  private String c = null;
  private int d = 0;
  
  private void a()
  {
    if (z.j)
    {
      String str = a.x();
      b = ((EditTextPreference)findPreference("app_backup_dir"));
      b.setSummary(str);
      b.setText(str);
      b.setOnPreferenceChangeListener(new a(this));
      if (!a.j())
      {
        findPreference("backup_app_cache").setEnabled(false);
        findPreference("root_auto_install").setEnabled(false);
      }
      if (cc.a()) {}
    }
    PreferenceCategory localPreferenceCategory;
    PreferenceScreen localPreferenceScreen;
    do
    {
      try
      {
        ((PreferenceScreen)findPreference("app_pref_app")).removePreference(findPreference("app_check_update"));
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      localPreferenceCategory = (PreferenceCategory)findPreference("preference_tools_settings");
      localPreferenceScreen = (PreferenceScreen)findPreference("appmanager_preference");
    } while ((localPreferenceCategory == null) || (localPreferenceScreen == null));
    localPreferenceCategory.removePreference(localPreferenceScreen);
  }
  
  private void b()
  {
    new ct(getActivity()).a(2131427399).b(2131427762).b(2131427341, new c(this)).c(2131427342, new b(this)).c();
  }
  
  private void c()
  {
    if ((c == null) || (c.trim().equals("")))
    {
      c = "/sdcard/";
      return;
    }
    if (new File(c).mkdirs())
    {
      b.setSummary(c);
      b.setText(c);
      a.s(c);
      return;
    }
    ag.a(getActivity(), 2131427763, 1);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034120);
    a = ad.a(getActivity());
    a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.AppPreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */