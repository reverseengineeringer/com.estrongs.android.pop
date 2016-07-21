package com.estrongs.android.a.a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Files;
import com.estrongs.android.a.b.a;
import com.estrongs.android.a.b.k;
import com.estrongs.android.a.b.q;
import com.estrongs.android.cleaner.j;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.l;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class g
  implements n
{
  private String a;
  private final List<q> b;
  private int c;
  private long d;
  
  public g(String paramString)
  {
    a = paramString;
    b = new ArrayList();
  }
  
  public a a()
  {
    ArrayList localArrayList = new ArrayList(b.size());
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      q localq = (q)localIterator.next();
      if (localq.h()) {
        localArrayList.add(localq.a());
      }
    }
    if (localArrayList.isEmpty())
    {
      c = 0;
      d = 0L;
    }
    return new a(localArrayList, 0, c, d);
  }
  
  public void a(String paramString)
  {
    localObject1 = j.d();
    if ((paramString != null) && (((List)localObject1).contains(paramString)))
    {
      localObject1 = new StringBuilder(a);
      ((StringBuilder)localObject1).append(" and ").append("_data").append(" like '").append(paramString).append("/%'");
      a = ((StringBuilder)localObject1).toString();
    }
    l.e(getClass().getSimpleName(), "db analyze: " + a);
    long l1 = System.currentTimeMillis();
    try
    {
      Object localObject2 = MediaStore.Files.getContentUri("external");
      paramString = FexApplication.a().getContentResolver();
      localObject1 = a;
      localObject1 = paramString.query((Uri)localObject2, new String[] { "count(_id)", "sum(_size)" }, (String)localObject1, null, null);
      if (localObject1 != null) {
        paramString = (String)localObject1;
      }
      try
      {
        if (((Cursor)localObject1).moveToFirst())
        {
          paramString = (String)localObject1;
          c = ((Cursor)localObject1).getInt(0);
          paramString = (String)localObject1;
          d = ((Cursor)localObject1).getLong(1);
        }
        paramString = (String)localObject1;
        ((Cursor)localObject1).close();
        paramString = (String)localObject1;
        l.c(getClass().getSimpleName(), c + "#" + d + "@" + a);
        paramString = (String)localObject1;
        ContentResolver localContentResolver = FexApplication.a().getContentResolver();
        paramString = (String)localObject1;
        String str = a;
        paramString = (String)localObject1;
        localObject1 = localContentResolver.query((Uri)localObject2, new String[] { "_data", "media_type", "_size", "date_modified" }, str, null, "_id asc limit 0, 2");
        if (localObject1 == null) {
          break label610;
        }
        paramString = (String)localObject1;
        l.e(getClass().getSimpleName(), "Has " + ((Cursor)localObject1).getCount() + "@" + a);
        for (;;)
        {
          paramString = (String)localObject1;
          if (!((Cursor)localObject1).moveToNext()) {
            break;
          }
          paramString = (String)localObject1;
          localObject2 = ((Cursor)localObject1).getString(0);
          paramString = (String)localObject1;
          if (!new File((String)localObject2).isDirectory())
          {
            paramString = (String)localObject1;
            ((Cursor)localObject1).getInt(1);
            paramString = (String)localObject1;
            localObject2 = new k((String)localObject2, ((Cursor)localObject1).getLong(2), ((Cursor)localObject1).getLong(3));
            paramString = (String)localObject1;
            b.add(localObject2);
          }
        }
        l2 = System.currentTimeMillis();
      }
      finally
      {
        localObject1 = paramString;
        paramString = (String)localObject3;
      }
    }
    finally
    {
      for (;;)
      {
        long l2;
        localObject1 = null;
      }
    }
    l.e(getClass().getSimpleName(), l2 - l1 + " ms @" + a + " in DB!");
    l.e(getClass().getSimpleName(), c + "/" + d + " @" + a + " in DB!");
    if (localObject1 != null) {
      ((Cursor)localObject1).close();
    }
    throw paramString;
    label610:
    l2 = System.currentTimeMillis();
    l.e(getClass().getSimpleName(), l2 - l1 + " ms @" + a + " in DB!");
    l.e(getClass().getSimpleName(), c + "/" + d + " @" + a + " in DB!");
    if (localObject1 != null) {
      ((Cursor)localObject1).close();
    }
  }
  
  public void b() {}
  
  public final int c()
  {
    return c;
  }
  
  public final long d()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */