package com.estrongs.android.ui.guesture;

import android.gesture.Gesture;
import android.gesture.GestureStore;
import android.gesture.Prediction;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.z;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.impl.local.i;
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
  public static boolean b = false;
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
    //   0: invokestatic 124	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   3: invokestatic 129	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   6: invokevirtual 132	com/estrongs/android/pop/ad:am	()Z
    //   9: putstatic 55	com/estrongs/android/ui/guesture/b:b	Z
    //   12: getstatic 57	com/estrongs/android/ui/guesture/b:f	Z
    //   15: ifeq +4 -> 19
    //   18: return
    //   19: aconst_null
    //   20: astore_0
    //   21: aload_0
    //   22: astore_1
    //   23: getstatic 53	com/estrongs/android/ui/guesture/b:e	Ljava/util/HashSet;
    //   26: invokevirtual 135	java/util/HashSet:clear	()V
    //   29: aload_0
    //   30: astore_1
    //   31: new 45	android/gesture/GestureStore
    //   34: dup
    //   35: invokespecial 46	android/gesture/GestureStore:<init>	()V
    //   38: astore_3
    //   39: aload_0
    //   40: astore_1
    //   41: getstatic 43	com/estrongs/android/ui/guesture/b:c	Ljava/lang/String;
    //   44: invokestatic 139	com/estrongs/fs/impl/local/i:a	(Ljava/lang/String;)Z
    //   47: ifeq +156 -> 203
    //   50: aload_0
    //   51: astore_1
    //   52: invokestatic 124	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   55: getstatic 43	com/estrongs/android/ui/guesture/b:c	Ljava/lang/String;
    //   58: invokestatic 142	com/estrongs/fs/impl/local/i:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    //   61: astore_0
    //   62: aload_0
    //   63: astore_2
    //   64: aload_0
    //   65: astore_1
    //   66: aload_3
    //   67: aload_0
    //   68: invokevirtual 146	android/gesture/GestureStore:load	(Ljava/io/InputStream;)V
    //   71: aload_0
    //   72: astore_2
    //   73: aload_0
    //   74: astore_1
    //   75: aload_0
    //   76: invokevirtual 151	java/io/InputStream:close	()V
    //   79: aload_3
    //   80: putstatic 48	com/estrongs/android/ui/guesture/b:d	Landroid/gesture/GestureStore;
    //   83: new 153	java/util/LinkedList
    //   86: dup
    //   87: invokespecial 154	java/util/LinkedList:<init>	()V
    //   90: putstatic 156	com/estrongs/android/ui/guesture/b:g	Ljava/util/List;
    //   93: getstatic 48	com/estrongs/android/ui/guesture/b:d	Landroid/gesture/GestureStore;
    //   96: invokevirtual 160	android/gesture/GestureStore:getGestureEntries	()Ljava/util/Set;
    //   99: invokeinterface 166 1 0
    //   104: astore_1
    //   105: aload_1
    //   106: invokeinterface 171 1 0
    //   111: ifeq +46 -> 157
    //   114: aload_1
    //   115: invokeinterface 175 1 0
    //   120: checkcast 177	java/lang/String
    //   123: astore_2
    //   124: getstatic 156	com/estrongs/android/ui/guesture/b:g	Ljava/util/List;
    //   127: aload_2
    //   128: invokeinterface 182 2 0
    //   133: pop
    //   134: goto -29 -> 105
    //   137: astore_1
    //   138: aload_0
    //   139: astore_1
    //   140: aload_1
    //   141: astore_2
    //   142: iconst_0
    //   143: putstatic 57	com/estrongs/android/ui/guesture/b:f	Z
    //   146: aload_1
    //   147: ifnull -129 -> 18
    //   150: aload_1
    //   151: invokevirtual 151	java/io/InputStream:close	()V
    //   154: return
    //   155: astore_0
    //   156: return
    //   157: iconst_1
    //   158: putstatic 57	com/estrongs/android/ui/guesture/b:f	Z
    //   161: aload_0
    //   162: ifnull -144 -> 18
    //   165: aload_0
    //   166: invokevirtual 151	java/io/InputStream:close	()V
    //   169: return
    //   170: astore_0
    //   171: return
    //   172: astore_1
    //   173: aconst_null
    //   174: astore_0
    //   175: aload_0
    //   176: ifnull +7 -> 183
    //   179: aload_0
    //   180: invokevirtual 151	java/io/InputStream:close	()V
    //   183: aload_1
    //   184: athrow
    //   185: astore_0
    //   186: goto -3 -> 183
    //   189: astore_1
    //   190: aload_2
    //   191: astore_0
    //   192: goto -17 -> 175
    //   195: astore_1
    //   196: goto -21 -> 175
    //   199: astore_0
    //   200: goto -60 -> 140
    //   203: aconst_null
    //   204: astore_0
    //   205: goto -126 -> 79
    // Local variable table:
    //   start	length	slot	name	signature
    //   20	119	0	localInputStream1	java.io.InputStream
    //   155	11	0	localException1	Exception
    //   170	1	0	localException2	Exception
    //   174	6	0	localObject1	Object
    //   185	1	0	localException3	Exception
    //   191	1	0	localObject2	Object
    //   199	1	0	localException4	Exception
    //   204	1	0	localObject3	Object
    //   22	93	1	localObject4	Object
    //   137	1	1	localException5	Exception
    //   139	12	1	localInputStream2	java.io.InputStream
    //   172	12	1	localObject5	Object
    //   189	1	1	localObject6	Object
    //   195	1	1	localObject7	Object
    //   63	128	2	localObject8	Object
    //   38	42	3	localGestureStore	GestureStore
    // Exception table:
    //   from	to	target	type
    //   79	105	137	java/lang/Exception
    //   105	134	137	java/lang/Exception
    //   157	161	137	java/lang/Exception
    //   150	154	155	java/lang/Exception
    //   165	169	170	java/lang/Exception
    //   23	29	172	finally
    //   31	39	172	finally
    //   41	50	172	finally
    //   52	62	172	finally
    //   179	183	185	java/lang/Exception
    //   66	71	189	finally
    //   75	79	189	finally
    //   142	146	189	finally
    //   79	105	195	finally
    //   105	134	195	finally
    //   157	161	195	finally
    //   23	29	199	java/lang/Exception
    //   31	39	199	java/lang/Exception
    //   41	50	199	java/lang/Exception
    //   52	62	199	java/lang/Exception
    //   66	71	199	java/lang/Exception
    //   75	79	199	java/lang/Exception
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
      localObject5 = i.f(c);
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