package com.estrongs.android.ui.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.os.Environment;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class e
{
  private static int a;
  private static List<d> b = new ArrayList();
  
  public static int a()
  {
    synchronized (b)
    {
      int i = a;
      return i;
    }
  }
  
  public static int a(String paramString)
  {
    if (paramString == null) {
      return 0;
    }
    for (;;)
    {
      int i;
      synchronized (b)
      {
        int j = am.G(paramString);
        i = 0;
        if (i < b.size())
        {
          d locald = (d)b.get(i);
          int k = am.G(locald.b());
          if ((j != k) && ((!am.a(k)) || (!am.a(j)))) {
            break label161;
          }
          locald.a(paramString);
          return i;
        }
        if (b.size() < 12)
        {
          b.add(new d(paramString));
          i = b.size();
          return i - 1;
        }
      }
      ((d)b.get(11)).a(paramString);
      return 11;
      label161:
      i += 1;
    }
  }
  
  public static void a(int paramInt)
  {
    int i = paramInt;
    if (paramInt >= c()) {
      i = 0;
    }
    a = i;
  }
  
  public static void a(Context paramContext)
  {
    JSONArray localJSONArray = new JSONArray();
    try
    {
      synchronized (b)
      {
        Iterator localIterator = b.iterator();
        while (localIterator.hasNext())
        {
          d locald = (d)localIterator.next();
          if (locald.a() != -1)
          {
            JSONObject localJSONObject = new JSONObject();
            localJSONObject.put("key_window_path", locald.b());
            localJSONArray.put(localJSONObject);
          }
        }
      }
    }
    catch (Exception paramContext)
    {
      return;
    }
    paramContext = paramContext.getSharedPreferences("cached_windows", 0).edit();
    paramContext.putString("key_windows", localJSONArray.toString());
    paramContext.commit();
  }
  
  public static void a(d paramd)
  {
    try
    {
      synchronized (b)
      {
        b.add(paramd);
        return;
      }
      return;
    }
    catch (Exception paramd) {}
  }
  
  public static void a(d paramd, int paramInt)
  {
    try
    {
      synchronized (b)
      {
        if (paramInt >= b.size())
        {
          b.add(paramd);
          return;
        }
        b.add(paramInt, paramd);
      }
      return;
    }
    catch (Exception paramd) {}
  }
  
  public static int b(d paramd)
  {
    List localList = b;
    int i = 0;
    for (;;)
    {
      try
      {
        if (i < b.size())
        {
          if (paramd == b.get(i)) {
            return i;
          }
        }
        else {
          return -1;
        }
      }
      finally {}
      i += 1;
    }
  }
  
  public static d b()
  {
    synchronized (b)
    {
      if (bd.a(b, a))
      {
        d locald = (d)b.get(a);
        return locald;
      }
      return null;
    }
  }
  
  public static void b(Context paramContext)
  {
    synchronized (b)
    {
      ad localad = ad.a(paramContext);
      LinkedList localLinkedList = localad.M();
      b = new ArrayList();
      if (!"mounted".equals(Environment.getExternalStorageState())) {}
      do
      {
        b.add(new d(b.b()));
        Iterator localIterator;
        while (!localIterator.hasNext())
        {
          return;
          localIterator = localLinkedList.iterator();
        }
        localObject = (String)localIterator.next();
        paramContext = (Context)localObject;
        if ("#home#".equals(localObject)) {
          paramContext = localad.j("market");
        }
        localObject = paramContext;
        if (paramContext == null) {
          break;
        }
        localObject = paramContext;
        if (!z.n) {
          break;
        }
        localObject = paramContext;
        if (!paramContext.equals("/")) {
          break;
        }
      } while (localLinkedList.size() > 1);
      Object localObject = "/sdcard";
      b.add(new d((String)localObject));
    }
  }
  
  public static boolean b(int paramInt)
  {
    if (paramInt < 0) {
      return false;
    }
    synchronized (b)
    {
      if ((b.size() > 1) && (b.size() > paramInt))
      {
        d locald = (d)b.remove(paramInt);
        if ((paramInt <= a) || (a == c())) {
          a -= 1;
        }
        if (locald.c() != null) {
          locald.c().recycle();
        }
        return true;
      }
      return false;
    }
  }
  
  public static int c()
  {
    synchronized (b)
    {
      int i = b.size();
      return i;
    }
  }
  
  public static d c(int paramInt)
  {
    synchronized (b)
    {
      if (bd.a(b, paramInt))
      {
        d locald = (d)b.get(paramInt);
        return locald;
      }
      return d.b;
    }
  }
  
  public static void d()
  {
    synchronized (b)
    {
      a = 0;
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        d locald = (d)localIterator.next();
        if ((locald.c() != null) && (!locald.c().isRecycled())) {
          locald.c().recycle();
        }
      }
    }
    b.clear();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.d.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */