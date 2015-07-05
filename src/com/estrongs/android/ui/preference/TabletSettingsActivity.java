package com.estrongs.android.ui.preference;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceFragment;
import android.preference.PreferenceFragment.OnPreferenceStartFragmentCallback;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.ui.preference.fragments.am;

@SuppressLint({"NewApi"})
public class TabletSettingsActivity
  extends ESActivity
  implements PreferenceFragment.OnPreferenceStartFragmentCallback
{
  private static Preference.OnPreferenceChangeListener f = new u();
  private ViewGroup a;
  private ViewGroup b;
  private TextView c;
  private Handler d;
  private am e;
  
  private void a()
  {
    a.setVisibility(0);
    b.setVisibility(0);
    e = new am();
    getFragmentManager().beginTransaction().replace(2131362654, e).commit();
  }
  
  private void a(CharSequence paramCharSequence)
  {
    if (c != null) {
      c.setText(paramCharSequence);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903226);
    a = ((ViewGroup)findViewById(2131362654));
    b = ((ViewGroup)findViewById(2131362655));
    c = ((TextView)b.findViewById(2131362656));
    d = new Handler();
    a();
    if (cl.b(this))
    {
      int i = getResourcesgetDisplayMetricswidthPixels / 3;
      paramBundle = (LinearLayout.LayoutParams)a.getLayoutParams();
      if (i >= 200) {
        break label168;
      }
      width = 200;
    }
    label168:
    for (weight = 0.0F;; weight = 2.0F)
    {
      a.setLayoutParams(paramBundle);
      paramBundle = (LinearLayout.LayoutParams)b.getLayoutParams();
      weight = 3.0F;
      b.setLayoutParams(paramBundle);
      d.post(new t(this));
      return;
    }
  }
  
  public boolean onPreferenceStartFragment(PreferenceFragment paramPreferenceFragment, Preference paramPreference)
  {
    paramPreferenceFragment = Fragment.instantiate(this, paramPreference.getFragment(), paramPreference.getExtras());
    FragmentTransaction localFragmentTransaction = getFragmentManager().beginTransaction();
    localFragmentTransaction.replace(2131362657, paramPreferenceFragment);
    a(paramPreference.getTitle());
    localFragmentTransaction.commitAllowingStateLoss();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.TabletSettingsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */