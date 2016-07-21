package com.estrongs.android.a;

import android.database.DatabaseUtils;
import android.provider.MediaStore.Audio.Media;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video.Media;
import android.text.TextUtils;
import com.estrongs.android.a.a.g;
import com.estrongs.android.a.a.n;
import com.estrongs.android.a.b.a;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class q
{
  private static final String a = q.class.getSimpleName();
  private j b;
  private ExecutorService c;
  private final com.estrongs.android.a.a.q[] d = new com.estrongs.android.a.a.q[5];
  private final g[] e = new g[4];
  
  public q(j paramj)
  {
    b = paramj;
  }
  
  public static String b()
  {
    Object localObject = bg.c();
    if (localObject == null) {
      return null;
    }
    localObject = ((String)localObject).split(";");
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < localObject.length)
    {
      if (i > 0) {
        localStringBuffer.append(" or ");
      }
      localStringBuffer.append("_data").append(" like ").append(DatabaseUtils.sqlEscapeString("%" + localObject[i]));
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  private String d()
  {
    long l = System.currentTimeMillis() / 1000L;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("date_modified").append(">").append(l - 604800L);
    return localStringBuilder.toString();
  }
  
  private String e()
  {
    long l = System.currentTimeMillis() / 1000L;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("date_modified").append("<").append(l - 7776000L);
    return localStringBuilder.toString();
  }
  
  private String f()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("_data").append(" like ").append("'%").append(".log'").append(" or ");
    localStringBuilder.append("_data").append(" like ").append("'%").append(".temp'").append(" or ");
    localStringBuilder.append("_data").append(" like ").append("'%").append(".tmp'");
    return localStringBuilder.toString();
  }
  
  public static long g(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return 0L;
    }
    if (ap.bp(paramString))
    {
      paramString = com.estrongs.android.cleaner.j.d().iterator();
      long[] arrayOfLong;
      long l3;
      for (long l1 = 0L;; l1 = arrayOfLong[2] * (l2 - l3) + l1)
      {
        l2 = l1;
        if (!paramString.hasNext()) {
          break;
        }
        arrayOfLong = com.estrongs.fs.util.j.k((String)paramString.next());
        l2 = arrayOfLong[0];
        l3 = arrayOfLong[1];
      }
    }
    if (paramString.startsWith("/")) {
      paramString = com.estrongs.fs.util.j.k(paramString);
    }
    for (long l2 = (paramString[0] - paramString[1]) * paramString[2];; l2 = 0L) {
      return l2;
    }
  }
  
  private String g()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("_size").append(">").append(10485760L);
    return localStringBuilder.toString();
  }
  
  private String h()
  {
    return "_data like " + DatabaseUtils.sqlEscapeString("%.apk");
  }
  
  private void h(String paramString)
  {
    d[0] = new com.estrongs.android.a.a.q(h());
    d[1] = new com.estrongs.android.a.a.q(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI);
    d[3] = new com.estrongs.android.a.a.q(MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
    d[2] = new com.estrongs.android.a.a.q(MediaStore.Video.Media.EXTERNAL_CONTENT_URI);
    d[4] = new com.estrongs.android.a.a.q(b());
    e[1] = new g(e());
    e[2] = new g(d());
    e[3] = new g(f());
    e[0] = new g(g());
  }
  
  public void a()
  {
    try
    {
      if (c != null)
      {
        c.shutdownNow();
        c = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(String paramString)
  {
    int k = 0;
    l.c(a, "analyze files in the library...");
    h(paramString);
    int i = d.length + e.length;
    ArrayList localArrayList = new ArrayList(i);
    Object localObject = new u(this, null);
    ArrayBlockingQueue localArrayBlockingQueue = new ArrayBlockingQueue(i);
    c = new ThreadPoolExecutor(5, 5, 0L, TimeUnit.SECONDS, localArrayBlockingQueue, (ThreadFactory)localObject);
    i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i >= d.length) {
        break;
      }
      if (d[i] != null)
      {
        localObject = new s(this, paramString, d[i]);
        localArrayList.add(c.submit((Callable)localObject));
      }
      i += 1;
    }
    while (j < e.length)
    {
      if (e[j] != null)
      {
        localObject = new s(this, paramString, e[j]);
        localArrayList.add(c.submit((Callable)localObject));
      }
      j += 1;
    }
    c.execute(new r(this, localArrayList, paramString));
  }
  
  public final void a(List<com.estrongs.android.a.b.q> paramList) {}
  
  public a b(String paramString)
  {
    int i = 0;
    long l2 = 0L;
    if (TextUtils.isEmpty(paramString)) {
      return new a(0L);
    }
    if (ap.V(paramString)) {
      paramString = d[1];
    }
    for (;;)
    {
      return new a(0, paramString.c(), paramString.d());
      if (ap.X(paramString))
      {
        paramString = d[3];
      }
      else if (ap.Z(paramString))
      {
        paramString = d[2];
      }
      else if (ap.ae(paramString))
      {
        paramString = d[4];
      }
      else
      {
        if (!ap.ag(paramString)) {
          break;
        }
        paramString = d[0];
      }
    }
    com.estrongs.android.a.a.q[] arrayOfq = d;
    int j = arrayOfq.length;
    long l1 = 0L;
    while (i < j)
    {
      l1 += arrayOfq[i].d();
      i += 1;
    }
    long l3 = g(paramString);
    if (l3 == 0L) {}
    for (l1 = l2;; l1 = l3 - l1) {
      return new a(l1);
    }
  }
  
  public final a c(String paramString)
  {
    return e[0].a();
  }
  
  public final a d(String paramString)
  {
    return e[2].a();
  }
  
  public final a e(String paramString)
  {
    return e[1].a();
  }
  
  public final a f(String paramString)
  {
    return e[3].a();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */