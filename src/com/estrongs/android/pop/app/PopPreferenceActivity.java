package com.estrongs.android.pop.app;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESPreferenceActivity;
import com.estrongs.android.pop.esclasses.e;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.preference.CustomListPreference;
import com.estrongs.android.ui.preference.ListPreference;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.bd;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import java.io.File;
import java.util.Arrays;
import java.util.List;

public final class PopPreferenceActivity
  extends ESPreferenceActivity
{
  private static int E = 0;
  static boolean a = false;
  public static String u = "www.estrongs.com";
  private al A;
  private String B = null;
  private int C = 0;
  private Handler D = new Handler();
  ad b;
  EditTextPreference c;
  EditTextPreference d;
  EditTextPreference e;
  CheckBoxPreference f;
  CheckBoxPreference g;
  CheckBoxPreference h;
  CheckBoxPreference i;
  CheckBoxPreference j;
  CheckBoxPreference k;
  CheckBoxPreference l;
  CheckBoxPreference m;
  CheckBoxPreference n;
  Preference o;
  Preference p;
  Preference q;
  Preference r;
  Preference s;
  Preference t;
  private Preference v;
  private Preference w;
  private Preference x;
  private EditTextPreference y = null;
  private Preference.OnPreferenceChangeListener z;
  
  private void a()
  {
    PreferenceScreen localPreferenceScreen = (PreferenceScreen)findPreference("preference_display_settings_category");
    if (z.Q) {}
    try
    {
      localPreferenceScreen.removePreference(findPreference("language_setting"));
      PreferenceCategory localPreferenceCategory = (PreferenceCategory)findPreference("preference_tools_settings");
      if (z.R) {}
      try
      {
        localPreferenceCategory.removePreference(findPreference("gesture_settings"));
        if (z.T) {}
        try
        {
          localPreferenceCategory.removePreference(findPreference("downloader_settings"));
          if (z.Z) {}
          try
          {
            ((PreferenceScreen)findPreference("preference_net_settings_category")).removePreference(findPreference("hided_dirfiles_passwd_enable"));
            if (z.C) {}
            try
            {
              ((PreferenceScreen)findPreference("appmanager_preference")).removePreference(findPreference("app_root_enhancement"));
              if (z.m) {}
              try
              {
                ((PreferenceScreen)findPreference("preference_about")).removePreference(findPreference("preference_more_app"));
                ((PreferenceCategory)findPreference("preference_upgrade_settings_text_category")).removePreference(findPreference("preference_rate"));
                if (z.aj) {}
                try
                {
                  localPreferenceScreen.removePreference(findPreference("show_disk_remain"));
                  if (z.W) {}
                  try
                  {
                    localPreferenceScreen.removePreference(findPreference("show_pcs_drive"));
                    return;
                  }
                  catch (Exception localException1) {}
                }
                catch (Exception localException2)
                {
                  for (;;) {}
                }
              }
              catch (Exception localException3)
              {
                for (;;) {}
              }
            }
            catch (Exception localException4)
            {
              for (;;) {}
            }
          }
          catch (Exception localException5)
          {
            for (;;) {}
          }
        }
        catch (Exception localException6)
        {
          for (;;) {}
        }
      }
      catch (Exception localException8)
      {
        for (;;) {}
      }
    }
    catch (Exception localException7)
    {
      for (;;) {}
    }
  }
  
  private void a(String paramString)
  {
    paramString = findPreference(paramString);
    if (paramString != null) {
      paramString.setOnPreferenceChangeListener(z);
    }
  }
  
  private void b()
  {
    Object localObject;
    if (z.j)
    {
      localObject = b.x();
      y = ((EditTextPreference)findPreference("app_backup_dir"));
      y.setSummary((CharSequence)localObject);
      y.setText((String)localObject);
      y.setOnPreferenceChangeListener(new he(this));
      if (!ad.a(this).j())
      {
        findPreference("backup_app_cache").setEnabled(false);
        findPreference("root_auto_install").setEnabled(false);
      }
      localObject = (PreferenceScreen)findPreference("appmanager_preference");
      if ((localObject != null) && (!cc.a())) {
        ((PreferenceScreen)localObject).removePreference(findPreference("app_check_update"));
      }
    }
    PreferenceScreen localPreferenceScreen;
    do
    {
      return;
      localObject = (PreferenceCategory)findPreference("preference_tools_settings");
      localPreferenceScreen = (PreferenceScreen)findPreference("appmanager_preference");
    } while ((localObject == null) || (localPreferenceScreen == null));
    ((PreferenceCategory)localObject).removePreference(localPreferenceScreen);
  }
  
  private boolean b(String paramString)
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
  
  private void c()
  {
    if (FileExplorerActivity.J() == null) {
      return;
    }
    showDialog(102);
    FileExplorerActivity.J().a(true, D, new hf(this));
  }
  
  private void d()
  {
    if ((B == null) || (B.trim().equals(""))) {
      B = "/sdcard/";
    }
    do
    {
      return;
      if (!new File(B).mkdirs()) {
        break;
      }
      if (C == 0)
      {
        c.setSummary(B);
        c.setText(B);
        b.i(B);
        return;
      }
      if (C == 1)
      {
        y.setSummary(B);
        y.setText(B);
        b.s(B);
        return;
      }
      if (C == 2)
      {
        if (d != null)
        {
          d.setSummary(B);
          d.setText(B);
        }
        b.t(B);
        return;
      }
    } while (C != 3);
    if (e != null)
    {
      e.setSummary(B);
      e.setText(B);
    }
    b.t(B);
    return;
    ag.a(this, 2131427763, 1);
  }
  
  private void e()
  {
    s = findPreference("backupsettings");
    s.setOnPreferenceClickListener(new hp(this));
    t = findPreference("restoresettings");
    t.setOnPreferenceClickListener(new hw(this));
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)findPreference("enableRemoteSynchronizer");
    if (localCheckBoxPreference != null) {
      localCheckBoxPreference.setOnPreferenceChangeListener(new ie(this));
    }
  }
  
  private String f()
  {
    String str = null;
    try
    {
      PackageInfo localPackageInfo = getPackageManager().getPackageInfo(getPackageName(), 8192);
      if (localPackageInfo != null) {
        str = versionName;
      }
      return str;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject = null;
      }
    }
  }
  
  public void onContentChanged()
  {
    super.onContentChanged();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    int i2 = 1;
    Object localObject2 = Build.MODEL;
    Object localObject1 = localObject2;
    if (localObject2 != null) {
      localObject1 = ((String)localObject2).toLowerCase();
    }
    if ((!bd.f()) && ((localObject1 == null) || ((!((String)localObject1).contains("vland")) && (!((String)localObject1).contains("nj820")))))
    {
      setTheme(2131492887);
      requestWindowFeature(7);
    }
    super.onCreate(paramBundle);
    A = al.a(this);
    paramBundle = A.a(2130838042);
    getListView().setDivider(paramBundle);
    getListView().setDividerHeight(paramBundle.getIntrinsicHeight());
    getListView().setCacheColorHint(0);
    getListView().setPadding(0, 0, 0, 0);
    getWindow().setBackgroundDrawableResource(2130838040);
    setTitle(getResources().getString(2131427439));
    b = ad.a(this);
    b.am();
    b.ak();
    addPreferencesFromResource(2131034117);
    if ((!bd.f()) && ((localObject1 == null) || ((!((String)localObject1).contains("vland")) && (!((String)localObject1).contains("nj820")))))
    {
      getWindow().setFeatureInt(7, 2130903264);
      ((ImageView)findViewById(2131361853)).setImageDrawable(A.a(2130837639));
      ((TextView)findViewById(2131361825)).setText(2131427439);
    }
    z = new gg(this);
    paramBundle = b.j("Market");
    c = ((EditTextPreference)findPreference("root_dir"));
    c.setSummary(paramBundle);
    c.setText(paramBundle);
    c.setOnPreferenceChangeListener(new gt(this));
    ((CheckBoxPreference)findPreference("show_sdcard_notification")).setOnPreferenceChangeListener(new hg(this));
    o = findPreference("cache");
    o.setOnPreferenceClickListener(new id(this));
    p = findPreference("upgrade_check");
    p.setOnPreferenceClickListener(new if(this));
    if (z.y)
    {
      paramBundle = (PreferenceScreen)findPreference("update_preference");
      k = ((CheckBoxPreference)findPreference("upgrade_auto_check"));
      if ((paramBundle != null) && (k != null)) {
        paramBundle.removePreference(k);
      }
    }
    l = ((CheckBoxPreference)findPreference("send_statistics"));
    if ((l != null) && ("CN".equalsIgnoreCase(e.a)) && (z.z))
    {
      l.setTitle("统计");
      l.setSummary("发送统计数据");
      q = findPreference("clean_prefer");
      if (q != null) {
        q.setOnPreferenceClickListener(new ig(this));
      }
      paramBundle = b.y();
      d = ((EditTextPreference)findPreference("bt_dir"));
      if (d != null)
      {
        if (!z.e) {
          break label792;
        }
        d.setSummary(paramBundle);
        d.setText(paramBundle);
        d.setOnPreferenceChangeListener(new ih(this));
      }
    }
    for (;;)
    {
      paramBundle = b.z();
      e = ((EditTextPreference)findPreference("download_dir"));
      if (e != null)
      {
        e.setSummary(paramBundle);
        e.setText(paramBundle);
        e.setOnPreferenceChangeListener(new ii(this));
      }
      v = findPreference("preference_help");
      paramBundle = (CustomListPreference)findPreference("search_engine_default");
      localObject1 = getResources().getStringArray(2131165198);
      localObject2 = new String[localObject1.length];
      localObject2[0] = getString(2131427988);
      i1 = 1;
      while (i1 < localObject1.length)
      {
        localObject2[i1] = localObject1[i1];
        i1 += 1;
      }
      paramBundle = (PreferenceScreen)findPreference("update_preference");
      if ((paramBundle == null) || (l == null)) {
        break;
      }
      paramBundle.removePreference(l);
      break;
      label792:
      paramBundle = (PreferenceScreen)findPreference("preference_directory_settings_category");
      if (paramBundle != null) {
        paramBundle.removePreference(d);
      }
    }
    paramBundle.setEntries((CharSequence[])localObject2);
    if ((paramBundle.getValue() == null) || (paramBundle.getValue().equalsIgnoreCase("auto")))
    {
      paramBundle.setSummary(getString(2131427988));
      paramBundle.setOnPreferenceChangeListener(new ij(this, paramBundle));
      if (z.k) {
        break label1742;
      }
      v.setOnPreferenceClickListener(new gh(this));
      label890:
      w = findPreference("preference_privacy");
      w.setOnPreferenceClickListener(new gj(this));
      x = findPreference("preference_rate");
      x.setOnPreferenceClickListener(new gl(this));
      paramBundle = f();
      localObject1 = paramBundle;
      if (paramBundle == null) {
        localObject1 = "1.x";
      }
      localObject2 = "Market";
      if (!"Market".equalsIgnoreCase("oem")) {
        break label1775;
      }
      paramBundle = (Bundle)localObject2;
      if (z.b != null) {
        paramBundle = z.b;
      }
      label988:
      if ("工信部".equalsIgnoreCase(FileExplorerActivity.e)) {
        paramBundle = "ES";
      }
      localObject2 = paramBundle;
      if (paramBundle.length() > 0) {
        localObject2 = " (" + paramBundle + ")";
      }
      findPreference("preference_version").setSummary(getResources().getText(2131427343) + " " + (String)localObject1 + (String)localObject2);
      paramBundle = findPreference("preference_special_thanks_to_translators");
      localObject1 = getString(2131428379);
      if (z.b == null) {
        break label1837;
      }
      i1 = 1;
      label1116:
      if ((i1 == 0) && (!((String)localObject1).equals("none"))) {
        break label1842;
      }
      ((PreferenceScreen)findPreference("preference_about")).removePreference(paramBundle);
      label1145:
      findPreference("preference_website").setOnPreferenceClickListener(new gm(this));
      findPreference("preference_more_app").setOnPreferenceClickListener(new gn(this));
      findPreference("preference_feedback").setOnPreferenceClickListener(new go(this));
      f = ((CheckBoxPreference)findPreference("net_passwd_enable"));
      r = findPreference("net_passwd_change");
      g = ((CheckBoxPreference)findPreference("start_passwd_enable"));
      h = ((CheckBoxPreference)findPreference("hided_dirfiles_passwd_enable"));
      if (f != null) {
        f.setOnPreferenceChangeListener(new gp(this));
      }
      if (g != null) {
        g.setOnPreferenceChangeListener(new gq(this));
      }
      if (h != null) {
        h.setOnPreferenceChangeListener(new gr(this));
      }
      if ((r != null) && (f != null))
      {
        r.setEnabled(false);
        if (f.isChecked()) {
          r.setEnabled(true);
        }
        if (g.isChecked()) {
          r.setEnabled(true);
        }
        if (h.isChecked()) {
          r.setEnabled(true);
        }
        r.setOnPreferenceClickListener(new gs(this));
      }
      e();
      b();
      paramBundle = (CheckBoxPreference)findPreference("show_pcs_drive");
      if (paramBundle != null)
      {
        if ((!cc.a()) || (!z.N)) {
          break label1860;
        }
        paramBundle.setOnPreferenceChangeListener(new gu(this));
      }
    }
    for (;;)
    {
      i = ((CheckBoxPreference)findPreference("show_select_button"));
      i.setChecked(b.ak());
      m = ((CheckBoxPreference)findPreference("show_windows_button"));
      m.setChecked(b.am());
      ((CheckBoxPreference)findPreference("show_disk_usage")).setChecked(b.N());
      ((CheckBoxPreference)findPreference("history_dir_only")).setOnPreferenceChangeListener(new gv(this));
      ((CheckBoxPreference)findPreference("show_disk_remain")).setChecked(b.P());
      n = ((CheckBoxPreference)findPreference("show_usb_prompt"));
      n.setChecked(b.Q());
      n.setOnPreferenceChangeListener(new gx(this));
      if (ac.a() < 12) {
        ((PreferenceScreen)findPreference("preference_display_settings_category")).removePreference(n);
      }
      j = ((CheckBoxPreference)findPreference("browser_downloader_disabled"));
      j.setOnPreferenceChangeListener(new gy(this));
      paramBundle = (ListPreference)findPreference("language_setting");
      localObject1 = getResources().getStringArray(2131165204);
      localObject2 = new String[localObject1.length];
      localObject2[0] = getString(2131427988);
      i1 = i2;
      while (i1 < localObject1.length)
      {
        localObject2[i1] = localObject1[i1];
        i1 += 1;
      }
      paramBundle.setSummary(paramBundle.getEntry());
      break;
      label1742:
      paramBundle = (PreferenceCategory)findPreference("preference_upgrade_settings_text_category");
      if ((paramBundle == null) || (v == null)) {
        break label890;
      }
      paramBundle.removePreference(v);
      break label890;
      label1775:
      paramBundle = (Bundle)localObject2;
      if (!"Market".equals("Market")) {
        break label988;
      }
      paramBundle = (Bundle)localObject2;
      if (FileExplorerActivity.e == null) {
        break label988;
      }
      paramBundle = (Bundle)localObject2;
      if (FileExplorerActivity.e.length() <= 0) {
        break label988;
      }
      if (!FileExplorerActivity.e.equals("百度"))
      {
        paramBundle = FileExplorerActivity.e;
        break label988;
      }
      paramBundle = "ES";
      break label988;
      label1837:
      i1 = 0;
      break label1116;
      label1842:
      paramBundle.setSummary(((String)localObject1).replaceAll(",", "\n"));
      break label1145;
      label1860:
      ((PreferenceScreen)findPreference("preference_display_settings_category")).removePreference((PreferenceCategory)findPreference("file"));
    }
    paramBundle.a((CharSequence[])localObject2);
    int i1 = Arrays.asList(getResources().getStringArray(2131165205)).indexOf(ad.a(this).B());
    if (i1 >= 0) {
      paramBundle.setSummary(localObject2[i1]);
    }
    paramBundle.setOnPreferenceChangeListener(new gz(this));
    paramBundle = (CheckBoxPreference)findPreference("multithread_copy_enabled");
    if (paramBundle != null) {
      paramBundle.setOnPreferenceChangeListener(new hb(this));
    }
    paramBundle = (CheckBoxPreference)findPreference("use_xlarge_layout");
    if ((k.a) && (!z.O))
    {
      paramBundle.setChecked(ad.a(this).aZ());
      paramBundle.setOnPreferenceChangeListener(new hc(this));
    }
    for (;;)
    {
      a();
      a("hidden_file");
      a("gesture_setting_enabled");
      a("thumbnail");
      a("show_select_button");
      a("show_windows_button");
      a("show_search_engine");
      a("enable_recycle");
      a("toolbar_setting_show_name");
      a("scroll_thumb");
      a("sdcard_size");
      D.post(new hd(this));
      return;
      ((PreferenceCategory)findPreference("others")).removePreference(paramBundle);
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    ad.a(this);
    Object localObject1;
    Object localObject5;
    Object localObject2;
    Object localObject3;
    switch (paramInt)
    {
    case 103: 
    case 104: 
    case 106: 
    case 110: 
    default: 
      return null;
    case 102: 
      localObject1 = new ProgressDialog(this);
      ((ProgressDialog)localObject1).setMessage(getText(2131427455));
      ((ProgressDialog)localObject1).setIndeterminate(true);
      ((ProgressDialog)localObject1).setCancelable(true);
      return (Dialog)localObject1;
    case 105: 
      return new ct(this).a(2131427399).b(2131427762).b(2131427341, new hi(this)).c(2131427342, new hh(this)).b();
    case 107: 
      localct = new ct(this).a(2131427995).b(2131427339, new hk(this)).c(2131427340, new hj(this));
      try
      {
        localObject1 = g.a(FileExplorerActivity.J());
        localObject5 = localObject1;
        if (localObject1 == null) {
          localObject5 = g.a(this);
        }
        localObject1 = ((LayoutInflater)localObject5).inflate(2130903197, null);
        ((View)localObject1).findViewById(2131362491).setVisibility(8);
        ((View)localObject1).findViewById(2131362488).setVisibility(0);
        localct.a((View)localObject1);
        localObject1 = localct.b();
        ((cg)localObject1).getWindow().setSoftInputMode(5);
        return (Dialog)localObject1;
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          localObject2 = null;
        }
      }
    case 108: 
    case 111: 
    case 113: 
      localct = new ct(this).a(2131427997).b(2131427339, new hm(this, paramInt)).c(2131427340, new hl(this));
      try
      {
        localObject2 = g.a(FileExplorerActivity.J());
        localObject5 = localObject2;
        if (localObject2 == null) {
          localObject5 = g.a(this);
        }
        localObject2 = ((LayoutInflater)localObject5).inflate(2130903197, null);
        ((View)localObject2).findViewById(2131362488).setVisibility(8);
        ((View)localObject2).findViewById(2131362491).setVisibility(8);
        localct.a((View)localObject2);
        localObject2 = localct.b();
        ((cg)localObject2).getWindow().setSoftInputMode(5);
        return (Dialog)localObject2;
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          localObject3 = null;
        }
      }
    }
    ct localct = new ct(this).a(2131427896).b(2131427339, new ho(this, paramInt)).c(2131427340, new hn(this));
    try
    {
      localObject3 = g.a(FileExplorerActivity.J());
      localObject5 = localObject3;
      if (localObject3 == null) {
        localObject5 = g.a(this);
      }
      localObject3 = ((LayoutInflater)localObject5).inflate(2130903197, null);
      ((View)localObject3).findViewById(2131362491).setVisibility(8);
      ((View)localObject3).findViewById(2131362488).setVisibility(8);
      ((View)localObject3).findViewById(2131362495).setVisibility(8);
      localct.a((View)localObject3);
      localObject3 = localct.b();
      ((cg)localObject3).getWindow().setSoftInputMode(5);
      return (Dialog)localObject3;
    }
    catch (Exception localException3)
    {
      for (;;)
      {
        Object localObject4 = null;
      }
    }
  }
  
  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  public boolean onPreferenceTreeClick(PreferenceScreen paramPreferenceScreen, Preference paramPreference)
  {
    if ((paramPreference instanceof PreferenceScreen))
    {
      PreferenceScreen localPreferenceScreen = (PreferenceScreen)paramPreference;
      Dialog localDialog = localPreferenceScreen.getDialog();
      if (localDialog != null)
      {
        ListView localListView = new ListView(localPreferenceScreen.getContext());
        Drawable localDrawable = getResources().getDrawable(2130838042);
        localListView.setDivider(localDrawable);
        localListView.setDividerHeight(localDrawable.getIntrinsicHeight());
        localListView.setCacheColorHint(0);
        localPreferenceScreen.bind(localListView);
        localDialog.setContentView(localListView);
        if (localDialog.getWindow() != null) {
          localDialog.getWindow().setBackgroundDrawableResource(2130838040);
        }
      }
    }
    return super.onPreferenceTreeClick(paramPreferenceScreen, paramPreference);
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    switch (paramInt)
    {
    case 110: 
    default: 
      return;
    }
    paramDialog.findViewById(2131362491).setVisibility(8);
    ((EditText)paramDialog.findViewById(2131362494)).setText("");
    ((EditText)paramDialog.findViewById(2131362490)).setText("");
    ((EditText)paramDialog.findViewById(2131362496)).setText("");
    ((TextView)paramDialog.findViewById(2131362489)).setText(getText(2131428002) + " ");
    if ((paramInt == 109) || (paramInt == 112) || (paramInt == 114)) {
      ((TextView)paramDialog.findViewById(2131362193)).setVisibility(8);
    }
    for (;;)
    {
      ((TextView)paramDialog.findViewById(2131362195)).setText(getText(2131428003) + " ");
      return;
      ((TextView)paramDialog.findViewById(2131362193)).setText(getText(2131428001) + " ");
    }
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.PopPreferenceActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */