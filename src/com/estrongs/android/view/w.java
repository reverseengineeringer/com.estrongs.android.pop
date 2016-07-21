package com.estrongs.android.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.NotificationManager;
import android.content.res.Resources;
import android.os.Handler;
import android.support.design.widget.AppBarLayout.LayoutParams;
import android.support.design.widget.CollapsingToolbarLayout;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.TextView;
import com.estrongs.android.b.a.a.g;
import com.estrongs.android.b.a.e;
import com.estrongs.android.b.a.f;
import com.estrongs.android.k.d;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.app.cleaner.i;
import com.estrongs.android.pop.app.cleaner.r;
import com.estrongs.android.pop.app.unlock.s;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.ui.a.b;
import com.estrongs.android.ui.view.ScanProgressView;
import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;

public class w
  extends cr
{
  private static final DecimalFormat a = new DecimalFormat("0.00");
  private static final DecimalFormat b = new DecimalFormat("#");
  private static final DecimalFormat c = new DecimalFormat("0.0");
  private e aA;
  private com.estrongs.android.j.c aB = null;
  private boolean aC = false;
  private boolean aD;
  private boolean aE = false;
  private boolean aF = false;
  private Runnable aG = new x(this);
  private RecyclerView al;
  private b am;
  private Button an;
  private com.estrongs.android.pop.app.cleaner.v ao;
  private com.estrongs.android.pop.app.cleaner.c ap;
  private Handler aq;
  private com.estrongs.android.cleaner.a ar;
  private ScanProgressView as;
  private TextView at;
  private TextView au;
  private TextView av;
  private String aw;
  private View ax;
  private long ay = 0L;
  private com.estrongs.android.pop.app.cleaner.a az;
  private final int d = 1048576000;
  private final int e = 1048576;
  
  public w(Activity paramActivity, com.estrongs.fs.util.a.a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  private void aG()
  {
    Object localObject2 = f.a();
    if (aD)
    {
      ??? = "cn-clean";
      aA = ((f)localObject2).a((String)???, "default-clean");
      if ((aA == null) || (aA.a() == null)) {
        break label198;
      }
      ??? = s.a().c();
      if (??? != null) {
        aA.a().add(0, new g("junk", (d)???));
      }
    }
    for (;;)
    {
      synchronized (aA.a())
      {
        localObject2 = aA.a().iterator();
        i = 0;
        if (((Iterator)localObject2).hasNext())
        {
          bool = "ad".equals(((com.estrongs.android.b.a.a)((Iterator)localObject2).next()).l());
          if (!bool) {
            break label195;
          }
          i += 1;
          continue;
          ??? = "clean";
          break;
        }
        if (i > 0)
        {
          bool = true;
          aC = bool;
          if ((i > 0) && (!aD)) {
            break label187;
          }
          return;
        }
      }
      boolean bool = false;
      continue;
      label187:
      com.estrongs.android.pop.app.ad.a.a().a(i);
      return;
      label195:
      continue;
      label198:
      int i = 0;
    }
  }
  
  private void aH()
  {
    ao = new com.estrongs.android.pop.app.cleaner.v((ESActivity)ag, this);
    az = ao;
    ao.b();
    ao.c();
  }
  
  private String e(long paramLong)
  {
    double d1 = paramLong;
    long l = paramLong / 1048576L;
    if (l > 9999L)
    {
      d1 = l;
      return c.format(d1 / 1024.0D);
    }
    if (l > 999L)
    {
      d1 = l;
      return a.format(d1 / 1024.0D);
    }
    if (l > 1L) {
      return b.format(l);
    }
    if (paramLong > 1024000L) {
      return a.format(d1 / 1048576.0D);
    }
    if (paramLong > 1024L) {
      return b.format(paramLong / 1024L);
    }
    if (paramLong > 1000L) {
      return a.format(d1 / 1024.0D);
    }
    return b.format(paramLong);
  }
  
  private String f(long paramLong)
  {
    if ("RU".equalsIgnoreCase(cl.c()))
    {
      if (paramLong >= 1048576000L) {
        return "Gб";
      }
      if (paramLong >= 1024000L) {
        return "M6";
      }
      if (paramLong >= 1000L) {
        return "K6";
      }
      return "B";
    }
    if (paramLong >= 1048576000L) {
      return "GB";
    }
    if (paramLong >= 1024000L) {
      return "MB";
    }
    if (paramLong >= 1000L) {
      return "KB";
    }
    return "B";
  }
  
  public void A()
  {
    r.a(ag, this, aG);
  }
  
  public void B()
  {
    au.setVisibility(8);
  }
  
  public TextView C()
  {
    return au;
  }
  
  public long D()
  {
    return ay;
  }
  
  public void E()
  {
    try
    {
      if (az != null) {
        az.a();
      }
      if (ar != null) {
        ar.f();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  protected int a()
  {
    return 2130903067;
  }
  
  public void a(int paramInt) {}
  
  public void a(long paramLong)
  {
    at.setText(e(paramLong));
    av.setText(f(paramLong));
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    if ((ap != null) && (ap.g()))
    {
      paramh = k.a(aF()).inflate(a(), null);
      paramTypedMap = (ViewGroup)ai;
      paramTypedMap.removeAllViews();
      paramTypedMap.addView(paramh, new ViewGroup.LayoutParams(-1, -1));
      i();
    }
  }
  
  public void a(String paramString)
  {
    super.a(paramString);
  }
  
  protected View b(int paramInt)
  {
    return super.b(paramInt);
  }
  
  public h b()
  {
    if (D == null) {
      D = new com.estrongs.fs.x("clean://");
    }
    return D;
  }
  
  @SuppressLint({"NewApi"})
  public void b(long paramLong)
  {
    if (ac.a() > 17) {
      if (au.getTextAlignment() != 4) {
        au.setTextAlignment(4);
      }
    }
    for (;;)
    {
      String str = e(paramLong) + f(paramLong);
      au.setText(j(2131231211) + str);
      return;
      if (au.getGravity() != 17) {
        au.setGravity(17);
      }
    }
  }
  
  public void b(String paramString)
  {
    aw = paramString;
  }
  
  public void b(boolean paramBoolean) {}
  
  public String c()
  {
    return "clean://";
  }
  
  public void c(long paramLong)
  {
    ay = paramLong;
  }
  
  public void c(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ax.setClickable(true);
      ax.setVisibility(0);
      return;
    }
    ax.setClickable(false);
    ax.setVisibility(8);
  }
  
  protected void i()
  {
    aD = cl.a();
    as = ((ScanProgressView)b(2131624111));
    al = ((RecyclerView)b(2131623946));
    am = new b(ag);
    al.setLayoutManager(am);
    an = ((Button)b(2131624121));
    at = ((TextView)b(2131624114));
    au = ((TextView)b(2131624116));
    av = ((TextView)b(2131624115));
    ax = b(2131624125);
    aq = new Handler();
    ar = new com.estrongs.android.cleaner.a();
    aB = com.estrongs.android.j.c.a(ag);
    aG();
    aD();
    ((NotificationManager)ag.getSystemService("notification")).cancel(924936073);
    aH();
    String str = c();
    if ("clean://from_snackbar".equals(str)) {
      aE = true;
    }
    do
    {
      try
      {
        aB.a("Snackbar_clean");
        return;
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
        return;
      }
      if ("clean://from_notification".equals(localException1))
      {
        aF = true;
        ai.b(ag).f();
        ai.b(ag).e();
        try
        {
          aB.a("Notify_clean");
          return;
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
          return;
        }
      }
    } while (!"clean://from_analysis".equals(localException2));
    try
    {
      aB.a("Analysis_junk");
      return;
    }
    catch (Exception localException3)
    {
      localException3.printStackTrace();
    }
  }
  
  public void i_()
  {
    super.i_();
    try
    {
      if (az != null) {
        az.a();
      }
      if (ar != null) {
        ar.f();
      }
    }
    catch (Exception localException1)
    {
      try
      {
        i locali;
        aB.a("Card_Ad_Show");
        locali.b();
        al.setAdapter(null);
        as.d();
        return;
        localException1 = localException1;
        localException1.printStackTrace();
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          localException2.printStackTrace();
        }
      }
    }
    if ((al.getAdapter() instanceof i))
    {
      locali = (i)al.getAdapter();
      if ((!aC) || (!locali.a()) || (aB == null)) {}
    }
  }
  
  public void l()
  {
    super.l();
  }
  
  protected void n() {}
  
  public e q()
  {
    return aA;
  }
  
  public RecyclerView r()
  {
    return al;
  }
  
  public Button s()
  {
    return an;
  }
  
  public b t()
  {
    return am;
  }
  
  public Handler u()
  {
    return aq;
  }
  
  public com.estrongs.android.cleaner.a v()
  {
    return ar;
  }
  
  public ScanProgressView w()
  {
    return as;
  }
  
  public void x()
  {
    ap = new com.estrongs.android.pop.app.cleaner.c((ESActivity)ag, this);
    ap.b();
    ap.c();
    az = ap;
  }
  
  public void y()
  {
    au.setText(aw);
  }
  
  public void z()
  {
    Object localObject1 = (CollapsingToolbarLayout)b(2131624109);
    Object localObject2 = (AppBarLayout.LayoutParams)((CollapsingToolbarLayout)localObject1).getLayoutParams();
    ((AppBarLayout.LayoutParams)localObject2).a(3);
    ((CollapsingToolbarLayout)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
    localObject1 = (TextView)b(2131624123);
    localObject2 = ag.getString(2131231205);
    if (0L < ay)
    {
      if (((String)localObject2).length() >= 25)
      {
        ((TextView)localObject1).setText((String)localObject2 + "\n" + j.c(ay));
        localObject1 = (TextView)b(2131624124);
        int i = ag.getResources().getDimensionPixelSize(2131165495);
        int j = ag.getResources().getDimensionPixelSize(2131165268);
        ((android.support.design.widget.v)((TextView)localObject1).getLayoutParams()).setMargins(0, i + j, 0, 0);
        return;
      }
      ((TextView)localObject1).setText((String)localObject2 + j.c(ay));
      return;
    }
    ((TextView)localObject1).setText(ag.getString(2131231182));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */