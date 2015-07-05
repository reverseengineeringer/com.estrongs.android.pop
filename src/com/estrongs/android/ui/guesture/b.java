package com.estrongs.android.ui.guesture;

import android.gesture.Gesture;
import android.gesture.GestureStore;
import android.gesture.Prediction;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.z;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.impl.local.h;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class b
{
  public static boolean a = true;
  public static boolean b = true;
  private static final String c = a.b + "/gestures";
  private static GestureStore d = new GestureStore();
  private static HashSet<String> e = new HashSet();
  private static boolean f = false;
  private static List<String> g;
  
  public static String a(Gesture paramGesture)
  {
    if (!b)
    {
      paramGesture = null;
      return paramGesture;
    }
    ArrayList localArrayList = d.recognize(paramGesture);
    if ((localArrayList == null) || (localArrayList.size() <= 0)) {
      return null;
    }
    int i = 0;
    for (;;)
    {
      if (i >= localArrayList.size()) {
        break label111;
      }
      if (Double.isNaN(getscore)) {
        return null;
      }
      if (getscore < 2.0D) {
        return null;
      }
      String str = getname;
      paramGesture = str;
      if (!e.contains(str)) {
        break;
      }
      i += 1;
    }
    label111:
    return null;
  }
  
  public static void a() {}
  
  public static boolean a(String paramString)
  {
    ArrayList localArrayList = d.getGestures(paramString);
    d.removeEntry(paramString);
    if (!e())
    {
      if (localArrayList.size() > 0) {
        d.addGesture(paramString, (Gesture)localArrayList.get(0));
      }
      return false;
    }
    return true;
  }
  
  public static boolean a(String paramString, Gesture paramGesture)
  {
    d.removeEntry(paramString);
    d.addGesture(paramString, paramGesture);
    b(paramString);
    if (!e())
    {
      d.removeEntry(paramString);
      return false;
    }
    return true;
  }
  
  /* Error */
  public static void b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: getstatic 57	com/estrongs/android/ui/guesture/b:f	Z
    //   5: ifeq +4 -> 9
    //   8: return
    //   9: aload_0
    //   10: astore_1
    //   11: invokestatic 124	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   14: invokestatic 129	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   17: invokevirtual 132	com/estrongs/android/pop/ad:al	()Z
    //   20: putstatic 55	com/estrongs/android/ui/guesture/b:b	Z
    //   23: aload_0
    //   24: astore_1
    //   25: getstatic 53	com/estrongs/android/ui/guesture/b:e	Ljava/util/HashSet;
    //   28: invokevirtual 135	java/util/HashSet:clear	()V
    //   31: aload_0
    //   32: astore_1
    //   33: new 45	android/gesture/GestureStore
    //   36: dup
    //   37: invokespecial 46	android/gesture/GestureStore:<init>	()V
    //   40: astore_3
    //   41: aload_0
    //   42: astore_1
    //   43: getstatic 43	com/estrongs/android/ui/guesture/b:c	Ljava/lang/String;
    //   46: invokestatic 139	com/estrongs/fs/impl/local/h:a	(Ljava/lang/String;)Z
    //   49: ifeq +156 -> 205
    //   52: aload_0
    //   53: astore_1
    //   54: invokestatic 124	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   57: getstatic 43	com/estrongs/android/ui/guesture/b:c	Ljava/lang/String;
    //   60: invokestatic 142	com/estrongs/fs/impl/local/h:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    //   63: astore_0
    //   64: aload_0
    //   65: astore_2
    //   66: aload_0
    //   67: astore_1
    //   68: aload_3
    //   69: aload_0
    //   70: invokevirtual 146	android/gesture/GestureStore:load	(Ljava/io/InputStream;)V
    //   73: aload_0
    //   74: astore_2
    //   75: aload_0
    //   76: astore_1
    //   77: aload_0
    //   78: invokevirtual 151	java/io/InputStream:close	()V
    //   81: aload_3
    //   82: putstatic 48	com/estrongs/android/ui/guesture/b:d	Landroid/gesture/GestureStore;
    //   85: new 153	java/util/LinkedList
    //   88: dup
    //   89: invokespecial 154	java/util/LinkedList:<init>	()V
    //   92: putstatic 156	com/estrongs/android/ui/guesture/b:g	Ljava/util/List;
    //   95: getstatic 48	com/estrongs/android/ui/guesture/b:d	Landroid/gesture/GestureStore;
    //   98: invokevirtual 160	android/gesture/GestureStore:getGestureEntries	()Ljava/util/Set;
    //   101: invokeinterface 166 1 0
    //   106: astore_1
    //   107: aload_1
    //   108: invokeinterface 171 1 0
    //   113: ifeq +46 -> 159
    //   116: aload_1
    //   117: invokeinterface 175 1 0
    //   122: checkcast 177	java/lang/String
    //   125: astore_2
    //   126: getstatic 156	com/estrongs/android/ui/guesture/b:g	Ljava/util/List;
    //   129: aload_2
    //   130: invokeinterface 182 2 0
    //   135: pop
    //   136: goto -29 -> 107
    //   139: astore_1
    //   140: aload_0
    //   141: astore_1
    //   142: aload_1
    //   143: astore_2
    //   144: iconst_0
    //   145: putstatic 57	com/estrongs/android/ui/guesture/b:f	Z
    //   148: aload_1
    //   149: ifnull -141 -> 8
    //   152: aload_1
    //   153: invokevirtual 151	java/io/InputStream:close	()V
    //   156: return
    //   157: astore_0
    //   158: return
    //   159: iconst_1
    //   160: putstatic 57	com/estrongs/android/ui/guesture/b:f	Z
    //   163: aload_0
    //   164: ifnull -156 -> 8
    //   167: aload_0
    //   168: invokevirtual 151	java/io/InputStream:close	()V
    //   171: return
    //   172: astore_0
    //   173: return
    //   174: astore_1
    //   175: aconst_null
    //   176: astore_0
    //   177: aload_0
    //   178: ifnull +7 -> 185
    //   181: aload_0
    //   182: invokevirtual 151	java/io/InputStream:close	()V
    //   185: aload_1
    //   186: athrow
    //   187: astore_0
    //   188: goto -3 -> 185
    //   191: astore_1
    //   192: aload_2
    //   193: astore_0
    //   194: goto -17 -> 177
    //   197: astore_1
    //   198: goto -21 -> 177
    //   201: astore_0
    //   202: goto -60 -> 142
    //   205: aconst_null
    //   206: astore_0
    //   207: goto -126 -> 81
    // Local variable table:
    //   start	length	slot	name	signature
    //   1	140	0	localInputStream1	java.io.InputStream
    //   157	11	0	localException1	Exception
    //   172	1	0	localException2	Exception
    //   176	6	0	localObject1	Object
    //   187	1	0	localException3	Exception
    //   193	1	0	localObject2	Object
    //   201	1	0	localException4	Exception
    //   206	1	0	localObject3	Object
    //   10	107	1	localObject4	Object
    //   139	1	1	localException5	Exception
    //   141	12	1	localInputStream2	java.io.InputStream
    //   174	12	1	localObject5	Object
    //   191	1	1	localObject6	Object
    //   197	1	1	localObject7	Object
    //   65	128	2	localObject8	Object
    //   40	42	3	localGestureStore	GestureStore
    // Exception table:
    //   from	to	target	type
    //   81	107	139	java/lang/Exception
    //   107	136	139	java/lang/Exception
    //   159	163	139	java/lang/Exception
    //   152	156	157	java/lang/Exception
    //   167	171	172	java/lang/Exception
    //   11	23	174	finally
    //   25	31	174	finally
    //   33	41	174	finally
    //   43	52	174	finally
    //   54	64	174	finally
    //   181	185	187	java/lang/Exception
    //   68	73	191	finally
    //   77	81	191	finally
    //   144	148	191	finally
    //   81	107	197	finally
    //   107	136	197	finally
    //   159	163	197	finally
    //   11	23	201	java/lang/Exception
    //   25	31	201	java/lang/Exception
    //   33	41	201	java/lang/Exception
    //   43	52	201	java/lang/Exception
    //   54	64	201	java/lang/Exception
    //   68	73	201	java/lang/Exception
    //   77	81	201	java/lang/Exception
  }
  
  public static void b(String paramString)
  {
    e.remove(paramString);
  }
  
  public static Gesture c(String paramString)
  {
    paramString = d.getGestures(paramString);
    if ((paramString == null) || (paramString.size() <= 0)) {
      return null;
    }
    return (Gesture)paramString.get(0);
  }
  
  public static List<String> c()
  {
    return g;
  }
  
  public static boolean d()
  {
    return (!z.R) && (f);
  }
  
  public static boolean e()
  {
    Object localObject4 = null;
    Object localObject1 = null;
    Object localObject2 = null;
    Object localObject5 = new File(a.b);
    if ((!((File)localObject5).exists()) && (!((File)localObject5).mkdir())) {
      return false;
    }
    try
    {
      localObject5 = h.f(c);
      localObject2 = localObject5;
      localObject4 = localObject5;
      localObject1 = localObject5;
      d.save((OutputStream)localObject5);
      localObject2 = localObject5;
      localObject4 = localObject5;
      localObject1 = localObject5;
      g = new LinkedList();
      localObject2 = localObject5;
      localObject4 = localObject5;
      localObject1 = localObject5;
      Iterator localIterator = d.getGestureEntries().iterator();
      for (;;)
      {
        localObject2 = localObject5;
        localObject4 = localObject5;
        localObject1 = localObject5;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject2 = localObject5;
        localObject4 = localObject5;
        localObject1 = localObject5;
        String str = (String)localIterator.next();
        localObject2 = localObject5;
        localObject4 = localObject5;
        localObject1 = localObject5;
        g.add(str);
      }
      FileSystemException localFileSystemException1;
      return false;
    }
    catch (FileSystemException localFileSystemException2)
    {
      localObject1 = localObject2;
      localFileSystemException2.printStackTrace();
      if (localObject2 != null) {}
      try
      {
        ((OutputStream)localObject2).close();
        return false;
      }
      catch (IOException localIOException2)
      {
        localIOException2.printStackTrace();
        return false;
      }
      if (localObject5 != null) {}
      try
      {
        ((OutputStream)localObject5).close();
        return true;
      }
      catch (IOException localIOException1)
      {
        localIOException1.printStackTrace();
        return false;
      }
    }
    catch (IOException localIOException5)
    {
      localFileSystemException1 = localFileSystemException2;
      localIOException5.printStackTrace();
      if (localFileSystemException2 != null) {}
      try
      {
        localFileSystemException2.close();
        return false;
      }
      catch (IOException localIOException3)
      {
        localIOException3.printStackTrace();
        return false;
      }
    }
    finally
    {
      if (localIOException3 != null) {}
      try
      {
        localIOException3.close();
        throw ((Throwable)localObject3);
      }
      catch (IOException localIOException4)
      {
        localIOException4.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.guesture.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */