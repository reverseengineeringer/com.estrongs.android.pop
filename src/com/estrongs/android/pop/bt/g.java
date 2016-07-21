package com.estrongs.android.pop.bt;

import android.os.Build.VERSION;
import com.estrongs.android.util.l;
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
    //   38: ifne +58 -> 96
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
    //   83: invokestatic 97	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   86: aload 4
    //   88: athrow
    //   89: astore 4
    //   91: aload_0
    //   92: iconst_1
    //   93: putfield 27	com/estrongs/android/pop/bt/g:c	Z
    //   96: aload_0
    //   97: invokevirtual 99	com/estrongs/android/pop/bt/g:c	()V
    //   100: aload_0
    //   101: iconst_0
    //   102: putfield 75	com/estrongs/android/pop/bt/g:d	Z
    //   105: return
    //   106: astore 4
    //   108: ldc 101
    //   110: aload 4
    //   112: invokevirtual 105	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   115: invokevirtual 111	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   118: ifeq +8 -> 126
    //   121: aload_0
    //   122: iconst_1
    //   123: putfield 27	com/estrongs/android/pop/bt/g:c	Z
    //   126: aload_0
    //   127: getfield 27	com/estrongs/android/pop/bt/g:c	Z
    //   130: istore_3
    //   131: iload_3
    //   132: ifeq +13 -> 145
    //   135: aload_0
    //   136: invokevirtual 99	com/estrongs/android/pop/bt/g:c	()V
    //   139: aload_0
    //   140: iconst_0
    //   141: putfield 75	com/estrongs/android/pop/bt/g:d	Z
    //   144: return
    //   145: iload_2
    //   146: iconst_1
    //   147: iadd
    //   148: istore_2
    //   149: goto -115 -> 34
    //   152: astore 4
    //   154: aload_0
    //   155: invokevirtual 99	com/estrongs/android/pop/bt/g:c	()V
    //   158: aload_0
    //   159: iconst_0
    //   160: putfield 75	com/estrongs/android/pop/bt/g:d	Z
    //   163: aload 4
    //   165: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	166	0	this	g
    //   31	25	1	i	int
    //   33	116	2	j	int
    //   130	2	3	bool	boolean
    //   50	13	4	locali	i
    //   77	10	4	localIOException	java.io.IOException
    //   89	1	4	localInterruptedIOException	java.io.InterruptedIOException
    //   106	5	4	localThrowable	Throwable
    //   152	12	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   5	25	77	java/io/IOException
    //   56	72	89	java/io/InterruptedIOException
    //   56	72	106	java/lang/Throwable
    //   25	30	152	finally
    //   34	52	152	finally
    //   56	72	152	finally
    //   91	96	152	finally
    //   108	126	152	finally
    //   126	131	152	finally
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
      l.a("OBEXOppServer", "OBEX Server stop error", localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.bt.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */