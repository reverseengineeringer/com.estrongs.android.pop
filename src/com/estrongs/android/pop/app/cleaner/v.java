package com.estrongs.android.pop.app.cleaner;

import android.os.Build.VERSION;
import android.os.Handler;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.RecyclerView;
import android.widget.Button;
import android.widget.TextView;
import com.estrongs.android.cleaner.e;
import com.estrongs.android.cleaner.h;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ScanProgressView;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class v
  extends a
{
  private int d = 2500;
  private RecyclerView e;
  private ab f;
  private List<h> g = new ArrayList();
  private ak h;
  private b i;
  private e j;
  private boolean k;
  private long l;
  private int m = 0;
  private long n = 0L;
  
  public v(DiskCleanerActivity paramDiskCleanerActivity)
  {
    super(paramDiskCleanerActivity, null);
  }
  
  public v(ESActivity paramESActivity, com.estrongs.android.view.w paramw)
  {
    super(paramESActivity, paramw);
    d += new Random().nextInt(5) * 100;
    e = b.r();
    j = new w(this);
  }
  
  public void a()
  {
    super.a();
    b.v().e();
  }
  
  public void b()
  {
    k = false;
    h = new ak(a);
    f = new ab(a, b);
    e.setAdapter(h);
    b.v().a(j);
    b.C().setGravity(3);
  }
  
  public void c()
  {
    l = System.currentTimeMillis();
    e.setItemAnimator(null);
    e.setClipToPadding(true);
    Object localObject = b.s();
    ((Button)localObject).setText(2131231265);
    ((Button)localObject).setBackgroundResource(2130837711);
    ((Button)localObject).setTextColor(a.J().c(2131558501));
    ((Button)localObject).setOnClickListener(new y(this));
    b.w().a();
    b.v().d();
    localObject = new z(this);
    b.u().postDelayed((Runnable)localObject, 200L);
  }
  
  public void d()
  {
    ai.b(a).h();
    ai.b(a).e(b.v().a());
    if ((Build.VERSION.SDK_INT < 14) && (Build.VERSION.SDK_INT >= 11)) {
      e.setItemAnimator(null);
    }
    for (;;)
    {
      b.b(b.v().a());
      b.a(b.v().c());
      b.w().b();
      b.C().setGravity(17);
      f.b();
      e.setPadding(e.getPaddingLeft(), 0, e.getPaddingRight(), e.getPaddingBottom());
      e.setAdapter(f);
      Object localObject = b.s();
      ((Button)localObject).setText(2131231570);
      ((Button)localObject).setBackgroundResource(2130837590);
      ((Button)localObject).setTextColor(a.J().c(2131558414));
      ((Button)localObject).setBackgroundResource(2130837714);
      ((Button)localObject).setTextColor(a.J().c(2131558745));
      ((Button)localObject).setOnClickListener(new aa(this));
      if (f.c())
      {
        ai.b(a).c(0L);
        b.x();
      }
      try
      {
        localObject = c.a(FexApplication.a());
        if (localObject != null)
        {
          ((c)localObject).a("C_scanresult_show");
          ((c)localObject).c("clean", "C_scanresult_show");
        }
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      e.setItemAnimator(new DefaultItemAnimator());
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cleaner.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */