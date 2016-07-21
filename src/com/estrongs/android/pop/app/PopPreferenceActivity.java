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
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.esclasses.p;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.a;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.preference.CustomListPreference;
import com.estrongs.android.ui.preference.ListPreference;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.bk;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import java.io.File;
import java.util.Arrays;
import java.util.List;

public final class PopPreferenceActivity
  extends ESPreferenceActivity
{
  private static int D = 0;
  static boolean a = false;
  public static String s = "www.estrongs.com";
  private String A = null;
  private int B = 0;
  private Handler C = new Handler();
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
  Preference m;
  Preference n;
  Preference o;
  Preference p;
  Preference q;
  Preference r;
  private Preference u;
  private Preference v;
  private Preference w;
  private EditTextPreference x = null;
  private Preference.OnPreferenceChangeListener y;
  private at z;
  
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
      paramString.setOnPreferenceChangeListener(y);
    }
  }
  
  private void b()
  {
    Object localObject;
    if (z.j)
    {
      localObject = b.y();
      x = ((EditTextPreference)findPreference("app_backup_dir"));
      x.setSummary((CharSequence)localObject);
      x.setText((String)localObject);
      x.setOnPreferenceChangeListener(new hs(this));
      if (!ad.a(this).k())
      {
        findPreference("backup_app_cache").setEnabled(false);
        findPreference("root_auto_install").setEnabled(false);
      }
      localObject = findPreference("auto_check_list");
      if (localObject != null) {
        ((Preference)localObject).setOnPreferenceClickListener(new hu(this));
      }
      localObject = (PreferenceScreen)findPreference("appmanager_preference");
      if ((localObject != null) && (!cl.a())) {
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
    if (FileExplorerActivity.X() == null) {
      return;
    }
    showDialog(102);
    FileExplorerActivity.X().a(true, C, new hv(this));
  }
  
  private void d()
  {
    if ((A == null) || (A.trim().equals(""))) {
      A = "/sdcard/";
    }
    do
    {
      return;
      if (!new File(A).mkdirs()) {
        break;
      }
      if (B == 0)
      {
        c.setSummary(A);
        c.setText(A);
        b.i(A);
        return;
      }
      if (B == 1)
      {
        x.setSummary(A);
        x.setText(A);
        b.s(A);
        return;
      }
      if (B == 2)
      {
        if (d != null)
        {
          d.setSummary(A);
          d.setText(A);
        }
        b.t(A);
        return;
      }
    } while (B != 3);
    if (e != null)
    {
      e.setSummary(A);
      e.setText(A);
    }
    b.t(A);
    return;
    ak.a(this, 2131231915, 1);
  }
  
  private void e()
  {
    q = findPreference("backupsettings");
    q.setOnPreferenceClickListener(new if(this));
    r = findPreference("restoresettings");
    r.setOnPreferenceClickListener(new im(this));
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)findPreference("enableRemoteSynchronizer");
    if (localCheckBoxPreference != null) {
      localCheckBoxPreference.setOnPreferenceChangeListener(new iu(this));
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
    if ((!bk.f()) && ((localObject1 == null) || ((!((String)localObject1).contains("vland")) && (!((String)localObject1).contains("nj820")))))
    {
      setTheme(2131296641);
      requestWindowFeature(7);
    }
    try
    {
      super.onCreate(paramBundle);
      z = at.a(this);
      paramBundle = z.a(2130838413);
      getListView().setDivider(paramBundle);
      getListView().setDividerHeight(paramBundle.getIntrinsicHeight());
      getListView().setCacheColorHint(0);
      getListView().setPadding(0, 0, 0, 0);
      getWindow().setBackgroundDrawableResource(2130838411);
      setTitle(getResources().getString(2131231617));
      b = ad.a(this);
      b.an();
      b.al();
      addPreferencesFromResource(2131034117);
      if ((!bk.f()) && ((localObject1 == null) || ((!((String)localObject1).contains("vland")) && (!((String)localObject1).contains("nj820")))))
      {
        getWindow().setFeatureInt(7, 2130903447);
        ((ImageView)findViewById(2131624054)).setImageDrawable(z.a(2130837889));
        ((TextView)findViewById(2131624055)).setText(2131231617);
      }
      y = new gt(this);
      paramBundle = b.j(a.a);
      c = ((EditTextPreference)findPreference("root_dir"));
      c.setSummary(paramBundle);
      c.setText(paramBundle);
      c.setOnPreferenceChangeListener(new hg(this));
      ((CheckBoxPreference)findPreference("show_sdcard_notification")).setOnPreferenceChangeListener(new ht(this));
      m = findPreference("cache");
      m.setOnPreferenceClickListener(new ie(this));
      n = findPreference("upgrade_check");
      n.setOnPreferenceClickListener(new iv(this));
      if (z.y)
      {
        paramBundle = (PreferenceScreen)findPreference("update_preference");
        j = ((CheckBoxPreference)findPreference("upgrade_auto_check"));
        if ((paramBundle != null) && (j != null)) {
          paramBundle.removePreference(j);
        }
      }
      k = ((CheckBoxPreference)findPreference("send_statistics"));
      if ((k != null) && ("CN".equalsIgnoreCase(i.a)) && (z.z))
      {
        k.setTitle("统计");
        k.setSummary("发送统计数据");
        o = findPreference("clean_prefer");
        if (o != null) {
          o.setOnPreferenceClickListener(new iw(this));
        }
        paramBundle = b.z();
        d = ((EditTextPreference)findPreference("bt_dir"));
        if (d != null)
        {
          if (!z.e) {
            break label814;
          }
          d.setSummary(paramBundle);
          d.setText(paramBundle);
          d.setOnPreferenceChangeListener(new ix(this));
        }
        paramBundle = b.A();
        e = ((EditTextPreference)findPreference("download_dir"));
        if (e != null)
        {
          e.setSummary(paramBundle);
          e.setText(paramBundle);
          e.setOnPreferenceChangeListener(new iy(this));
        }
        u = findPreference("preference_help");
        paramBundle = (CustomListPreference)findPreference("search_engine_default");
        localObject1 = getResources().getStringArray(2131492878);
        localObject2 = new String[localObject1.length];
        localObject2[0] = getString(2131232071);
        i1 = 1;
        while (i1 < localObject1.length)
        {
          localObject2[i1] = localObject1[i1];
          i1 += 1;
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
        setTheme(2131296496);
        super.onCreate(paramBundle);
        continue;
        paramBundle = (PreferenceScreen)findPreference("update_preference");
        if ((paramBundle != null) && (k != null))
        {
          paramBundle.removePreference(k);
          continue;
          label814:
          paramBundle = (PreferenceScreen)findPreference("preference_directory_settings_category");
          if (paramBundle != null) {
            paramBundle.removePreference(d);
          }
        }
      }
      paramBundle.setEntries(localException);
      label912:
      Object localObject3;
      if ((paramBundle.getValue() == null) || (paramBundle.getValue().equalsIgnoreCase("auto")))
      {
        paramBundle.setSummary(getString(2131232071));
        paramBundle.setOnPreferenceChangeListener(new iz(this, paramBundle));
        if (z.k) {
          break label1707;
        }
        u.setOnPreferenceClickListener(new gu(this));
        v = findPreference("preference_privacy");
        v.setOnPreferenceClickListener(new gw(this));
        w = findPreference("preference_rate");
        w.setOnPreferenceClickListener(new gy(this));
        paramBundle = f();
        localObject1 = paramBundle;
        if (paramBundle == null) {
          localObject1 = "1.x";
        }
        localObject3 = a.a;
        if (!((String)localObject3).equalsIgnoreCase("oem")) {
          break label1740;
        }
        paramBundle = (Bundle)localObject3;
        if (z.b != null) {
          paramBundle = z.b;
        }
        label1009:
        if ("工信部".equalsIgnoreCase(a.b)) {
          paramBundle = "ES";
        }
        localObject3 = paramBundle;
        if (paramBundle.length() > 0) {
          localObject3 = " (" + paramBundle + ")";
        }
        findPreference("preference_version").setSummary(getResources().getText(2131232542) + " " + (String)localObject1 + (String)localObject3);
        paramBundle = findPreference("preference_special_thanks_to_translators");
        localObject1 = getString(2131232365);
        if (z.b == null) {
          break label1801;
        }
        i1 = 1;
        label1137:
        if ((i1 == 0) && (!((String)localObject1).equals("none"))) {
          break label1806;
        }
        ((PreferenceScreen)findPreference("preference_about")).removePreference(paramBundle);
        label1166:
        findPreference("preference_website").setOnPreferenceClickListener(new gz(this));
        findPreference("preference_more_app").setOnPreferenceClickListener(new ha(this));
        findPreference("preference_feedback").setOnPreferenceClickListener(new hb(this));
        f = ((CheckBoxPreference)findPreference("net_passwd_enable"));
        p = findPreference("net_passwd_change");
        g = ((CheckBoxPreference)findPreference("start_passwd_enable"));
        h = ((CheckBoxPreference)findPreference("hided_dirfiles_passwd_enable"));
        if (f != null) {
          f.setOnPreferenceChangeListener(new hc(this));
        }
        if (g != null) {
          g.setOnPreferenceChangeListener(new hd(this));
        }
        if (h != null) {
          h.setOnPreferenceChangeListener(new he(this));
        }
        if ((p != null) && (f != null))
        {
          p.setEnabled(false);
          if (f.isChecked()) {
            p.setEnabled(true);
          }
          if (g.isChecked()) {
            p.setEnabled(true);
          }
          if (h.isChecked()) {
            p.setEnabled(true);
          }
          p.setOnPreferenceClickListener(new hf(this));
        }
        e();
        b();
        paramBundle = (CheckBoxPreference)findPreference("show_pcs_drive");
        if (paramBundle != null)
        {
          if ((!cl.a()) || (!z.N)) {
            break label1824;
          }
          paramBundle.setOnPreferenceChangeListener(new hh(this));
        }
      }
      for (;;)
      {
        ((CheckBoxPreference)findPreference("show_disk_usage")).setChecked(b.O());
        ((CheckBoxPreference)findPreference("history_dir_only")).setOnPreferenceChangeListener(new hi(this));
        ((CheckBoxPreference)findPreference("show_disk_remain")).setChecked(b.Q());
        l = ((CheckBoxPreference)findPreference("show_usb_prompt"));
        l.setChecked(b.R());
        l.setOnPreferenceChangeListener(new hk(this));
        if (ac.a() < 12) {
          ((PreferenceScreen)findPreference("preference_display_settings_category")).removePreference(l);
        }
        i = ((CheckBoxPreference)findPreference("browser_downloader_disabled"));
        i.setOnPreferenceChangeListener(new hl(this));
        paramBundle = (ListPreference)findPreference("language_setting");
        localObject1 = getResources().getStringArray(2131492874);
        localObject3 = new String[localObject1.length];
        localObject3[0] = getString(2131232071);
        i1 = i2;
        while (i1 < localObject1.length)
        {
          localObject3[i1] = localObject1[i1];
          i1 += 1;
        }
        paramBundle.setSummary(paramBundle.getEntry());
        break;
        label1707:
        paramBundle = (PreferenceCategory)findPreference("preference_upgrade_settings_text_category");
        if ((paramBundle == null) || (u == null)) {
          break label912;
        }
        paramBundle.removePreference(u);
        break label912;
        label1740:
        paramBundle = (Bundle)localObject3;
        if (!((String)localObject3).equals("Market")) {
          break label1009;
        }
        paramBundle = (Bundle)localObject3;
        if (a.b == null) {
          break label1009;
        }
        paramBundle = (Bundle)localObject3;
        if (a.b.length() <= 0) {
          break label1009;
        }
        if (!a.b.equals("Baidu"))
        {
          paramBundle = a.b;
          break label1009;
        }
        paramBundle = "ES";
        break label1009;
        label1801:
        i1 = 0;
        break label1137;
        label1806:
        paramBundle.setSummary(((String)localObject1).replaceAll(",", "\n"));
        break label1166;
        label1824:
        ((PreferenceScreen)findPreference("preference_display_settings_category")).removePreference((PreferenceCategory)findPreference("file"));
      }
      paramBundle.a((CharSequence[])localObject3);
      int i1 = Arrays.asList(getResources().getStringArray(2131492875)).indexOf(ad.a(this).C());
      if (i1 >= 0) {
        paramBundle.setSummary(localObject3[i1]);
      }
      paramBundle.setOnPreferenceChangeListener(new hm(this));
      paramBundle = (CheckBoxPreference)findPreference("multithread_copy_enabled");
      if (paramBundle != null) {
        paramBundle.setOnPreferenceChangeListener(new ho(this));
      }
      paramBundle = (CheckBoxPreference)findPreference("use_xlarge_layout");
      if (!p.a) {
        break label2105;
      }
    }
    if (!z.O)
    {
      paramBundle.setChecked(ad.a(this).aY());
      paramBundle.setOnPreferenceChangeListener(new hp(this));
    }
    for (;;)
    {
      paramBundle = findPreference("scroll_thumb");
      ((PreferenceCategory)findPreference("others")).removePreference(paramBundle);
      findPreference("default_window").setOnPreferenceClickListener(new hq(this));
      findPreference("show_analysis_button");
      a();
      a("hidden_file");
      a("gesture_setting_enabled");
      a("thumbnail");
      a("show_search_engine");
      a("enable_recycle");
      a("scroll_thumb");
      a("sdcard_size");
      a("show_homepage_message");
      C.post(new hr(this));
      return;
      label2105:
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
      ((ProgressDialog)localObject1).setMessage(getText(2131232177));
      ((ProgressDialog)localObject1).setIndeterminate(true);
      ((ProgressDialog)localObject1).setCancelable(true);
      return (Dialog)localObject1;
    case 105: 
      return new cv(this).a(2131231719).b(2131231916).b(2131231273, new hx(this)).c(2131231269, new hw(this)).b();
    case 107: 
      localcv = new cv(this).a(2131232075).b(2131231270, new hz(this)).c(2131231265, new hy(this));
      try
      {
        localObject1 = k.a(FileExplorerActivity.X());
        localObject5 = localObject1;
        if (localObject1 == null) {
          localObject5 = k.a(this);
        }
        localObject1 = ((LayoutInflater)localObject5).inflate(2130903348, null);
        ((View)localObject1).findViewById(2131625228).setVisibility(8);
        ((View)localObject1).findViewById(2131625225).setVisibility(0);
        localcv.a((View)localObject1);
        localObject1 = localcv.b();
        ((ci)localObject1).getWindow().setSoftInputMode(5);
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
      localcv = new cv(this).a(2131231809).b(2131231270, new ib(this, paramInt)).c(2131231265, new ia(this));
      try
      {
        localObject2 = k.a(FileExplorerActivity.X());
        localObject5 = localObject2;
        if (localObject2 == null) {
          localObject5 = k.a(this);
        }
        localObject2 = ((LayoutInflater)localObject5).inflate(2130903348, null);
        ((View)localObject2).findViewById(2131625225).setVisibility(8);
        ((View)localObject2).findViewById(2131625228).setVisibility(8);
        localcv.a((View)localObject2);
        localObject2 = localcv.b();
        ((ci)localObject2).getWindow().setSoftInputMode(5);
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
    cv localcv = new cv(this).a(2131231636).b(2131231270, new id(this, paramInt)).c(2131231265, new ic(this));
    try
    {
      localObject3 = k.a(FileExplorerActivity.X());
      localObject5 = localObject3;
      if (localObject3 == null) {
        localObject5 = k.a(this);
      }
      localObject3 = ((LayoutInflater)localObject5).inflate(2130903348, null);
      ((View)localObject3).findViewById(2131625228).setVisibility(8);
      ((View)localObject3).findViewById(2131625225).setVisibility(8);
      ((View)localObject3).findViewById(2131625232).setVisibility(8);
      localcv.a((View)localObject3);
      localObject3 = localcv.b();
      ((ci)localObject3).getWindow().setSoftInputMode(5);
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
        Drawable localDrawable = getResources().getDrawable(2130838413);
        localListView.setDivider(localDrawable);
        localListView.setDividerHeight(localDrawable.getIntrinsicHeight());
        localListView.setCacheColorHint(0);
        localPreferenceScreen.bind(localListView);
        localDialog.setContentView(localListView);
        if (localDialog.getWindow() != null) {
          localDialog.getWindow().setBackgroundDrawableResource(2130838411);
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
    paramDialog.findViewById(2131625228).setVisibility(8);
    ((EditText)paramDialog.findViewById(2131625231)).setText("");
    ((EditText)paramDialog.findViewById(2131625227)).setText("");
    ((EditText)paramDialog.findViewById(2131625233)).setText("");
    ((TextView)paramDialog.findViewById(2131625226)).setText(getText(2131231808) + " ");
    if ((paramInt == 109) || (paramInt == 112) || (paramInt == 114)) {
      ((TextView)paramDialog.findViewById(2131624779)).setVisibility(8);
    }
    for (;;)
    {
      ((TextView)paramDialog.findViewById(2131624781)).setText(getText(2131231805) + " ");
      return;
      ((TextView)paramDialog.findViewById(2131624779)).setText(getText(2131231806) + " ");
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