package com.estrongs.android.ui.theme;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.e;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.a.db;
import com.estrongs.android.ui.d.a;
import com.estrongs.android.ui.e.jk;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.am;
import com.estrongs.android.util.y;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class ThemeActivity
  extends ESActivity
{
  private al a;
  private ListView b;
  private db c;
  private Handler d;
  private String e;
  private String f;
  private jk g;
  private boolean h;
  private LinearLayout i;
  private BroadcastReceiver j;
  private Map<String, s> k;
  
  private void a()
  {
    ((LinearLayout)findViewById(2131362758)).setOnClickListener(new m(this));
    ((TextView)findViewById(2131362760)).setText(2131428137);
    if (getResourcesgetConfigurationorientation == 1) {}
    g = new jk(this, true);
    g.a(2131427378, 2130838172, new n(this));
    ((LinearLayout)findViewById(2131362761)).addView(g.a(), new LinearLayout.LayoutParams(-1, -1));
  }
  
  private void a(ai paramai)
  {
    Object localObject1 = getAssets();
    Object localObject2 = paramai.a() + "image_thumb";
    paramai = ((AssetManager)localObject1).open("theme/classic/image_thumb");
    localObject1 = new File((String)localObject2);
    if (!((File)localObject1).exists())
    {
      ((File)localObject1).createNewFile();
      localObject1 = new FileOutputStream((File)localObject1);
      localObject2 = new byte['Ѐ'];
      for (;;)
      {
        int m = paramai.read((byte[])localObject2);
        if (m == -1) {
          break;
        }
        ((FileOutputStream)localObject1).write((byte[])localObject2, 0, m);
      }
      ((FileOutputStream)localObject1).flush();
      ((FileOutputStream)localObject1).close();
    }
    paramai.close();
  }
  
  private void b()
  {
    b = ((ListView)findViewById(2131362764));
    g();
    d = new o(this);
    c = new db(this, d);
    f();
    b.setAdapter(c);
  }
  
  private void c()
  {
    Object localObject2 = am.a(this) + "themeInfo.dat";
    Object localObject1 = localObject2;
    if (!new File((String)localObject2).exists()) {
      localObject1 = am.a(this, false) + "themeInfo.dat";
    }
    localObject1 = ai.a((String)localObject1);
    e = ai.a;
    if (localObject1 == null) {
      localObject1 = new ArrayList();
    }
    for (int m = 1;; m = 0)
    {
      localObject2 = new ai();
      c = getResources().getString(2131428152);
      b = getPackageName();
      g = 0;
      ((ai)localObject2).e();
      ((List)localObject1).add(0, localObject2);
      PackageManager localPackageManager;
      if (m != 0) {
        localPackageManager = getPackageManager();
      }
      try
      {
        PackageInfo localPackageInfo = localPackageManager.getPackageInfo("com.estrongs.android.pop.classic", 0);
        if (localPackageInfo != null)
        {
          localObject2 = new ai();
          c = applicationInfo.loadLabel(localPackageManager).toString();
          b = "com.estrongs.android.pop.classic";
          g = versionCode;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;)
        {
          label205:
          localNameNotFoundException.printStackTrace();
        }
      }
      try
      {
        a((ai)localObject2);
        ((ai)localObject2).e();
        ((List)localObject1).add(localObject2);
        a.a((List)localObject1);
        return;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        break label205;
      }
    }
  }
  
  private void d()
  {
    Object localObject2 = Locale.getDefault().toString();
    int m = ((String)localObject2).indexOf('_');
    Object localObject1 = localObject2;
    if (m > 0) {
      localObject1 = ((String)localObject2).substring(0, m);
    }
    if (e.a != null) {
      if ((!e.a.equalsIgnoreCase("CN")) && (!e.a.equalsIgnoreCase("TW"))) {
        break label193;
      }
    }
    label193:
    for (localObject1 = "zh";; localObject1 = "en")
    {
      localObject1 = "http://update.estrongs.com/theme?" + "l=" + (String)localObject1;
      localObject2 = (String)localObject1 + "&v=" + ai.a;
      localObject1 = am.a(this) + "themeInfo.dat";
      localObject2 = new y((String)localObject2);
      p localp = new p(this, (String)localObject1);
      ((y)localObject2).a((String)localObject1 + ".tmp");
      ((y)localObject2).a(localp);
      ((y)localObject2).c();
      return;
    }
  }
  
  private void e()
  {
    List localList = ai.a(am.a(this) + "themeInfo.dat");
    Object localObject = ai.a;
    if ((localObject != null) && (!((String)localObject).equals(e)))
    {
      ai.a = (String)localObject;
      ai localai = new ai();
      c = getResources().getString(2131428152);
      b = getPackageName();
      localObject = localList;
      if (localList == null) {
        localObject = new ArrayList();
      }
      ((List)localObject).add(0, localai);
      localObject = Message.obtain(d, 13, localObject);
      d.sendMessage((Message)localObject);
    }
  }
  
  private void f()
  {
    c.a(a.e());
  }
  
  private void g()
  {
    i = ((LinearLayout)findViewById(2131361826));
    int m = a.a(this, 8.0F);
    i.setPadding(m * 2, m, m * 2, m);
    i.setOnTouchListener(new q(this, m));
    i.setOnClickListener(new r(this));
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 268439588) && (paramInt2 == -1)) {
      setResult(-1);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    boolean bool = false;
    super.onCreate(paramBundle);
    a = al.a(this);
    f = a.d();
    setContentView(g.a(this).inflate(2130903259, null));
    setResult(0);
    a();
    c();
    if ((ak.b()) || (ak.d())) {
      bool = true;
    }
    h = bool;
    b();
    if (h) {
      d();
    }
    j = new l(this);
    paramBundle = new IntentFilter();
    paramBundle.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    paramBundle.addAction("android.net.wifi.STATE_CHANGE");
    registerReceiver(j, paramBundle);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    unregisterReceiver(j);
    try
    {
      if (k != null)
      {
        Iterator localIterator = k.values().iterator();
        while (localIterator.hasNext()) {
          unregisterReceiver((s)localIterator.next());
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    boolean bool;
    Object localObject;
    if ((ak.b()) || (ak.d()))
    {
      bool = true;
      h = bool;
      localObject = i;
      if (!h) {
        break label88;
      }
    }
    label88:
    for (int m = 8;; m = 0)
    {
      ((LinearLayout)localObject).setVisibility(m);
      localObject = a.d();
      if (a.d((String)localObject) == null)
      {
        c.a(0);
        setResult(-1);
      }
      c.notifyDataSetChanged();
      return;
      bool = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ThemeActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */