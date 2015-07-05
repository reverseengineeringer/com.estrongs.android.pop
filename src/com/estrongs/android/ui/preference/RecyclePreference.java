package com.estrongs.android.ui.preference;

import android.app.Dialog;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESPreferenceActivity;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.bd;

public class RecyclePreference
  extends ESPreferenceActivity
{
  private void a()
  {
    ((CheckBoxPreference)findPreference("enable_recycle")).setChecked(ad.a(this).aD());
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    String str2 = Build.MODEL;
    String str1 = str2;
    if (str2 != null) {
      str1 = str2.toLowerCase();
    }
    if ((!bd.f()) && ((str1 == null) || ((!str1.contains("vland")) && (!str1.contains("nj820")))))
    {
      setTheme(2131492887);
      requestWindowFeature(7);
    }
    super.onCreate(paramBundle);
    paramBundle = getResources().getDrawable(2130838042);
    getListView().setDivider(paramBundle);
    getListView().setDividerHeight(paramBundle.getIntrinsicHeight());
    getListView().setCacheColorHint(0);
    getListView().setPadding(0, 0, 0, 0);
    getWindow().setBackgroundDrawableResource(2130838040);
    setTitle(getResources().getString(2131427439));
    addPreferencesFromResource(2131034132);
    if ((!bd.f()) && ((str1 == null) || ((!str1.contains("vland")) && (!str1.contains("nj820")))))
    {
      getWindow().setFeatureInt(7, 2130903264);
      ((ImageView)findViewById(2131361853)).setImageDrawable(al.a(this).a(2130837999));
      ((TextView)findViewById(2131361825)).setText(2131428408);
    }
    a();
  }
  
  public boolean onPreferenceTreeClick(PreferenceScreen paramPreferenceScreen, Preference paramPreference)
  {
    if ((paramPreference instanceof PreferenceScreen))
    {
      PreferenceScreen localPreferenceScreen = (PreferenceScreen)paramPreference;
      Dialog localDialog = localPreferenceScreen.getDialog();
      ListView localListView = new ListView(localPreferenceScreen.getContext());
      Drawable localDrawable = getResources().getDrawable(2130838042);
      localListView.setDivider(localDrawable);
      localListView.setDividerHeight(localDrawable.getIntrinsicHeight());
      localListView.setCacheColorHint(0);
      localListView.setAdapter(localPreferenceScreen.getRootAdapter());
      localListView.setOnItemClickListener(localPreferenceScreen);
      localListView.setBackgroundColor(getResources().getColor(2131230728));
      localDialog.setContentView(localListView);
    }
    return super.onPreferenceTreeClick(paramPreferenceScreen, paramPreference);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.RecyclePreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */