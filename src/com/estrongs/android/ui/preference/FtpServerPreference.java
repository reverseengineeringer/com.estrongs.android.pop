package com.estrongs.android.ui.preference;

import android.app.Dialog;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESPreferenceActivity;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.bd;
import java.io.File;

public class FtpServerPreference
  extends ESPreferenceActivity
{
  DirChoosePreference a;
  EditTextPreference b;
  Preference c;
  Preference d;
  Preference e;
  CheckBoxPreference f;
  int g = 0;
  private ad h;
  private String i = null;
  private int j = 0;
  private Handler k = new Handler();
  
  private void a()
  {
    a = ((DirChoosePreference)findPreference("ftpsvr_root_dir"));
    f = ((CheckBoxPreference)findPreference("ftpsvr_auto_exit"));
    c = findPreference("ftpsvr_account_change");
    b = ((CustomEditTextPreference)findPreference("ftpsvr_port"));
    d = findPreference("ftpsvr_charset_change");
    e = findPreference("ftpsvr_create_shortcut");
    Object localObject1 = ad.a(this).T();
    if ((localObject1 == null) || (((String)localObject1).length() == 0)) {
      c.setSummary(getText(2131427652) + (String)getText(2131427436));
    }
    for (;;)
    {
      int m = ad.a(this).V();
      b.setSummary(getText(2131427651) + "" + m);
      b.setText("" + m);
      localObject1 = ad.a(this).U();
      DirChoosePreference localDirChoosePreference = a;
      StringBuilder localStringBuilder = new StringBuilder().append(getText(2131427789)).append("");
      Object localObject2;
      if (localObject1 == null)
      {
        localObject2 = "/";
        localDirChoosePreference.setSummary((String)localObject2);
        localDirChoosePreference = a;
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = "/";
        }
        localDirChoosePreference.setText((String)localObject2);
        a.setOnPreferenceChangeListener(new d(this));
        b.setOnPreferenceChangeListener(new h(this));
      }
      try
      {
        localObject1 = com.estrongs.android.ftp.k.a();
        ((com.estrongs.android.ftp.k)localObject1).a(this, new i(this, (com.estrongs.android.ftp.k)localObject1));
        c.setOnPreferenceClickListener(new j(this));
        localObject1 = ad.a(this).W();
        d.setSummary(getText(2131427666) + (String)localObject1);
        d.setOnPreferenceClickListener(new k(this));
        e.setOnPreferenceClickListener(new m(this));
        return;
        c.setSummary(getText(2131427652) + "" + (String)localObject1);
        continue;
        localObject2 = localObject1;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
  
  private boolean a(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {}
    while (!new File(paramString).isDirectory()) {
      return false;
    }
    return true;
  }
  
  private void b()
  {
    if ((i == null) || (i.trim().equals(""))) {
      i = "/sdcard/";
    }
    while (new File(i).mkdirs()) {
      return;
    }
    ag.a(this, 2131427763, 1);
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
    h = ad.a(this);
    if (cl.a(this)) {
      addPreferencesFromResource(2131034116);
    }
    for (;;)
    {
      if ((!bd.f()) && ((str1 == null) || ((!str1.contains("vland")) && (!str1.contains("nj820")))))
      {
        getWindow().setFeatureInt(7, 2130903264);
        ((ImageView)findViewById(2131361853)).setImageDrawable(al.a(this).a(2130838006));
        ((TextView)findViewById(2131361825)).setText(2131427665);
      }
      a();
      return;
      addPreferencesFromResource(2131034115);
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    case 105: 
      return new ct(this).a(2131427399).b(2131427762).b(2131427341, new o(this)).c(2131427342, new n(this)).b();
    }
    Object localObject = new ct(this).a(2131427649).b(2131427339, new f(this)).c(2131427340, new p(this));
    View localView = g.a(this).inflate(2130903197, null);
    localView.findViewById(2131362488).setVisibility(8);
    ((ct)localObject).a(localView);
    localObject = ((ct)localObject).b();
    ((cg)localObject).getWindow().setSoftInputMode(5);
    return (Dialog)localObject;
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
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    try
    {
      Window localWindow = paramDialog.getWindow();
      localWindow.setLayout(localWindow.getWindowManager().getDefaultDisplay().getWidth(), localWindow.getWindowManager().getDefaultDisplay().getHeight());
      switch (paramInt)
      {
      default: 
        return;
      }
      paramDialog.findViewById(2131362491).setVisibility(0);
      paramDialog.findViewById(2131362495).setVisibility(8);
      ((TextView)paramDialog.findViewById(2131362492)).setText(getText(2131427435).toString() + getText(2131428707).toString() + " ");
      ((TextView)paramDialog.findViewById(2131362193)).setText(getText(2131427434).toString() + getText(2131428707).toString() + " ");
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.FtpServerPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */