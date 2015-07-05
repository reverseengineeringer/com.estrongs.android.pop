package com.estrongs.android.pop.bt;

import android.os.Build.VERSION;
import android.util.Log;
import java.io.File;
import java.util.UUID;

public class g
{
  public final UUID a;
  private b.b.g b;
  private boolean c;
  private boolean d;
  private k e;
  
  private void a(String paramString)
  {
    e.a(paramString);
  }
  
  private boolean e()
  {
    boolean bool = false;
    try
    {
      int i = Integer.parseInt(Build.VERSION.SDK);
      if (i >= 5) {
        bool = true;
      }
      return bool;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return false;
  }
  
  private static File f()
  {
    return new File("/sdcard");
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: putfield 27	com/estrongs/android/pop/bt/g:c	Z
    //   5: aload_0
    //   6: invokespecial 62	com/estrongs/android/pop/bt/g:e	()Z
    //   9: ifeq +16 -> 25
    //   12: aload_0
    //   13: ldc 64
    //   15: aload_0
    //   16: getfield 66	com/estrongs/android/pop/bt/g:a	Ljava/util/UUID;
    //   19: invokestatic 71	com/estrongs/bluetooth/c:a	(Ljava/lang/String;Ljava/util/UUID;)Lb/b/g;
    //   22: putfield 73	com/estrongs/android/pop/bt/g:b	Lb/b/g;
    //   25: aload_0
    //   26: iconst_1
    //   27: putfield 75	com/estrongs/android/pop/bt/g:d	Z
    //   30: iconst_0
    //   31: istore_1
    //   32: iconst_0
    //   33: istore_2
    //   34: aload_0
    //   35: getfield 27	com/estrongs/android/pop/bt/g:c	Z
    //   38: ifne +59 -> 97
    //   41: new 77	com/estrongs/android/pop/bt/i
    //   44: dup
    //   45: aload_0
    //   46: aconst_null
    //   47: invokespecial 80	com/estrongs/android/pop/bt/i:<init>	(Lcom/estrongs/android/pop/bt/g;Lcom/estrongs/android/pop/bt/h;)V
    //   50: astore 4
    //   52: iload_1
    //   53: iconst_1
    //   54: iadd
    //   55: istore_1
    //   56: aload 4
    //   58: aload_0
    //   59: getfield 73	com/estrongs/android/pop/bt/g:b	Lb/b/g;
    //   62: aload 4
    //   64: invokeinterface 85 2 0
    //   69: invokevirtual 88	com/estrongs/android/pop/bt/i:a	(Lb/a/a/a;)V
    //   72: iconst_0
    //   73: istore_2
    //   74: goto -40 -> 34
    //   77: astore 4
    //   79: ldc 90
    //   81: ldc 92
    //   83: invokestatic 97	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   86: pop
    //   87: aload 4
    //   89: athrow
    //   90: astore 4
    //   92: aload_0
    //   93: iconst_1
    //   94: putfield 27	com/estrongs/android/pop/bt/g:c	Z
    //   97: aload_0
    //   98: invokevirtual 99	com/estrongs/android/pop/bt/g:c	()V
    //   101: aload_0
    //   102: iconst_0
    //   103: putfield 75	com/estrongs/android/pop/bt/g:d	Z
    //   106: return
    //   107: astore 4
    //   109: ldc 101
    //   111: aload 4
    //   113: invokevirtual 105	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   116: invokevirtual 111	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   119: ifeq +8 -> 127
    //   122: aload_0
    //   123: iconst_1
    //   124: putfield 27	com/estrongs/android/pop/bt/g:c	Z
    //   127: aload_0
    //   128: getfield 27	com/estrongs/android/pop/bt/g:c	Z
    //   131: istore_3
    //   132: iload_3
    //   133: ifeq +13 -> 146
    //   136: aload_0
    //   137: invokevirtual 99	com/estrongs/android/pop/bt/g:c	()V
    //   140: aload_0
    //   141: iconst_0
    //   142: putfield 75	com/estrongs/android/pop/bt/g:d	Z
    //   145: return
    //   146: iload_2
    //   147: iconst_1
    //   148: iadd
    //   149: istore_2
    //   150: goto -116 -> 34
    //   153: astore 4
    //   155: aload_0
    //   156: invokevirtual 99	com/estrongs/android/pop/bt/g:c	()V
    //   159: aload_0
    //   160: iconst_0
    //   161: putfield 75	com/estrongs/android/pop/bt/g:d	Z
    //   164: aload 4
    //   166: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	167	0	this	g
    //   31	25	1	i	int
    //   33	117	2	j	int
    //   131	2	3	bool	boolean
    //   50	13	4	locali	i
    //   77	11	4	localIOException	java.io.IOException
    //   90	1	4	localInterruptedIOException	java.io.InterruptedIOException
    //   107	5	4	localThrowable	Throwable
    //   153	12	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   5	25	77	java/io/IOException
    //   56	72	90	java/io/InterruptedIOException
    //   56	72	107	java/lang/Throwable
    //   25	30	153	finally
    //   34	52	153	finally
    //   56	72	153	finally
    //   92	97	153	finally
    //   109	127	153	finally
    //   127	132	153	finally
  }
  
  public boolean b()
  {
    return d;
  }
  
  public void c()
  {
    c = true;
    try
    {
      if (b != null) {
        b.e();
      }
      d = false;
      return;
    }
    catch (Throwable localThrowable)
    {
      Log.d("OBEXOppServer", "OBEX Server stop error", localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.bt.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */