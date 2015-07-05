package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.PreferenceScreen;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import java.io.File;

@SuppressLint({"NewApi"})
public class DirectoryPreferenceFragment
  extends i
{
  private ad a;
  private EditTextPreference b;
  private EditTextPreference c;
  private EditTextPreference d;
  private String e = null;
  private int f = 0;
  
  private void a()
  {
    new ct(getActivity()).a(2131427399).b(2131427762).b(2131427341, new z(this)).c(2131427342, new y(this)).c();
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
      return;
      if (!new File(e).mkdirs()) {
        break;
      }
      if (f == 0)
      {
        b.setSummary(e);
        b.setText(e);
        a.i(e);
        return;
      }
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
    ag.a(getActivity(), 2131427763, 1);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(2131034123);
    a = ad.a(getActivity());
    paramBundle = a.j("Market");
    b = ((EditTextPreference)findPreference("root_dir"));
    b.setSummary(paramBundle);
    b.setText(paramBundle);
    b.setOnPreferenceChangeListener(new v(this));
    paramBundle = a.y();
    c = ((EditTextPreference)findPreference("bt_dir"));
    if (c != null)
    {
      if (!com.estrongs.android.pop.z.e) {
        break label201;
      }
      c.setSummary(paramBundle);
      c.setText(paramBundle);
      c.setOnPreferenceChangeListener(new w(this));
    }
    for (;;)
    {
      paramBundle = a.z();
      d = ((EditTextPreference)findPreference("download_dir"));
      if (d != null)
      {
        d.setSummary(paramBundle);
        d.setText(paramBundle);
        d.setOnPreferenceChangeListener(new x(this));
      }
      return;
      label201:
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