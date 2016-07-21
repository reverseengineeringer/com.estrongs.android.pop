package com.estrongs.android.pop.app;

import android.content.Context;
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
import com.estrongs.android.pop.utils.dd;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.da;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bc;
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
  private am c;
  private Map<String, Integer> d = new HashMap();
  private Map<String, String> e = new HashMap();
  
  private void a()
  {
    ListView localListView = (ListView)findViewById(2131624611);
    localListView.setFocusable(false);
    localListView.setItemsCanFocus(true);
    c = new am(this, this, ad.a(this).N());
    localListView.setAdapter(c);
    localListView.setCacheColorHint(0);
  }
  
  private void b()
  {
    a();
  }
  
  private void c()
  {
    at.a(this);
    Object localObject1 = b.b();
    d.put("#home_page#", Integer.valueOf(2130838463));
    d.put("#home#", Integer.valueOf(2130838462));
    d.put("/", Integer.valueOf(2130838469));
    d.put(localObject1, Integer.valueOf(2130838477));
    d.put("pic://", Integer.valueOf(2130838470));
    d.put("music://", Integer.valueOf(2130838466));
    d.put("video://", Integer.valueOf(2130838465));
    d.put("book://", Integer.valueOf(2130838447));
    Object localObject2 = ad.a(this).A();
    d.put(localObject2, Integer.valueOf(2130838453));
    d.put("smb://", Integer.valueOf(2130838464));
    d.put("net://", Integer.valueOf(2130838451));
    d.put("pcs://", Integer.valueOf(2130838451));
    d.put("ftp://", Integer.valueOf(2130838458));
    d.put("bt://", Integer.valueOf(2130838446));
    d.put("app://", Integer.valueOf(2130838444));
    d.put("remote://", Integer.valueOf(2130838473));
    d.put("download://", Integer.valueOf(2130838453));
    d.put("mynetwork://", Integer.valueOf(2130838454));
    d.put("recycle://", Integer.valueOf(2130838472));
    e.put("#home_page#", getString(2131231657));
    e.put("#home#", getString(2131231656));
    e.put("/", getString(2131231650));
    String str = z.c((String)localObject1);
    if (str != null) {
      e.put(localObject1, str);
    }
    for (;;)
    {
      e.put("pic://", getString(2131231138));
      e.put("music://", getString(2131231136));
      e.put("video://", getString(2131231135));
      e.put("book://", getString(2131231130));
      e.put(localObject2, getString(2131230847));
      e.put("smb://", getString(2131231658));
      e.put("net://", getString(2131231648));
      e.put("pcs://", getString(2131231137));
      e.put("ftp://", getString(2131231652));
      e.put("bt://", getString(2131231649));
      e.put("app://", getString(2131231129));
      e.put("remote://", getString(2131231470));
      e.put("download://", getString(2131230994));
      e.put("mynetwork://", getString(2131231789));
      e.put("recycle://", getString(2131232258));
      localObject1 = new ArrayList();
      ((List)localObject1).addAll(dd.a());
      bc.a(a.n, false, (List)localObject1);
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ShortcutFormat)((Iterator)localObject1).next();
        e.put(targetLocation, shortcutName);
      }
      e.put(localObject1, getString(2131231662));
    }
    localObject1 = ap.a();
    ((List)localObject1).remove(b.b());
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      d.put(localObject2, Integer.valueOf(2130838477));
      e.put(localObject2, z.b((String)localObject2));
    }
  }
  
  public void a(Context paramContext)
  {
    paramContext = new da(this, e, d);
    paramContext.a();
    paramContext.a(new al(this));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903168);
    a = ((TextView)findViewById(2131624055));
    a.setText(2131231310);
    b = ((TextView)findViewById(2131624325));
    b.setText(2131231309);
    setTitle(2131231885);
    ((Button)findViewById(2131624326)).setOnClickListener(new aj(this));
    paramBundle = findViewById(2131624610);
    paramBundle.setFocusable(true);
    paramBundle.setOnClickListener(new ak(this));
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