package com.dianxinos.library.b.b.d;

import android.content.Context;
import com.dianxinos.library.b.b.b.d;
import com.dianxinos.library.b.c.i;
import com.dianxinos.library.b.c.k;
import java.io.File;
import java.util.HashMap;

public final class t
  extends com.dianxinos.library.b.b.b
{
  volatile boolean b = false;
  HashMap<String, q> c = new HashMap();
  com.dianxinos.library.b.b.c.b d = null;
  private Context e = null;
  private String f;
  private File g = null;
  private char[] h = null;
  private String i = null;
  private int j = 0;
  private d k;
  private boolean l = false;
  private boolean m = false;
  
  public t(Context paramContext, String paramString, char[] paramArrayOfChar, int paramInt)
  {
    e = paramContext.getApplicationContext();
    f = paramString;
    g = paramContext.getDatabasePath(f);
    j = paramInt;
    paramContext = new char[paramArrayOfChar.length];
    System.arraycopy(paramArrayOfChar, 0, paramContext, 0, paramArrayOfChar.length);
    h = paramContext;
    i = b(paramContext);
    d = new com.dianxinos.library.b.b.c.b(e, f);
    i.b(new u(this));
  }
  
  private void a(String paramString, q paramq)
  {
    i.b(new v(this, paramq, paramString));
  }
  
  private static String b(char[] paramArrayOfChar)
  {
    if (paramArrayOfChar == null) {
      return null;
    }
    int i2 = paramArrayOfChar.length;
    byte[] arrayOfByte = new byte[i2 * 2];
    int i1 = 0;
    while (i1 < i2)
    {
      int n = (byte)paramArrayOfChar[i1];
      int i3 = i1 + i1;
      arrayOfByte[i3] = n;
      arrayOfByte[(i3 + 1)] = ((byte)(n >> 8));
      i1 += 1;
    }
    return com.dianxinos.library.b.b.b.b.a('a', arrayOfByte);
  }
  
  private boolean e()
  {
    if ((!g.exists()) && (j == 1)) {}
    Object localObject;
    do
    {
      do
      {
        return false;
        localObject = new com.dianxinos.library.b.b.c.a(d, f, "tcfb3352c2df335696c6bc631932c6a61a4cdf318");
        char[] arrayOfChar = com.dianxinos.library.b.b.b.b.a(e, f, h);
        localObject = new d(f, (com.dianxinos.library.b.b.c.a)localObject, arrayOfChar);
      } while (!((d)localObject).a());
      if (((d)localObject).b()) {
        break;
      }
    } while (!com.dianxinos.library.b.a.b);
    k.a("verify " + f + " failed");
    return false;
    k = ((d)localObject);
    return true;
  }
  
  public com.dianxinos.library.b.b.a a(String paramString)
  {
    if ((l) && (m)) {
      if (com.dianxinos.library.b.a.b) {
        k.a("ERROR: open storage " + f + "failed");
      }
    }
    while (b) {
      return null;
    }
    synchronized (c)
    {
      localq = (q)c.get(paramString);
      if ((localq != null) && (!localq.b())) {
        return localq;
      }
    }
    q localq = new q(d, this, paramString);
    a(paramString, localq);
    c.put(paramString, localq);
    return localq;
  }
  
  public boolean a()
  {
    if ((l) && (m)) {
      return true;
    }
    try
    {
      boolean bool = b;
      return bool;
    }
    finally {}
  }
  
  public boolean a(char[] paramArrayOfChar)
  {
    if ((paramArrayOfChar == null) || (paramArrayOfChar.length == 0)) {
      return false;
    }
    return b(paramArrayOfChar).equals(i);
  }
  
  /* Error */
  void b()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: invokespecial 185	com/dianxinos/library/b/b/d/t:e	()Z
    //   8: istore_2
    //   9: aload_0
    //   10: iconst_1
    //   11: putfield 45	com/dianxinos/library/b/b/d/t:l	Z
    //   14: iload_2
    //   15: ifne +265 -> 280
    //   18: aload_0
    //   19: iload_1
    //   20: putfield 47	com/dianxinos/library/b/b/d/t:m	Z
    //   23: getstatic 135	com/dianxinos/library/b/a:b	Z
    //   26: ifeq +35 -> 61
    //   29: aload_0
    //   30: getfield 47	com/dianxinos/library/b/b/d/t:m	Z
    //   33: ifeq +207 -> 240
    //   36: new 137	java/lang/StringBuilder
    //   39: dup
    //   40: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   43: ldc -69
    //   45: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: aload_0
    //   49: getfield 62	com/dianxinos/library/b/b/d/t:f	Ljava/lang/String;
    //   52: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokestatic 155	com/dianxinos/library/b/c/k:a	(Ljava/lang/String;)V
    //   61: aload_0
    //   62: invokevirtual 192	java/lang/Object:notifyAll	()V
    //   65: aload_0
    //   66: getfield 45	com/dianxinos/library/b/b/d/t:l	Z
    //   69: ifeq +31 -> 100
    //   72: aload_0
    //   73: getfield 47	com/dianxinos/library/b/b/d/t:m	Z
    //   76: ifeq +24 -> 100
    //   79: getstatic 195	com/dianxinos/library/b/b/d/t:a	Ljava/util/Map;
    //   82: astore_3
    //   83: aload_3
    //   84: monitorenter
    //   85: getstatic 195	com/dianxinos/library/b/b/d/t:a	Ljava/util/Map;
    //   88: aload_0
    //   89: getfield 62	com/dianxinos/library/b/b/d/t:f	Ljava/lang/String;
    //   92: invokeinterface 200 2 0
    //   97: pop
    //   98: aload_3
    //   99: monitorexit
    //   100: aload_0
    //   101: monitorexit
    //   102: return
    //   103: astore 4
    //   105: aload_0
    //   106: iconst_1
    //   107: putfield 45	com/dianxinos/library/b/b/d/t:l	Z
    //   110: aload_0
    //   111: iconst_1
    //   112: putfield 47	com/dianxinos/library/b/b/d/t:m	Z
    //   115: getstatic 135	com/dianxinos/library/b/a:b	Z
    //   118: ifeq +35 -> 153
    //   121: aload_0
    //   122: getfield 47	com/dianxinos/library/b/b/d/t:m	Z
    //   125: ifeq +75 -> 200
    //   128: new 137	java/lang/StringBuilder
    //   131: dup
    //   132: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   135: ldc -69
    //   137: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: aload_0
    //   141: getfield 62	com/dianxinos/library/b/b/d/t:f	Ljava/lang/String;
    //   144: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokestatic 155	com/dianxinos/library/b/c/k:a	(Ljava/lang/String;)V
    //   153: aload_0
    //   154: invokevirtual 192	java/lang/Object:notifyAll	()V
    //   157: aload_0
    //   158: getfield 45	com/dianxinos/library/b/b/d/t:l	Z
    //   161: ifeq +31 -> 192
    //   164: aload_0
    //   165: getfield 47	com/dianxinos/library/b/b/d/t:m	Z
    //   168: ifeq +24 -> 192
    //   171: getstatic 195	com/dianxinos/library/b/b/d/t:a	Ljava/util/Map;
    //   174: astore_3
    //   175: aload_3
    //   176: monitorenter
    //   177: getstatic 195	com/dianxinos/library/b/b/d/t:a	Ljava/util/Map;
    //   180: aload_0
    //   181: getfield 62	com/dianxinos/library/b/b/d/t:f	Ljava/lang/String;
    //   184: invokeinterface 200 2 0
    //   189: pop
    //   190: aload_3
    //   191: monitorexit
    //   192: aload 4
    //   194: athrow
    //   195: astore_3
    //   196: aload_0
    //   197: monitorexit
    //   198: aload_3
    //   199: athrow
    //   200: new 137	java/lang/StringBuilder
    //   203: dup
    //   204: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   207: ldc -54
    //   209: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: aload_0
    //   213: getfield 62	com/dianxinos/library/b/b/d/t:f	Ljava/lang/String;
    //   216: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: ldc -52
    //   221: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   227: invokestatic 155	com/dianxinos/library/b/c/k:a	(Ljava/lang/String;)V
    //   230: goto -77 -> 153
    //   233: astore 4
    //   235: aload_3
    //   236: monitorexit
    //   237: aload 4
    //   239: athrow
    //   240: new 137	java/lang/StringBuilder
    //   243: dup
    //   244: invokespecial 138	java/lang/StringBuilder:<init>	()V
    //   247: ldc -54
    //   249: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   252: aload_0
    //   253: getfield 62	com/dianxinos/library/b/b/d/t:f	Ljava/lang/String;
    //   256: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: ldc -52
    //   261: invokevirtual 144	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: invokevirtual 150	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   267: invokestatic 155	com/dianxinos/library/b/c/k:a	(Ljava/lang/String;)V
    //   270: goto -209 -> 61
    //   273: astore 4
    //   275: aload_3
    //   276: monitorexit
    //   277: aload 4
    //   279: athrow
    //   280: iconst_0
    //   281: istore_1
    //   282: goto -264 -> 18
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	285	0	this	t
    //   1	281	1	bool1	boolean
    //   8	7	2	bool2	boolean
    //   195	81	3	localObject1	Object
    //   103	90	4	localObject2	Object
    //   233	5	4	localObject3	Object
    //   273	5	4	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   4	9	103	finally
    //   9	14	195	finally
    //   18	61	195	finally
    //   61	85	195	finally
    //   100	102	195	finally
    //   105	153	195	finally
    //   153	177	195	finally
    //   192	195	195	finally
    //   196	198	195	finally
    //   200	230	195	finally
    //   237	240	195	finally
    //   240	270	195	finally
    //   277	280	195	finally
    //   177	192	233	finally
    //   235	237	233	finally
    //   85	100	273	finally
    //   275	277	273	finally
  }
  
  void c()
  {
    try
    {
      for (;;)
      {
        boolean bool = l;
        if (bool) {
          break;
        }
        try
        {
          if (com.dianxinos.library.b.a.b) {
            k.a("wait main container 1000ms ...");
          }
          wait(1000L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
    finally {}
  }
  
  public String d()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.b.d.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */