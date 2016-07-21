package com.estrongs.android.ui.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.os.Environment;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.bk;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class i
{
  private int a;
  private CopyOnWriteArrayList<h> b = new CopyOnWriteArrayList();
  
  public int a()
  {
    synchronized (b)
    {
      int i = a;
      return i;
    }
  }
  
  /* Error */
  public int a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 18	com/estrongs/android/ui/d/i:b	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   4: astore 5
    //   6: aload 5
    //   8: monitorenter
    //   9: aload_1
    //   10: ifnonnull +8 -> 18
    //   13: aload 5
    //   15: monitorexit
    //   16: iconst_0
    //   17: ireturn
    //   18: aload_1
    //   19: invokestatic 27	com/estrongs/android/util/ap:I	(Ljava/lang/String;)I
    //   22: istore_3
    //   23: iconst_0
    //   24: istore_2
    //   25: iload_2
    //   26: aload_0
    //   27: getfield 18	com/estrongs/android/ui/d/i:b	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   30: invokevirtual 30	java/util/concurrent/CopyOnWriteArrayList:size	()I
    //   33: if_icmpge +58 -> 91
    //   36: aload_0
    //   37: getfield 18	com/estrongs/android/ui/d/i:b	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   40: iload_2
    //   41: invokevirtual 34	java/util/concurrent/CopyOnWriteArrayList:get	(I)Ljava/lang/Object;
    //   44: checkcast 36	com/estrongs/android/ui/d/h
    //   47: astore 6
    //   49: aload 6
    //   51: invokevirtual 39	com/estrongs/android/ui/d/h:a	()Ljava/lang/String;
    //   54: invokestatic 27	com/estrongs/android/util/ap:I	(Ljava/lang/String;)I
    //   57: istore 4
    //   59: iload_3
    //   60: iload 4
    //   62: if_icmpeq +18 -> 80
    //   65: iload 4
    //   67: invokestatic 42	com/estrongs/android/util/ap:a	(I)Z
    //   70: ifeq +92 -> 162
    //   73: iload_3
    //   74: invokestatic 42	com/estrongs/android/util/ap:a	(I)Z
    //   77: ifeq +85 -> 162
    //   80: aload 6
    //   82: aload_1
    //   83: invokevirtual 45	com/estrongs/android/ui/d/h:a	(Ljava/lang/String;)V
    //   86: aload 5
    //   88: monitorexit
    //   89: iload_2
    //   90: ireturn
    //   91: aload_0
    //   92: getfield 18	com/estrongs/android/ui/d/i:b	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   95: invokevirtual 30	java/util/concurrent/CopyOnWriteArrayList:size	()I
    //   98: bipush 12
    //   100: if_icmpge +40 -> 140
    //   103: aload_0
    //   104: getfield 18	com/estrongs/android/ui/d/i:b	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   107: new 36	com/estrongs/android/ui/d/h
    //   110: dup
    //   111: aload_1
    //   112: invokespecial 47	com/estrongs/android/ui/d/h:<init>	(Ljava/lang/String;)V
    //   115: invokevirtual 51	java/util/concurrent/CopyOnWriteArrayList:add	(Ljava/lang/Object;)Z
    //   118: pop
    //   119: aload_0
    //   120: getfield 18	com/estrongs/android/ui/d/i:b	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   123: invokevirtual 30	java/util/concurrent/CopyOnWriteArrayList:size	()I
    //   126: istore_2
    //   127: aload 5
    //   129: monitorexit
    //   130: iload_2
    //   131: iconst_1
    //   132: isub
    //   133: ireturn
    //   134: astore_1
    //   135: aload 5
    //   137: monitorexit
    //   138: aload_1
    //   139: athrow
    //   140: aload_0
    //   141: getfield 18	com/estrongs/android/ui/d/i:b	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   144: bipush 11
    //   146: invokevirtual 34	java/util/concurrent/CopyOnWriteArrayList:get	(I)Ljava/lang/Object;
    //   149: checkcast 36	com/estrongs/android/ui/d/h
    //   152: aload_1
    //   153: invokevirtual 45	com/estrongs/android/ui/d/h:a	(Ljava/lang/String;)V
    //   156: aload 5
    //   158: monitorexit
    //   159: bipush 11
    //   161: ireturn
    //   162: iload_2
    //   163: iconst_1
    //   164: iadd
    //   165: istore_2
    //   166: goto -141 -> 25
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	169	0	this	i
    //   0	169	1	paramString	String
    //   24	142	2	i	int
    //   22	52	3	j	int
    //   57	9	4	k	int
    //   4	153	5	localCopyOnWriteArrayList	CopyOnWriteArrayList
    //   47	34	6	localh	h
    // Exception table:
    //   from	to	target	type
    //   13	16	134	finally
    //   18	23	134	finally
    //   25	59	134	finally
    //   65	80	134	finally
    //   80	89	134	finally
    //   91	130	134	finally
    //   135	138	134	finally
    //   140	159	134	finally
  }
  
  public void a(int paramInt)
  {
    CopyOnWriteArrayList localCopyOnWriteArrayList = b;
    int i = paramInt;
    try
    {
      if (paramInt >= c()) {
        i = 0;
      }
      a = i;
      return;
    }
    finally {}
  }
  
  public void a(Context paramContext)
  {
    synchronized (b)
    {
      JSONArray localJSONArray = new JSONArray();
      try
      {
        Iterator localIterator = b.iterator();
        while (localIterator.hasNext())
        {
          h localh = (h)localIterator.next();
          if (localh.c() != -1)
          {
            JSONObject localJSONObject = new JSONObject();
            localJSONObject.put("key_window_path", localh.a());
            localJSONArray.put(localJSONObject);
          }
        }
        paramContext = paramContext.getSharedPreferences("cached_windows", 0).edit();
      }
      catch (Exception paramContext)
      {
        return;
      }
      paramContext.putString("key_windows", localJSONArray.toString());
      paramContext.commit();
    }
  }
  
  public void a(h paramh)
  {
    synchronized (b)
    {
      b.add(paramh);
      return;
    }
  }
  
  public void a(h paramh, int paramInt)
  {
    synchronized (b)
    {
      if (paramInt >= b.size())
      {
        b.add(paramh);
        return;
      }
      b.add(paramInt, paramh);
    }
  }
  
  public int b(h paramh)
  {
    CopyOnWriteArrayList localCopyOnWriteArrayList = b;
    int i = 0;
    for (;;)
    {
      try
      {
        if (i < b.size())
        {
          if (paramh == b.get(i)) {
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
  
  public h b()
  {
    synchronized (b)
    {
      if (bk.a(b, a))
      {
        h localh = (h)b.get(a);
        return localh;
      }
      return null;
    }
  }
  
  public void b(Context paramContext)
  {
    synchronized (b)
    {
      ad localad = ad.a(paramContext);
      ArrayList localArrayList = localad.N();
      b.clear();
      if (!"mounted".equals(Environment.getExternalStorageState())) {}
      do
      {
        do
        {
          b.add(new h(b.b()));
          Iterator localIterator;
          while (!localIterator.hasNext())
          {
            return;
            localIterator = localArrayList.iterator();
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
        } while (localArrayList.size() > 1);
        Object localObject = "/sdcard";
        paramContext = new h((String)localObject);
      } while (-11 == paramContext.c());
      b.add(paramContext);
    }
  }
  
  /* Error */
  public boolean b(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 18	com/estrongs/android/ui/d/i:b	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: iload_1
    //   8: ifge +7 -> 15
    //   11: aload_2
    //   12: monitorexit
    //   13: iconst_0
    //   14: ireturn
    //   15: aload_0
    //   16: getfield 18	com/estrongs/android/ui/d/i:b	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   19: astore_3
    //   20: aload_3
    //   21: monitorenter
    //   22: aload_0
    //   23: getfield 18	com/estrongs/android/ui/d/i:b	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   26: invokevirtual 30	java/util/concurrent/CopyOnWriteArrayList:size	()I
    //   29: iconst_1
    //   30: if_icmple +78 -> 108
    //   33: aload_0
    //   34: getfield 18	com/estrongs/android/ui/d/i:b	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   37: invokevirtual 30	java/util/concurrent/CopyOnWriteArrayList:size	()I
    //   40: iload_1
    //   41: if_icmple +67 -> 108
    //   44: aload_0
    //   45: getfield 18	com/estrongs/android/ui/d/i:b	Ljava/util/concurrent/CopyOnWriteArrayList;
    //   48: iload_1
    //   49: invokevirtual 181	java/util/concurrent/CopyOnWriteArrayList:remove	(I)Ljava/lang/Object;
    //   52: checkcast 36	com/estrongs/android/ui/d/h
    //   55: astore 4
    //   57: iload_1
    //   58: aload_0
    //   59: getfield 22	com/estrongs/android/ui/d/i:a	I
    //   62: if_icmple +14 -> 76
    //   65: aload_0
    //   66: getfield 22	com/estrongs/android/ui/d/i:a	I
    //   69: aload_0
    //   70: invokevirtual 55	com/estrongs/android/ui/d/i:c	()I
    //   73: if_icmpne +13 -> 86
    //   76: aload_0
    //   77: aload_0
    //   78: getfield 22	com/estrongs/android/ui/d/i:a	I
    //   81: iconst_1
    //   82: isub
    //   83: putfield 22	com/estrongs/android/ui/d/i:a	I
    //   86: aload 4
    //   88: invokevirtual 184	com/estrongs/android/ui/d/h:b	()Landroid/graphics/Bitmap;
    //   91: ifnull +11 -> 102
    //   94: aload 4
    //   96: invokevirtual 184	com/estrongs/android/ui/d/h:b	()Landroid/graphics/Bitmap;
    //   99: invokevirtual 189	android/graphics/Bitmap:recycle	()V
    //   102: aload_3
    //   103: monitorexit
    //   104: aload_2
    //   105: monitorexit
    //   106: iconst_1
    //   107: ireturn
    //   108: aload_3
    //   109: monitorexit
    //   110: aload_2
    //   111: monitorexit
    //   112: iconst_0
    //   113: ireturn
    //   114: astore_3
    //   115: aload_2
    //   116: monitorexit
    //   117: aload_3
    //   118: athrow
    //   119: astore 4
    //   121: aload_3
    //   122: monitorexit
    //   123: aload 4
    //   125: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	i
    //   0	126	1	paramInt	int
    //   4	112	2	localCopyOnWriteArrayList1	CopyOnWriteArrayList
    //   114	8	3	localObject1	Object
    //   55	40	4	localh	h
    //   119	5	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   11	13	114	finally
    //   15	22	114	finally
    //   104	106	114	finally
    //   110	112	114	finally
    //   115	117	114	finally
    //   123	126	114	finally
    //   22	76	119	finally
    //   76	86	119	finally
    //   86	102	119	finally
    //   102	104	119	finally
    //   108	110	119	finally
    //   121	123	119	finally
  }
  
  public int c()
  {
    synchronized (b)
    {
      int i = b.size();
      return i;
    }
  }
  
  public h c(int paramInt)
  {
    synchronized (b)
    {
      if (bk.a(b, paramInt))
      {
        localh = (h)b.get(paramInt);
        return localh;
      }
      h localh = h.a;
      return localh;
    }
  }
  
  public void d()
  {
    synchronized (b)
    {
      a = 0;
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        h localh = (h)localIterator.next();
        if ((localh.b() != null) && (!localh.b().isRecycled())) {
          localh.b().recycle();
        }
      }
    }
    b.clear();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.d.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */