package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.PreferenceScreen;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.m;
import com.estrongs.android.pop.view.a;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.view.ak;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import java.io.File;

@SuppressLint({"NewApi"})
public class DirectoryPreferenceFragment
  extends m
{
  private ad a;
  private EditTextPreference b;
  private EditTextPreference c;
  private EditTextPreference d;
  private String e = null;
  private int f = 0;
  
  private void a()
  {
    new cv(getActivity()).a(2131231719).b(2131231916).b(2131231273, new ab(this)).c(2131231269, new aa(this)).c();
  }
  
  private boolean a(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return false;
    }
    try
    {
      boolean bool = d.a().b(paramString);
      return bool;
    }
    catch (FileSystemException paramString)
    {
      paramString.printStackTrace();
    }
    return false;
  }
  
  private void b()
  {
    if ((e == null) || (e.trim().equals(""))) {
      e = "/sdcard/";
    }
    do
    {
      do
      {
        return;
        if (!new File(e).mkdirs()) {
          break label193;
        }
        if (f != 0) {
          break;
        }
      } while (a.a == "TianYu");
      b.setSummary(e);
      b.setText(e);
      a.i(e);
      return;
      if (f == 2)
      {
        if (c != null)
        {
          c.setSummary(e);
          c.setText(e);
        }
        a.t(e);
        return;
      }
    } while (f != 3);
    if (d != null)
    {
      d.setSummary(e);
      d.setText(e);
    }
    a.t(e);
    return;
    label193:
    ak.a(getActivity(), 2131231915, 1);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034123);
    a = ad.a(getActivity());
    paramBundle = a.j(a.a);
    if (a.a != "TianYu")
    {
      b = ((EditTextPreference)findPreference("root_dir"));
      b.setSummary(paramBundle);
      b.setText(paramBundle);
      b.setOnPreferenceChangeListener(new x(this));
    }
    paramBundle = a.z();
    c = ((EditTextPreference)findPreference("bt_dir"));
    if (c != null)
    {
      if (!com.estrongs.android.pop.z.e) {
        break label210;
      }
      c.setSummary(paramBundle);
      c.setText(paramBundle);
      c.setOnPreferenceChangeListener(new y(this));
    }
    for (;;)
    {
      paramBundle = a.A();
      d = ((EditTextPreference)findPreference("download_dir"));
      if (d != null)
      {
        d.setSummary(paramBundle);
        d.setText(paramBundle);
        d.setOnPreferenceChangeListener(new z(this));
      }
      return;
      label210:
      paramBundle = getPreferenceScreen();
      if (paramBundle != null) {
        paramBundle.removePreference(c);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.fragments.DirectoryPreferenceFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */