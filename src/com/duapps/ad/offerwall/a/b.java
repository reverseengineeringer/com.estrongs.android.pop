package com.duapps.ad.offerwall.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.duapps.ad.base.am;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.t;
import com.duapps.ad.entity.AdData;
import com.duapps.ad.entity.AdModel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class b
{
  am<AdModel> a = new c(this);
  private int b;
  private Context c;
  private a d;
  private boolean e;
  private boolean f;
  private List<AdData> g = Collections.synchronizedList(new ArrayList());
  private Handler h;
  private AdModel i;
  
  public b(int paramInt, Context paramContext, a parama)
  {
    this(paramInt, paramContext, parama, 10);
  }
  
  public b(int paramInt1, Context paramContext, a parama, int paramInt2)
  {
    b = paramInt1;
    c = paramContext;
    d = parama;
    h = new Handler(Looper.getMainLooper());
  }
  
  private List<AdData> a(List<AdData> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      AdData localAdData = (AdData)paramList.next();
      if (!ap.a(c, c)) {
        localArrayList.add(localAdData);
      }
    }
    return localArrayList;
  }
  
  public int a()
  {
    synchronized (g)
    {
      Iterator localIterator = g.iterator();
      int j = 0;
      while (localIterator.hasNext())
      {
        String str = nextc;
        if (!ap.a(c, str)) {
          j += 1;
        }
      }
      return j;
    }
  }
  
  public void a(int paramInt)
  {
    f = false;
    synchronized (g)
    {
      g.clear();
      t.a(c.getApplicationContext()).b(b, paramInt, a, 10);
      return;
    }
  }
  
  public boolean b()
  {
    return e;
  }
  
  public List<AdData> c()
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (g)
    {
      localArrayList.addAll(g);
      g.clear();
      return localArrayList;
    }
  }
  
  public boolean d()
  {
    if (i == null) {}
    label33:
    label71:
    label82:
    label85:
    for (;;)
    {
      return true;
      int k;
      int m;
      if (i.g <= 0)
      {
        j = 1;
        if (i.f != 0) {
          break label71;
        }
        k = 1;
        m = j / k;
        if (j % k == 0) {
          break label82;
        }
      }
      for (int j = m + 1;; j = m)
      {
        if (i.e < j) {
          break label85;
        }
        return false;
        j = i.g;
        break;
        k = i.f;
        break label33;
      }
    }
  }
  
  public void e()
  {
    d = null;
    synchronized (g)
    {
      g.clear();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */