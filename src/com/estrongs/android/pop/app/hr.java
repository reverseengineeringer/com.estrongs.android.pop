package com.estrongs.android.pop.app;

import android.content.Intent;
import android.preference.PreferenceScreen;

class hr
  implements Runnable
{
  hr(PopPreferenceActivity paramPopPreferenceActivity) {}
  
  public void run()
  {
    Object localObject = a.getIntent();
    if (localObject != null)
    {
      localObject = ((Intent)localObject).getStringExtra("category");
      if (localObject != null)
      {
        localObject = (PreferenceScreen)a.findPreference((CharSequence)localObject);
        a.setPreferenceScreen((PreferenceScreen)localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.hr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */