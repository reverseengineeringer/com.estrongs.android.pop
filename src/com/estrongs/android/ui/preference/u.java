package com.estrongs.android.ui.preference;

import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.RingtonePreference;
import android.text.TextUtils;

final class u
  implements Preference.OnPreferenceChangeListener
{
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramObject = paramObject.toString();
    if ((paramPreference instanceof ListPreference))
    {
      ListPreference localListPreference = (ListPreference)paramPreference;
      int i = localListPreference.findIndexOfValue((String)paramObject);
      if (i >= 0)
      {
        paramObject = localListPreference.getEntries()[i];
        paramPreference.setSummary((CharSequence)paramObject);
      }
    }
    for (;;)
    {
      return true;
      paramObject = null;
      break;
      if ((paramPreference instanceof RingtonePreference))
      {
        if (!TextUtils.isEmpty((CharSequence)paramObject))
        {
          paramObject = RingtoneManager.getRingtone(paramPreference.getContext(), Uri.parse((String)paramObject));
          if (paramObject == null) {
            paramPreference.setSummary(null);
          } else {
            paramPreference.setSummary(((Ringtone)paramObject).getTitle(paramPreference.getContext()));
          }
        }
      }
      else {
        paramPreference.setSummary((CharSequence)paramObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */