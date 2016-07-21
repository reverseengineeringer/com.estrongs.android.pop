package com.estrongs.android.pop.app.cleaner;

import android.app.NotificationManager;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import com.estrongs.android.b.a.e;
import com.estrongs.android.b.a.f;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.ui.a.b;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ScanProgressView;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class DiskCleanerActivity
  extends HomeAsBackActivity
{
  private static final DecimalFormat a = new DecimalFormat("0.00");
  private static final DecimalFormat b = new DecimalFormat("#");
  private static final DecimalFormat c = new DecimalFormat("0.0");
  private long A;
  private final int d = 1048576000;
  private final int e = 1048576;
  private RecyclerView f;
  private b g;
  private Button h;
  private v i;
  private Handler j;
  private com.estrongs.android.cleaner.a k;
  private ScanProgressView l;
  private TextView m;
  private TextView n;
  private TextView o;
  private View p;
  private long q = 0L;
  private a r;
  private e t;
  private c u = null;
  private boolean v = false;
  private boolean w = cl.a();
  private boolean x = false;
  private boolean y = false;
  private long z;
  
  private void e()
  {
    Object localObject2 = f.a();
    if (w)
    {
      ??? = "cn-clean";
      t = ((f)localObject2).a((String)???, "default-clean");
      if ((t == null) || (t.a() == null)) {
        break label164;
      }
    }
    for (;;)
    {
      synchronized (t.a())
      {
        localObject2 = t.a().iterator();
        i1 = 0;
        if (((Iterator)localObject2).hasNext())
        {
          bool = "ad".equals(((com.estrongs.android.b.a.a)((Iterator)localObject2).next()).l());
          if (!bool) {
            break label161;
          }
          i1 += 1;
          continue;
          ??? = "clean";
          break;
        }
        if (i1 > 0)
        {
          bool = true;
          v = bool;
          if ((i1 > 0) && (!w)) {
            break label153;
          }
          return;
        }
      }
      boolean bool = false;
      continue;
      label153:
      com.estrongs.android.pop.app.ad.a.a().a(i1);
      return;
      label161:
      continue;
      label164:
      int i1 = 0;
    }
  }
  
  private void f()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("CleanResultStayTime", A - z);
      u.b("Clean_rp_stay", localJSONObject);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  protected ActionBar a()
  {
    Toolbar localToolbar = (Toolbar)findViewById(2131624102);
    setSupportActionBar(localToolbar);
    localToolbar.setTitleTextColor(J().c(2131558625));
    return getSupportActionBar();
  }
  
  protected boolean c()
  {
    return false;
  }
  
  public void d()
  {
    i = new v(this);
    r = i;
    i.b();
    i.c();
  }
  
  public void finish()
  {
    try
    {
      if (r != null) {
        r.a();
      }
      if (k != null) {
        k.f();
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
    super.finish();
  }
  
  protected int g()
  {
    return 2130837787;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131231210);
    getWindow().setBackgroundDrawable(new ColorDrawable(J().c(2131558536)));
    setContentView(2130903067);
    l = ((ScanProgressView)findViewById(2131624111));
    f = ((RecyclerView)findViewById(2131623946));
    f.setHasFixedSize(true);
    g = new b(this);
    f.setLayoutManager(g);
    h = ((Button)findViewById(2131624121));
    m = ((TextView)findViewById(2131624114));
    n = ((TextView)findViewById(2131624116));
    o = ((TextView)findViewById(2131624115));
    p = findViewById(2131624125);
    j = new Handler();
    k = new com.estrongs.android.cleaner.a();
    u = c.a(this);
    e();
    ai.b(this).j();
    ((NotificationManager)getSystemService("notification")).cancel(924936073);
    d();
    paramBundle = getIntent();
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getStringExtra("from");
      if (!"from_snackbar".equals(paramBundle)) {
        break label277;
      }
      x = true;
    }
    label277:
    do
    {
      try
      {
        u.a("Snackbar_clean");
        return;
      }
      catch (Exception paramBundle)
      {
        paramBundle.printStackTrace();
        return;
      }
      if ("from_notification".equals(paramBundle))
      {
        y = true;
        ai.b(this).f();
        ai.b(this).e();
        try
        {
          u.a("Notify_clean");
          return;
        }
        catch (Exception paramBundle)
        {
          paramBundle.printStackTrace();
          return;
        }
      }
    } while (!"from_analysis".equals(paramBundle));
    try
    {
      u.a("Analysis_junk");
      return;
    }
    catch (Exception paramBundle)
    {
      paramBundle.printStackTrace();
    }
  }
  
  protected void onDestroy()
  {
    if ((f.getAdapter() instanceof i))
    {
      i locali = (i)f.getAdapter();
      if ((!v) || (!locali.a()) || (u == null)) {}
    }
    try
    {
      u.a("Card_Ad_Show");
      A = System.currentTimeMillis();
      f();
      f.setAdapter(null);
      l.d();
      super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
  
  protected void onStart()
  {
    super.onStart();
    getSupportActionBar().setElevation(0.0F);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.DiskCleanerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */