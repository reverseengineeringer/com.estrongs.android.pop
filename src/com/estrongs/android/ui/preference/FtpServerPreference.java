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
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.bk;
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
    Object localObject1 = ad.a(this).U();
    if ((localObject1 == null) || (((String)localObject1).length() == 0)) {
      c.setSummary(getText(2131232058) + (String)getText(2131231609));
    }
    for (;;)
    {
      int m = ad.a(this).W();
      b.setSummary(getText(2131232057) + "" + m);
      b.setText("" + m);
      localObject1 = ad.a(this).V();
      DirChoosePreference localDirChoosePreference = a;
      StringBuilder localStringBuilder = new StringBuilder().append(getText(2131231298)).append("");
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
        localObject1 = ad.a(this).X();
        d.setSummary(getText(2131232052) + (String)localObject1);
        d.setOnPreferenceClickListener(new k(this));
        e.setOnPreferenceClickListener(new m(this));
        return;
        c.setSummary(getText(2131232058) + "" + (String)localObject1);
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
    ak.a(this, 2131231915, 1);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    String str2 = Build.MODEL;
    String str1 = str2;
    if (str2 != null) {
      str1 = str2.toLowerCase();
    }
    if ((!bk.f()) && ((str1 == null) || ((!str1.contains("vland")) && (!str1.contains("nj820")))))
    {
      setTheme(2131296641);
      requestWindowFeature(7);
    }
    super.onCreate(paramBundle);
    paramBundle = getResources().getDrawable(2130838413);
    getListView().setDivider(paramBundle);
    getListView().setDividerHeight(paramBundle.getIntrinsicHeight());
    getListView().setCacheColorHint(0);
    getListView().setPadding(0, 0, 0, 0);
    getWindow().setBackgroundDrawableResource(2130838411);
    setTitle(getResources().getString(2131231617));
    h = ad.a(this);
    if (cu.a(this)) {
      addPreferencesFromResource(2131034116);
    }
    for (;;)
    {
      if ((!bk.f()) && ((str1 == null) || ((!str1.contains("vland")) && (!str1.contains("nj820")))))
      {
        getWindow().setFeatureInt(7, 2130903447);
        ((ImageView)findViewById(2131624054)).setImageDrawable(at.a(this).a(2130838343));
        ((TextView)findViewById(2131624055)).setText(2131232089);
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
      return new cv(this).a(2131231719).b(2131231916).b(2131231273, new o(this)).c(2131231269, new n(this)).b();
    }
    Object localObject = new cv(this).a(2131232050).b(2131231270, new f(this)).c(2131231265, new p(this));
    View localView = com.estrongs.android.pop.esclasses.k.a(this).inflate(2130903348, null);
    localView.findViewById(2131625225).setVisibility(8);
    ((cv)localObject).a(localView);
    localObject = ((cv)localObject).b();
    ((ci)localObject).getWindow().setSoftInputMode(5);
    return (Dialog)localObject;
  }
  
  public boolean onPreferenceTreeClick(PreferenceScreen paramPreferenceScreen, Preference paramPreference)
  {
    if ((paramPreference instanceof PreferenceScreen))
    {
      PreferenceScreen localPreferenceScreen = (PreferenceScreen)paramPreference;
      Dialog localDialog = localPreferenceScreen.getDialog();
      ListView localListView = new ListView(localPreferenceScreen.getContext());
      Drawable localDrawable = getResources().getDrawable(2130838413);
      localListView.setDivider(localDrawable);
      localListView.setDividerHeight(localDrawable.getIntrinsicHeight());
      localListView.setCacheColorHint(0);
      localListView.setAdapter(localPreferenceScreen.getRootAdapter());
      localListView.setOnItemClickListener(localPreferenceScreen);
      localListView.setBackgroundColor(getResources().getColor(2131558666));
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
      paramDialog.findViewById(2131625228).setVisibility(0);
      paramDialog.findViewById(2131625232).setVisibility(8);
      ((TextView)paramDialog.findViewById(2131625229)).setText(getText(2131231618).toString() + getText(2131231222).toString() + " ");
      ((TextView)paramDialog.findViewById(2131624779)).setText(getText(2131231614).toString() + getText(2131231222).toString() + " ");
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