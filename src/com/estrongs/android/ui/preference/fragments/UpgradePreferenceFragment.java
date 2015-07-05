package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import com.estrongs.android.pop.esclasses.e;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.pop.z;

public class UpgradePreferenceFragment
  extends i
{
  private CheckBoxPreference a;
  private Preference b;
  private CheckBoxPreference c;
  
  @SuppressLint({"NewApi"})
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034130);
    b = findPreference("upgrade_check");
    b.setOnPreferenceClickListener(new bd(this));
    if (z.y)
    {
      paramBundle = (PreferenceScreen)findPreference("update_preference");
      c = ((CheckBoxPreference)findPreference("upgrade_auto_check"));
      if ((paramBundle != null) && (c != null)) {
        paramBundle.removePreference(c);
      }
    }
    a = ((CheckBoxPreference)findPreference("send_statistics"));
    if ((a != null) && ("CN".equalsIgnoreCase(e.a)) && (z.z))
    {
      a.setTitle("统计");
      a.setSummary("发送统计数据");
    }
    do
    {
      return;
      paramBundle = getPreferenceScreen();
    } while ((paramBundle == null) || (a == null));
    paramBundle.removePreference(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.UpgradePreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */