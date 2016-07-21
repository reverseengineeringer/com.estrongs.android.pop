package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import com.estrongs.android.pop.esclasses.m;
import com.estrongs.android.pop.esclasses.p;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.preference.ListPreference;
import java.util.Arrays;
import java.util.List;

@SuppressLint({"NewApi"})
public class DisplayPreferenceFragment
  extends m
{
  private com.estrongs.android.pop.ad a;
  private CheckBoxPreference b;
  private CheckBoxPreference c;
  private Handler d = new Handler();
  private Preference.OnPreferenceChangeListener e;
  
  private void a(String paramString)
  {
    paramString = findPreference(paramString);
    if (paramString != null) {
      paramString.setOnPreferenceChangeListener(e);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034124);
    a = com.estrongs.android.pop.ad.a(getActivity());
    a.an();
    a.al();
    e = new ac(this);
    paramBundle = (CheckBoxPreference)findPreference("use_xlarge_layout");
    if (paramBundle != null)
    {
      if ((!p.a) || (z.O)) {
        break label465;
      }
      paramBundle.setChecked(a.aY());
      paramBundle.setOnPreferenceChangeListener(new ad(this));
    }
    for (;;)
    {
      paramBundle = (CheckBoxPreference)findPreference("show_pcs_drive");
      label137:
      Object localObject1;
      Object localObject2;
      Object localObject3;
      if (paramBundle != null)
      {
        if ((cl.a()) && (z.N)) {
          paramBundle.setOnPreferenceChangeListener(new ae(this));
        }
      }
      else
      {
        localObject1 = (CheckBoxPreference)findPreference("show_sdcard_notification");
        if (localObject1 != null) {
          ((CheckBoxPreference)localObject1).setOnPreferenceChangeListener(new af(this));
        }
        localObject1 = (CheckBoxPreference)findPreference("hidden_file");
        if (localObject1 != null) {
          ((CheckBoxPreference)localObject1).setOnPreferenceChangeListener(new ag(this));
        }
        b = ((CheckBoxPreference)findPreference("show_select_button"));
        if (b != null) {
          b.setChecked(a.al());
        }
        c = ((CheckBoxPreference)findPreference("show_windows_button"));
        if (c != null) {
          c.setChecked(a.an());
        }
        localObject1 = (CheckBoxPreference)findPreference("show_disk_usage");
        if (localObject1 != null) {
          ((CheckBoxPreference)localObject1).setChecked(a.O());
        }
        localObject1 = (CheckBoxPreference)findPreference("history_dir_only");
        if (localObject1 != null) {
          ((CheckBoxPreference)localObject1).setOnPreferenceChangeListener(new ah(this));
        }
        localObject1 = (CheckBoxPreference)findPreference("show_disk_remain");
        if (localObject1 != null) {
          ((CheckBoxPreference)localObject1).setChecked(a.Q());
        }
        localObject2 = (CheckBoxPreference)findPreference("show_usb_prompt");
        if (localObject2 != null)
        {
          ((CheckBoxPreference)localObject2).setChecked(a.R());
          ((CheckBoxPreference)localObject2).setOnPreferenceChangeListener(new aj(this));
        }
        if (com.estrongs.android.pop.ac.a() < 12) {
          localObject3 = (PreferenceCategory)findPreference("others");
        }
      }
      try
      {
        ((PreferenceCategory)localObject3).removePreference((Preference)localObject2);
        localObject2 = (ListPreference)findPreference("language_setting");
        localObject3 = getResources().getStringArray(2131492874);
        String[] arrayOfString = new String[localObject3.length];
        arrayOfString[0] = getString(2131232071);
        int i = 1;
        for (;;)
        {
          if (i < localObject3.length)
          {
            arrayOfString[i] = localObject3[i];
            i += 1;
            continue;
            label465:
            ((PreferenceCategory)findPreference("others")).removePreference(paramBundle);
            break;
            localObject1 = (PreferenceCategory)findPreference("file");
            try
            {
              getPreferenceScreen().removePreference((Preference)localObject1);
            }
            catch (Exception localException1) {}
            break label137;
          }
        }
        ((ListPreference)localObject2).a(arrayOfString);
        i = Arrays.asList(getResources().getStringArray(2131492875)).indexOf(com.estrongs.android.pop.ad.a(getActivity()).C());
        if (i >= 0) {
          ((ListPreference)localObject2).setSummary(arrayOfString[i]);
        }
        ((ListPreference)localObject2).setOnPreferenceChangeListener(new ak(this));
        if (!z.Q) {}
      }
      catch (Exception localException3)
      {
        try
        {
          for (;;)
          {
            getPreferenceScreen().removePreference((Preference)localObject2);
            if (z.aj) {}
            try
            {
              getPreferenceScreen().removePreference(localException1);
              if (z.W) {}
              try
              {
                getPreferenceScreen().removePreference(paramBundle);
                paramBundle = findPreference("scroll_thumb");
                ((PreferenceCategory)findPreference("others")).removePreference(paramBundle);
                a("thumbnail");
                a("hidden_file");
                a("show_select_button");
                a("show_windows_button");
                a("toolbar_setting_show_name");
                a("scroll_thumb");
                a("sdcard_size");
                a("show_homepage_message");
                return;
                localException3 = localException3;
              }
              catch (Exception paramBundle)
              {
                for (;;) {}
              }
            }
            catch (Exception localException2)
            {
              for (;;) {}
            }
          }
        }
        catch (Exception localException4)
        {
          for (;;) {}
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.DisplayPreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */