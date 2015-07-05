package com.estrongs.android.pop.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.cy;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.am;
import com.estrongs.android.util.ay;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class DefaultWindowSetting
  extends ESActivity
{
  TextView a;
  TextView b;
  private ai c;
  private Map<String, Drawable> d = new HashMap();
  private Map<String, String> e = new HashMap();
  
  private void a()
  {
    ListView localListView = (ListView)findViewById(2131362066);
    localListView.setFocusable(false);
    localListView.setItemsCanFocus(true);
    c = new ai(this, this, ad.a(this).M());
    localListView.setAdapter(c);
    localListView.setCacheColorHint(0);
  }
  
  private void b()
  {
    a();
  }
  
  private void c()
  {
    al localal = al.a(this);
    Object localObject1 = b.b();
    d.put("#home_page#", localal.a(2130838085));
    d.put("#home#", localal.a(2130838084));
    d.put("/", localal.a(2130838091));
    d.put(localObject1, localal.a(2130838098));
    d.put("gallery://local/buckets/", localal.a(2130838092));
    d.put("music://", localal.a(2130838088));
    d.put("video://", localal.a(2130838087));
    d.put("book://", localal.a(2130838071));
    Object localObject2 = ad.a(this).z();
    d.put(localObject2, localal.a(2130838075));
    d.put("smb://", localal.a(2130838086));
    d.put("net://", localal.a(2130838073));
    d.put("pcs://", localal.a(2130838073));
    d.put("ftp://", localal.a(2130838080));
    d.put("bt://", localal.a(2130838070));
    d.put("app://", localal.a(2130838068));
    d.put("du://" + (String)localObject1, localal.a(2130838074));
    d.put("remote://", localal.a(2130838094));
    d.put("download://", localal.a(2130838075));
    d.put("mynetwork://", localal.a(2130838076));
    d.put("recycle://", localal.a(2130838093));
    e.put("#home_page#", getString(2131428432));
    e.put("#home#", getString(2131427408));
    e.put("/", getString(2131428245));
    String str = z.c((String)localObject1);
    if (str != null) {
      e.put(localObject1, str);
    }
    for (;;)
    {
      e.put("gallery://local/buckets/", getString(2131427421));
      e.put("music://", getString(2131427422));
      e.put("video://", getString(2131427425));
      e.put("book://", getString(2131427424));
      e.put(localObject2, getString(2131427359));
      e.put("smb://", getString(2131427410));
      e.put("net://", getString(2131427412));
      e.put("pcs://", getString(2131428551));
      e.put("ftp://", getString(2131427411));
      e.put("bt://", getString(2131427413));
      e.put("app://", getString(2131427423));
      e.put("du://" + (String)localObject1, getString(2131427638));
      e.put("remote://", getString(2131428114));
      e.put("download://", getString(2131428223));
      e.put("mynetwork://", getString(2131428505));
      e.put("recycle://", getString(2131428402));
      localObject1 = new ArrayList();
      ((List)localObject1).addAll(cu.a());
      ay.a(a.k, false, (List)localObject1);
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ShortcutFormat)((Iterator)localObject1).next();
        e.put(targetLocation, shortcutName);
      }
      e.put(localObject1, getString(2131427409));
    }
    localObject1 = am.a();
    ((List)localObject1).remove(b.b());
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      d.put(localObject2, localal.a(2130838098));
      e.put(localObject2, z.b((String)localObject2));
    }
  }
  
  public void a(Context paramContext)
  {
    paramContext = new cy(this, e, d);
    paramContext.a();
    paramContext.a(new ah(this));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903093);
    a = ((TextView)findViewById(2131361825));
    a.setText(2131428452);
    b = ((TextView)findViewById(2131361826));
    b.setText(2131428453);
    setTitle(2131428182);
    ((Button)findViewById(2131361827)).setOnClickListener(new af(this));
    paramBundle = findViewById(2131362065);
    paramBundle.setFocusable(true);
    paramBundle.setOnClickListener(new ag(this));
    c();
    a();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.DefaultWindowSetting
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */