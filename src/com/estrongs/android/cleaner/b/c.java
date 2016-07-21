package com.estrongs.android.cleaner.b;

import com.estrongs.android.cleaner.j;
import com.estrongs.android.cleaner.scandisk.a.d;
import com.estrongs.android.cleaner.scandisk.a.g;
import com.estrongs.android.cleaner.scandisk.a.h;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class c
{
  public static a a(int paramInt)
  {
    com.estrongs.android.util.l.b("context", "create scanner context");
    a locala = new a(null);
    a.a(locala, new d());
    Object localObject2 = locala.a();
    String str = com.estrongs.android.pop.b.b();
    List localList = j.c();
    Object localObject4 = new ArrayList();
    com.estrongs.android.cleaner.scandisk.a.i locali = new com.estrongs.android.cleaner.scandisk.a.i((com.estrongs.android.cleaner.i)localObject2);
    ((List)localObject4).clear();
    Object localObject1 = localList.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (String)((Iterator)localObject1).next();
      ((List)localObject4).add((String)localObject3 + "/Download");
    }
    ((List)localObject4).add(str + "/Download");
    ((List)localObject4).add(com.estrongs.android.cleaner.scandisk.a.c.g());
    Object localObject3 = new com.estrongs.android.cleaner.scandisk.a.c((com.estrongs.android.cleaner.i)localObject2, (List)localObject4);
    ((List)localObject4).clear();
    localObject1 = localList.iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject5 = (String)((Iterator)localObject1).next();
      ((List)localObject4).add((String)localObject5 + "/DCIM/.thumbnails");
    }
    ((List)localObject4).add(str + "/DCIM/.thumbnails");
    Object localObject5 = new com.estrongs.android.cleaner.scandisk.a.l((com.estrongs.android.cleaner.i)localObject2, (List)localObject4);
    if (bk.f()) {}
    for (localObject1 = new g((com.estrongs.android.cleaner.i)localObject2);; localObject1 = new com.estrongs.android.cleaner.scandisk.a.f((com.estrongs.android.cleaner.i)localObject2, (List)localObject4))
    {
      ((List)localObject4).clear();
      localObject6 = j.b().iterator();
      while (((Iterator)localObject6).hasNext()) {
        ((List)localObject4).add(ap.co((String)((Iterator)localObject6).next()));
      }
      ((List)localObject4).clear();
      ((List)localObject4).add(str);
      ((List)localObject4).addAll(localList);
    }
    ((List)localObject4).add(ap.co(str));
    localObject4 = j.a((List)localObject4);
    Object localObject6 = new h((com.estrongs.android.cleaner.i)localObject2, (List)localObject4);
    ((List)localObject4).clear();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(str);
    ((List)localObject4).addAll(com.estrongs.android.cleaner.scandisk.a.a(localArrayList));
    ((List)localObject4).addAll(com.estrongs.android.cleaner.scandisk.a.a(localList));
    localObject2 = new com.estrongs.android.cleaner.scandisk.a.b((com.estrongs.android.cleaner.i)localObject2, (List)localObject4);
    ((List)localObject4).clear();
    a.b(locala, (com.estrongs.android.cleaner.f)localObject6);
    a.c(locala, locali);
    if (bk.f()) {
      a.c(locala, (com.estrongs.android.cleaner.f)localObject1);
    }
    for (;;)
    {
      a.b(locala, (com.estrongs.android.cleaner.f)localObject2);
      a.b(locala, (com.estrongs.android.cleaner.f)localObject3);
      a.b(locala, (com.estrongs.android.cleaner.f)localObject5);
      return locala;
      a.b(locala, (com.estrongs.android.cleaner.f)localObject1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */