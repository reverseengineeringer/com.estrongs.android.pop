package com.estrongs.android.ui.preference;

import android.content.Intent;
import android.preference.Preference;
import com.estrongs.android.ui.preference.fragments.ao;

class t
  implements Runnable
{
  t(TabletSettingsActivity paramTabletSettingsActivity) {}
  
  public void run()
  {
    Object localObject = a.getIntent();
    if (localObject != null)
    {
      localObject = ((Intent)localObject).getStringExtra("category");
      if (localObject != null)
      {
        localObject = TabletSettingsActivity.a(a).findPreference((CharSequence)localObject);
        a.onPreferenceStartFragment(TabletSettingsActivity.a(a), (Preference)localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */