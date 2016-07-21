package com.estrongs.android.a;

import com.estrongs.android.a.a.m;
import com.estrongs.android.a.a.v;
import com.estrongs.android.a.b.a;
import com.estrongs.android.a.b.b;
import com.estrongs.android.a.b.e;
import com.estrongs.android.a.b.o;
import com.estrongs.android.a.b.p;
import com.estrongs.android.a.b.q;
import com.estrongs.android.a.b.r;
import com.estrongs.android.a.b.u;
import com.estrongs.android.a.b.w;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class z
{
  private static Comparator<List<h>> a = new aa();
  
  public static a a(com.estrongs.android.a.a.k paramk, int paramInt)
  {
    paramk = paramk.a(paramInt);
    if (b == 0) {
      return new a();
    }
    ArrayList localArrayList = new ArrayList(a.size());
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(((q)localIterator.next()).a());
    }
    return new a(localArrayList, 0, b, c);
  }
  
  public static a a(String paramString, com.estrongs.android.a.a.k paramk)
  {
    long l;
    if (paramString == null)
    {
      paramString = paramk.e();
      l = 0L;
      paramk = new ArrayList(paramString.size());
      Iterator localIterator = paramString.iterator();
      while (localIterator.hasNext())
      {
        q localq = (q)localIterator.next();
        if (localq.h())
        {
          l += localq.d();
          paramk.add(localq.a());
        }
      }
    }
    if (ap.V(paramString)) {
      paramString = p.class;
    }
    for (;;)
    {
      paramString = paramk.a(paramString);
      break;
      if ((ap.aY(paramString)) || (ap.X(paramString)))
      {
        paramString = o.class;
      }
      else if (ap.Z(paramString))
      {
        paramString = w.class;
      }
      else if (ap.ae(paramString))
      {
        paramString = e.class;
      }
      else if (ap.ag(paramString))
      {
        paramString = b.class;
      }
      else
      {
        if (!ap.bl(paramString)) {
          break label177;
        }
        paramString = com.estrongs.android.a.b.k.class;
      }
    }
    label177:
    return new a();
    return new a(paramk, 0, paramString.size(), l);
  }
  
  public static u a(String paramString, v paramv)
  {
    long l1 = 0L;
    paramString = paramv.c();
    paramv = new ArrayList(paramString.size());
    Iterator localIterator = paramString.keySet().iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      Object localObject = (List)paramString.get((String)localIterator.next());
      int j = i + ((List)localObject).size();
      ArrayList localArrayList = new ArrayList(((List)localObject).size());
      localObject = ((List)localObject).iterator();
      long l2 = l1;
      while (((Iterator)localObject).hasNext())
      {
        r localr = (r)((Iterator)localObject).next();
        if (localr.h())
        {
          l2 += localr.d();
          localArrayList.add(localr.a());
        }
      }
      i = j;
      l1 = l2;
      if (!localArrayList.isEmpty())
      {
        paramv.add(localArrayList);
        i = j;
        l1 = l2;
      }
    }
    Collections.sort(paramv, a);
    return new u(paramv, 0, i, l1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */