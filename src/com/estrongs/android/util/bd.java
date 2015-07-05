package com.estrongs.android.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.pop.utils.cl;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.Array;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class bd
{
  public static final DateFormat a = new SimpleDateFormat();
  public static final Date b = new GregorianCalendar(1900, 1, 1).getTime();
  static Object c = new Object();
  static Handler d = null;
  private static int e = 93;
  private static final TypedMap f = new TypedMap();
  
  static
  {
    f.put("ftp", Integer.valueOf(21));
    f.put("ftps", Integer.valueOf(990));
    f.put("ftpes", Integer.valueOf(990));
    f.put("sftp", Integer.valueOf(22));
  }
  
  public static int a(Context paramContext, int paramInt)
  {
    try
    {
      paramContext = paramContext.getResources().openRawResource(paramInt);
      paramInt = paramContext.available();
      paramContext.printStackTrace();
    }
    catch (Exception paramContext)
    {
      try
      {
        paramContext.close();
        return paramInt;
      }
      catch (Exception paramContext)
      {
        for (;;) {}
      }
      paramContext = paramContext;
      paramInt = -1;
    }
    return paramInt;
  }
  
  public static int a(Object paramObject)
  {
    if (paramObject == null) {}
    for (paramObject = null;; paramObject = paramObject.toString()) {
      return a((String)paramObject, 0);
    }
  }
  
  public static int a(Object paramObject, int paramInt)
  {
    if (paramObject == null) {
      return paramInt;
    }
    if ((paramObject instanceof String)) {
      return a((String)paramObject, paramInt);
    }
    return a(paramObject.toString(), paramInt);
  }
  
  public static int a(String paramString)
  {
    return a(paramString, 0);
  }
  
  public static int a(String paramString, int paramInt)
  {
    return (int)a(paramString, paramInt);
  }
  
  public static long a(Object paramObject, long paramLong)
  {
    if (paramObject == null) {}
    for (paramObject = null;; paramObject = paramObject.toString()) {
      return a((String)paramObject, paramLong);
    }
  }
  
  public static long a(String paramString, long paramLong)
  {
    if ((paramString == null) || (paramString.equals(""))) {
      return paramLong;
    }
    try
    {
      String str = paramString.trim().replaceAll(",", "");
      int i = str.indexOf(".");
      paramString = str;
      if (i > 0) {
        paramString = str.substring(0, i);
      }
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (Exception paramString) {}
    return paramLong;
  }
  
  public static String a(Uri paramUri)
  {
    if (paramUri == null) {
      return null;
    }
    return Uri.decode(paramUri.toString());
  }
  
  /* Error */
  public static String a(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: new 151	com/estrongs/android/util/j
    //   3: dup
    //   4: ldc -103
    //   6: invokespecial 156	com/estrongs/android/util/j:<init>	(Ljava/lang/String;)V
    //   9: aload_0
    //   10: invokevirtual 160	java/lang/String:getBytes	()[B
    //   13: invokevirtual 163	com/estrongs/android/util/j:b	([B)[B
    //   16: invokestatic 169	com/estrongs/android/pop/netfs/utils/HttpUtils:base64Encode	([B)Ljava/lang/String;
    //   19: astore_0
    //   20: aload_0
    //   21: astore_2
    //   22: iload_1
    //   23: ifeq +8 -> 31
    //   26: aload_0
    //   27: invokestatic 174	com/estrongs/android/util/am:bi	(Ljava/lang/String;)Ljava/lang/String;
    //   30: astore_2
    //   31: aload_2
    //   32: areturn
    //   33: astore_2
    //   34: aconst_null
    //   35: astore_0
    //   36: aload_2
    //   37: invokevirtual 94	java/lang/Exception:printStackTrace	()V
    //   40: aload_0
    //   41: areturn
    //   42: astore_2
    //   43: goto -7 -> 36
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	46	0	paramString	String
    //   0	46	1	paramBoolean	boolean
    //   21	11	2	str	String
    //   33	4	2	localException1	Exception
    //   42	1	2	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	20	33	java/lang/Exception
    //   26	31	42	java/lang/Exception
  }
  
  public static Date a(String paramString, DateFormat paramDateFormat)
  {
    if (paramDateFormat != null) {}
    try
    {
      return paramDateFormat.parse(paramString);
    }
    catch (ParseException paramString)
    {
      for (;;)
      {
        System.err.print(paramString.getMessage());
      }
    }
    a.parse(paramString);
    return b;
  }
  
  public static <T> List<String> a(List<T> paramList)
  {
    LinkedList localLinkedList = new LinkedList();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localLinkedList.add(paramList.next().toString());
    }
    return localLinkedList;
  }
  
  public static void a(Activity paramActivity)
  {
    if ((paramActivity != null) && (paramActivity.getIntent() != null)) {
      paramActivity.getIntent().putExtra("finishOnDismiss", true);
    }
  }
  
  public static void a(Runnable paramRunnable)
  {
    n().post(paramRunnable);
  }
  
  public static boolean a()
  {
    return Build.VERSION.SDK_INT >= 5;
  }
  
  /* Error */
  public static boolean a(InputStream paramInputStream, String paramString, int paramInt)
  {
    // Byte code:
    //   0: new 256	java/io/File
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 257	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore 5
    //   10: aload 5
    //   12: invokevirtual 260	java/io/File:exists	()Z
    //   15: ifeq +22 -> 37
    //   18: aload 5
    //   20: invokevirtual 264	java/io/File:length	()J
    //   23: iload_2
    //   24: i2l
    //   25: lcmp
    //   26: ifne +5 -> 31
    //   29: iconst_1
    //   30: ireturn
    //   31: aload 5
    //   33: invokevirtual 267	java/io/File:delete	()Z
    //   36: pop
    //   37: new 269	java/io/FileOutputStream
    //   40: dup
    //   41: aload 5
    //   43: invokespecial 272	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   46: astore 5
    //   48: sipush 8192
    //   51: newarray <illegal type>
    //   53: astore 6
    //   55: iconst_0
    //   56: istore_3
    //   57: aload_0
    //   58: aload 6
    //   60: iconst_0
    //   61: sipush 8192
    //   64: invokevirtual 276	java/io/InputStream:read	([BII)I
    //   67: istore 4
    //   69: iload 4
    //   71: ifle +21 -> 92
    //   74: aload 5
    //   76: aload 6
    //   78: iconst_0
    //   79: iload 4
    //   81: invokevirtual 282	java/io/OutputStream:write	([BII)V
    //   84: iload_3
    //   85: iload 4
    //   87: iadd
    //   88: istore_3
    //   89: goto -32 -> 57
    //   92: aload 5
    //   94: invokevirtual 285	java/io/OutputStream:flush	()V
    //   97: aload 5
    //   99: invokevirtual 286	java/io/OutputStream:close	()V
    //   102: iload_3
    //   103: iload_2
    //   104: if_icmpeq -75 -> 29
    //   107: iload_2
    //   108: iconst_m1
    //   109: if_icmpeq -80 -> 29
    //   112: new 256	java/io/File
    //   115: dup
    //   116: aload_1
    //   117: invokespecial 257	java/io/File:<init>	(Ljava/lang/String;)V
    //   120: invokevirtual 267	java/io/File:delete	()Z
    //   123: pop
    //   124: iconst_0
    //   125: ireturn
    //   126: astore_0
    //   127: aconst_null
    //   128: astore 5
    //   130: aload 5
    //   132: ifnull +8 -> 140
    //   135: aload 5
    //   137: invokevirtual 286	java/io/OutputStream:close	()V
    //   140: aload_0
    //   141: invokevirtual 94	java/lang/Exception:printStackTrace	()V
    //   144: new 256	java/io/File
    //   147: dup
    //   148: aload_1
    //   149: invokespecial 257	java/io/File:<init>	(Ljava/lang/String;)V
    //   152: invokevirtual 267	java/io/File:delete	()Z
    //   155: pop
    //   156: iconst_0
    //   157: ireturn
    //   158: astore_0
    //   159: new 256	java/io/File
    //   162: dup
    //   163: aload_1
    //   164: invokespecial 257	java/io/File:<init>	(Ljava/lang/String;)V
    //   167: invokevirtual 267	java/io/File:delete	()Z
    //   170: pop
    //   171: aload_0
    //   172: athrow
    //   173: astore 5
    //   175: goto -35 -> 140
    //   178: astore_0
    //   179: goto -49 -> 130
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	182	0	paramInputStream	InputStream
    //   0	182	1	paramString	String
    //   0	182	2	paramInt	int
    //   56	49	3	i	int
    //   67	21	4	j	int
    //   8	128	5	localObject	Object
    //   173	1	5	localException	Exception
    //   53	24	6	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   37	48	126	java/lang/Exception
    //   37	48	158	finally
    //   48	55	158	finally
    //   57	69	158	finally
    //   74	84	158	finally
    //   92	102	158	finally
    //   135	140	158	finally
    //   140	144	158	finally
    //   135	140	173	java/lang/Exception
    //   48	55	178	java/lang/Exception
    //   57	69	178	java/lang/Exception
    //   74	84	178	java/lang/Exception
    //   92	102	178	java/lang/Exception
  }
  
  public static boolean a(CharSequence paramCharSequence)
  {
    return (paramCharSequence == null) || (paramCharSequence.toString().trim().length() == 0);
  }
  
  public static boolean a(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) || (paramObject2 == null)) {}
    do
    {
      return false;
      if (paramObject1 == paramObject2) {
        return true;
      }
    } while ((!(paramObject1 instanceof String)) || (!(paramObject2 instanceof String)));
    return paramObject1.toString().equals(paramObject2.toString());
  }
  
  public static boolean a(Object paramObject, boolean paramBoolean)
  {
    if (paramObject == null) {
      return paramBoolean;
    }
    try
    {
      boolean bool = Boolean.parseBoolean(paramObject.toString());
      return bool;
    }
    catch (Exception paramObject) {}
    return paramBoolean;
  }
  
  public static boolean a(List<?> paramList, int paramInt)
  {
    return (paramInt >= 0) && (paramInt < paramList.size());
  }
  
  public static <T> boolean a(T[] paramArrayOfT, int paramInt)
  {
    if (paramArrayOfT == null) {}
    while ((paramInt < 0) || (paramInt >= paramArrayOfT.length)) {
      return false;
    }
    return true;
  }
  
  private static <T> T[] a(T[] paramArrayOfT, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfT.length;
    if (paramInt1 > paramInt2) {
      throw new IllegalArgumentException();
    }
    if ((paramInt1 < 0) || (paramInt1 > i)) {
      throw new ArrayIndexOutOfBoundsException();
    }
    paramInt2 -= paramInt1;
    i = Math.min(paramInt2, i - paramInt1);
    Object[] arrayOfObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), paramInt2);
    System.arraycopy(paramArrayOfT, paramInt1, arrayOfObject, 0, i);
    return arrayOfObject;
  }
  
  public static long b(String paramString)
  {
    return a(paramString, 0L);
  }
  
  public static String b(String paramString, boolean paramBoolean)
  {
    try
    {
      j localj = new j("MTc0OTUwOTEzMTU4ODM4NDYxOTk");
      String str = paramString;
      if (paramBoolean) {
        str = am.bj(paramString);
      }
      paramString = new String(localj.c(HttpUtils.base64Decode(str)));
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return null;
  }
  
  public static boolean b()
  {
    return Build.VERSION.SDK_INT >= 7;
  }
  
  public static boolean b(Activity paramActivity)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramActivity != null)
    {
      bool1 = bool2;
      if (paramActivity.getIntent() != null)
      {
        bool1 = bool2;
        if (paramActivity.getIntent().getBooleanExtra("finishOnDismiss", false)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public static boolean b(CharSequence paramCharSequence)
  {
    return !a(paramCharSequence);
  }
  
  public static boolean b(Object paramObject)
  {
    return a(paramObject, false);
  }
  
  public static <T> T[] b(T[] paramArrayOfT, int paramInt)
  {
    if (paramArrayOfT == null) {
      throw new NullPointerException();
    }
    if (paramInt < 0) {
      throw new NegativeArraySizeException();
    }
    return a(paramArrayOfT, 0, paramInt);
  }
  
  public static String c(String paramString)
  {
    return a(paramString, true);
  }
  
  public static boolean c()
  {
    return Build.VERSION.SDK_INT >= 8;
  }
  
  public static String d(String paramString)
  {
    return b(paramString, true);
  }
  
  public static boolean d()
  {
    return Build.VERSION.SDK_INT >= 9;
  }
  
  public static boolean e()
  {
    return Build.VERSION.SDK_INT >= 10;
  }
  
  public static boolean f()
  {
    return Build.VERSION.SDK_INT >= 11;
  }
  
  public static boolean g()
  {
    return Build.VERSION.SDK_INT >= 14;
  }
  
  public static boolean h()
  {
    return Build.VERSION.SDK_INT >= 16;
  }
  
  public static boolean i()
  {
    return Build.VERSION.SDK_INT >= 17;
  }
  
  public static boolean j()
  {
    return Build.VERSION.SDK_INT >= 18;
  }
  
  public static boolean k()
  {
    return Build.VERSION.SDK_INT >= 19;
  }
  
  public static boolean l()
  {
    return Build.VERSION.SDK_INT >= 21;
  }
  
  public static boolean m()
  {
    return Looper.getMainLooper().getThread() == Thread.currentThread();
  }
  
  public static Handler n()
  {
    if (d == null) {}
    synchronized (c)
    {
      if (d == null) {
        d = new Handler(Looper.getMainLooper());
      }
      return d;
    }
  }
  
  @SuppressLint({"InlinedApi"})
  public static boolean o()
  {
    if (8 > ac.a()) {
      return false;
    }
    return ((UiModeManager)FexApplication.a().getSystemService("uimode")).getCurrentModeType() == 4;
  }
  
  public static boolean p()
  {
    return (o()) || (cl.d(FexApplication.a()));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */