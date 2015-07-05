package com.estrongs.android.ftp;

import android.util.Log;
import java.io.File;
import java.net.InetAddress;
import java.net.ServerSocket;

public class a
{
  public static boolean d = false;
  public static String f = "UTF-8";
  public static boolean i = false;
  private static a m = null;
  public String a = null;
  public String b = null;
  public Thread c = null;
  public boolean e = false;
  public boolean g = false;
  public String h = null;
  public d j = null;
  public boolean k = false;
  private int l = 21;
  private int n = 2000;
  private InetAddress o = null;
  private ServerSocket p = null;
  private int q = 0;
  private int r = 0;
  private Object s = new Object();
  private Thread t = null;
  private boolean u = false;
  private long v = 0L;
  private long w = 0L;
  
  protected a(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    a = paramString1;
    b = paramString2;
    l = paramInt;
    if (((a == null) || (a.length() == 0)) && ((b == null) || (b.length() == 0))) {}
    for (boolean bool = true;; bool = false)
    {
      g = bool;
      paramString1 = paramString3;
      if (paramString3 == null) {
        paramString1 = "/sdcard";
      }
      paramString2 = new File(paramString1);
      if ((!paramString2.exists()) || (!paramString2.isDirectory())) {
        paramString1 = "/sdcard";
      }
      if (!paramString1.equals("/")) {
        break;
      }
      h = "";
      return;
    }
    if (paramString1.endsWith("/"))
    {
      h = paramString1.substring(0, paramString1.length() - 1);
      return;
    }
    h = paramString1;
  }
  
  /* Error */
  public static a a(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 41	com/estrongs/android/ftp/a:m	Lcom/estrongs/android/ftp/a;
    //   6: ifnonnull +26 -> 32
    //   9: new 2	com/estrongs/android/ftp/a
    //   12: dup
    //   13: aload_0
    //   14: aload_1
    //   15: iload_2
    //   16: aload_3
    //   17: invokespecial 131	com/estrongs/android/ftp/a:<init>	(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    //   20: putstatic 41	com/estrongs/android/ftp/a:m	Lcom/estrongs/android/ftp/a;
    //   23: getstatic 41	com/estrongs/android/ftp/a:m	Lcom/estrongs/android/ftp/a;
    //   26: astore_0
    //   27: ldc 2
    //   29: monitorexit
    //   30: aload_0
    //   31: areturn
    //   32: getstatic 41	com/estrongs/android/ftp/a:m	Lcom/estrongs/android/ftp/a;
    //   35: aload_0
    //   36: aload_1
    //   37: iload_2
    //   38: aload_3
    //   39: invokespecial 133	com/estrongs/android/ftp/a:b	(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    //   42: goto -19 -> 23
    //   45: astore_0
    //   46: ldc 2
    //   48: monitorexit
    //   49: aload_0
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	paramString1	String
    //   0	51	1	paramString2	String
    //   0	51	2	paramInt	int
    //   0	51	3	paramString3	String
    // Exception table:
    //   from	to	target	type
    //   3	23	45	finally
    //   23	27	45	finally
    //   32	42	45	finally
  }
  
  private void b(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    a = paramString1;
    b = paramString2;
    l = paramInt;
    if (((paramString1 == null) || (paramString1.length() == 0)) && ((paramString2 == null) || (paramString2.length() == 0))) {}
    for (boolean bool = true;; bool = false)
    {
      g = bool;
      paramString1 = paramString3;
      if (paramString3 == null) {
        paramString1 = "/sdcard";
      }
      paramString2 = new File(paramString1);
      if ((!paramString2.exists()) || (!paramString2.isDirectory())) {
        paramString1 = "/sdcard";
      }
      if (!paramString1.equals("/")) {
        break;
      }
      h = "";
      return;
    }
    if (paramString1.endsWith("/"))
    {
      h = paramString1.substring(0, paramString1.length() - 1);
      return;
    }
    h = paramString1;
  }
  
  public static a e()
  {
    try
    {
      a locala = m;
      return locala;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static void j()
  {
    d = true;
    if (m == null)
    {
      Log.e("Error", "IN Server, stop inst is null");
      return;
    }
    m.k();
    m = null;
  }
  
  private void l()
  {
    u = true;
    t = null;
  }
  
  private void m()
  {
    u = false;
    v = 0L;
    w = 0L;
    if (j != null) {
      j.a(0, 0);
    }
    t = new b(this);
    t.start();
  }
  
  /* Error */
  public int a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: iconst_0
    //   1: putstatic 43	com/estrongs/android/ftp/a:d	Z
    //   4: iconst_0
    //   5: putstatic 49	com/estrongs/android/ftp/a:i	Z
    //   8: aload_0
    //   9: iconst_0
    //   10: putfield 92	com/estrongs/android/ftp/a:k	Z
    //   13: aload_0
    //   14: getfield 64	com/estrongs/android/ftp/a:e	Z
    //   17: ifeq +5 -> 22
    //   20: iconst_0
    //   21: ireturn
    //   22: invokestatic 172	com/estrongs/android/util/ak:a	()Ljava/lang/String;
    //   25: astore_1
    //   26: aload_1
    //   27: ifnull +11 -> 38
    //   30: aload_0
    //   31: aload_1
    //   32: invokestatic 178	java/net/InetAddress:getByName	(Ljava/lang/String;)Ljava/net/InetAddress;
    //   35: putfield 72	com/estrongs/android/ftp/a:o	Ljava/net/InetAddress;
    //   38: aload_0
    //   39: getfield 72	com/estrongs/android/ftp/a:o	Ljava/net/InetAddress;
    //   42: astore_1
    //   43: aload_1
    //   44: ifnonnull +5 -> 49
    //   47: iconst_2
    //   48: ireturn
    //   49: aload_0
    //   50: new 180	java/net/ServerSocket
    //   53: dup
    //   54: aload_0
    //   55: getfield 62	com/estrongs/android/ftp/a:l	I
    //   58: iconst_5
    //   59: invokespecial 182	java/net/ServerSocket:<init>	(II)V
    //   62: putfield 74	com/estrongs/android/ftp/a:p	Ljava/net/ServerSocket;
    //   65: aload_0
    //   66: iconst_0
    //   67: putfield 64	com/estrongs/android/ftp/a:e	Z
    //   70: aload_0
    //   71: new 184	com/estrongs/android/ftp/c
    //   74: dup
    //   75: aload_0
    //   76: invokespecial 185	com/estrongs/android/ftp/c:<init>	(Lcom/estrongs/android/ftp/a;)V
    //   79: putfield 60	com/estrongs/android/ftp/a:c	Ljava/lang/Thread;
    //   82: aload_0
    //   83: getfield 60	com/estrongs/android/ftp/a:c	Ljava/lang/Thread;
    //   86: invokevirtual 164	java/lang/Thread:start	()V
    //   89: iconst_0
    //   90: ireturn
    //   91: astore_1
    //   92: aload_1
    //   93: invokevirtual 188	java/lang/Exception:printStackTrace	()V
    //   96: iconst_1
    //   97: ireturn
    //   98: astore_1
    //   99: aload_1
    //   100: invokevirtual 188	java/lang/Exception:printStackTrace	()V
    //   103: goto -38 -> 65
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	106	0	this	a
    //   0	106	1	paramContext	android.content.Context
    // Exception table:
    //   from	to	target	type
    //   22	26	91	java/lang/Exception
    //   30	38	91	java/lang/Exception
    //   38	43	91	java/lang/Exception
    //   65	89	91	java/lang/Exception
    //   99	103	91	java/lang/Exception
    //   49	65	98	java/lang/Exception
  }
  
  public void a()
  {
    synchronized (s)
    {
      q += 1;
      if (t == null) {
        m();
      }
      if (j != null) {
        j.a(r, q);
      }
      return;
    }
  }
  
  public void a(long paramLong)
  {
    synchronized (s)
    {
      v += paramLong;
      return;
    }
  }
  
  public void a(String paramString)
  {
    if (paramString == null)
    {
      h = "";
      return;
    }
    if (paramString.equals("/")) {
      h = "";
    }
    if (paramString.endsWith("/"))
    {
      h = paramString.substring(0, paramString.length() - 1);
      return;
    }
    h = paramString;
  }
  
  public void a(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
    if (((paramString1 == null) || (paramString1.length() == 0)) && ((paramString2 == null) || (paramString2.length() == 0))) {}
    for (boolean bool = true;; bool = false)
    {
      g = bool;
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public void b()
  {
    synchronized (s)
    {
      q -= 1;
      if ((q == 0) && (r == 0)) {
        l();
      }
      if (j != null) {
        j.a(r, q);
      }
      return;
    }
  }
  
  public void b(long paramLong)
  {
    synchronized (s)
    {
      w += paramLong;
      return;
    }
  }
  
  public void c()
  {
    synchronized (s)
    {
      r += 1;
      if (t == null) {
        m();
      }
      if (j != null) {
        j.a(r, q);
      }
      return;
    }
  }
  
  public void d()
  {
    synchronized (s)
    {
      r -= 1;
      if ((q == 0) && (r == 0)) {
        l();
      }
      if (j != null) {
        j.a(r, q);
      }
      return;
    }
  }
  
  public int f()
  {
    try
    {
      n += 1;
      int i1 = n;
      return i1 - 1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public InetAddress g()
  {
    return o;
  }
  
  public int h()
  {
    return l;
  }
  
  public boolean i()
  {
    return e;
  }
  
  public void k()
  {
    i = false;
    try
    {
      p.close();
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ftp.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */