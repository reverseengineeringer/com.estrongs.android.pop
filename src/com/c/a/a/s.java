package com.c.a.a;

import b.a.a.e;
import b.b.f;
import java.io.IOException;

public class s
  extends t
  implements Runnable
{
  static int a = 0;
  private static int p;
  private f j;
  private p k;
  private boolean l = false;
  private volatile boolean m = false;
  private Object n = new Object();
  private Thread o;
  
  s(e parame, f paramf, b.b.a parama, i parami)
  {
    super(parame, parami);
    i = true;
    j = paramf;
    e = parama;
    o = new Thread(this, "OBEXServerSessionThread-" + g());
    o.setDaemon(true);
  }
  
  private void a(byte[] paramArrayOfByte)
  {
    com.c.a.a.a("Connect operation");
    if (paramArrayOfByte[3] != 16) {
      throw new IOException("Unsupported client OBEX version " + paramArrayOfByte[3]);
    }
    if (paramArrayOfByte.length < 7) {
      throw new IOException("Corrupted OBEX data");
    }
    int i = v.a(paramArrayOfByte[5], paramArrayOfByte[6]);
    if (i < 255) {
      throw new IOException("Invalid MTU " + i);
    }
    d = i;
    com.c.a.a.a("mtu selected", d);
    j localj = c();
    paramArrayOfByte = j.b(paramArrayOfByte, 7);
    if (!a(paramArrayOfByte)) {
      i = 193;
    }
    for (;;)
    {
      a(i, new byte[] { 16, 0, v.a(f.c), v.b(f.c) }, localj);
      if (i == 160) {
        b = true;
      }
      return;
      b(paramArrayOfByte, localj);
      i = 208;
      try
      {
        int i1 = j.a(paramArrayOfByte, localj);
        i = i1;
      }
      catch (Throwable paramArrayOfByte)
      {
        com.c.a.a.b("onConnect", paramArrayOfByte);
      }
    }
  }
  
  private void a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    com.c.a.a.a("Put/Delete operation");
    if (!i()) {
      return;
    }
    paramArrayOfByte = j.b(paramArrayOfByte, 3);
    if (!a(paramArrayOfByte, j))
    {
      a(193, null);
      return;
    }
    if ((paramBoolean) && (!paramArrayOfByte.c()))
    {
      b(paramArrayOfByte);
      return;
    }
    com.c.a.a.a("Put operation");
    k = new r(this, paramArrayOfByte, paramBoolean);
    try
    {
      i = j.a(k);
      if (!k.e) {
        k.a(i);
      }
      return;
    }
    catch (Throwable paramArrayOfByte)
    {
      for (;;)
      {
        com.c.a.a.b("onPut", paramArrayOfByte);
        int i = 211;
      }
    }
    finally
    {
      k.e();
      k = null;
    }
  }
  
  private void b(j paramj)
  {
    com.c.a.a.a("Delete operation");
    j localj = c();
    b(paramj, localj);
    try
    {
      i = j.c(paramj, localj);
      a(i, localj);
      return;
    }
    catch (Throwable paramj)
    {
      for (;;)
      {
        int i = 211;
        com.c.a.a.b("onDelete", paramj);
      }
    }
  }
  
  private void b(byte[] paramArrayOfByte)
  {
    com.c.a.a.a("Disconnect operation");
    if (!i()) {
      return;
    }
    j localj = j.b(paramArrayOfByte, 3);
    paramArrayOfByte = c();
    int i = 160;
    try
    {
      j.b(localj, paramArrayOfByte);
      b = false;
      a(i, paramArrayOfByte);
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        i = 211;
        com.c.a.a.b("onDisconnect", localThrowable);
      }
    }
  }
  
  private void b(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    com.c.a.a.a("Get operation");
    if (!i()) {
      return;
    }
    paramArrayOfByte = j.b(paramArrayOfByte, 3);
    if (!a(paramArrayOfByte, j))
    {
      a(193, null);
      return;
    }
    k = new q(this, paramArrayOfByte, paramBoolean);
    try
    {
      i = j.b(k);
      if (!k.e) {
        k.a(i);
      }
      return;
    }
    catch (Throwable paramArrayOfByte)
    {
      for (;;)
      {
        com.c.a.a.b("onGet", paramArrayOfByte);
        int i = 211;
      }
    }
    finally
    {
      k.e();
      k = null;
    }
  }
  
  private void c(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    boolean bool = true;
    com.c.a.a.a("SetPath operation");
    if (!i()) {
      return;
    }
    if (paramArrayOfByte.length < 5) {
      throw new IOException("Corrupted OBEX data");
    }
    j localj = j.b(paramArrayOfByte, 5);
    if ((paramArrayOfByte[3] & 0x1) != 0)
    {
      paramBoolean = true;
      if ((paramArrayOfByte[3] & 0x2) != 0) {
        break label97;
      }
    }
    for (;;)
    {
      com.c.a.a.a("setPath backup", paramBoolean);
      com.c.a.a.a("setPath create", bool);
      if (a(localj, j)) {
        break label103;
      }
      a(193, null);
      return;
      paramBoolean = false;
      break;
      label97:
      bool = false;
    }
    label103:
    paramArrayOfByte = c();
    b(localj, paramArrayOfByte);
    try
    {
      i = j.a(localj, paramArrayOfByte, paramBoolean, bool);
      a(i, paramArrayOfByte);
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        int i = 211;
        com.c.a.a.b("onSetPath", localThrowable);
      }
    }
  }
  
  private static int g()
  {
    try
    {
      int i = p;
      p = i + 1;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  private boolean h()
  {
    // Byte code:
    //   0: ldc -16
    //   2: invokestatic 90	com/c/a/a:a	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: iconst_0
    //   7: putfield 34	com/c/a/a/s:m	Z
    //   10: aload_0
    //   11: invokevirtual 243	com/c/a/a/s:f	()[B
    //   14: astore_3
    //   15: aload_0
    //   16: iconst_1
    //   17: putfield 34	com/c/a/a/s:m	Z
    //   20: aload_3
    //   21: iconst_0
    //   22: baload
    //   23: sipush 255
    //   26: iand
    //   27: istore_1
    //   28: iload_1
    //   29: sipush 128
    //   32: iand
    //   33: ifeq +69 -> 102
    //   36: iconst_1
    //   37: istore_2
    //   38: iload_2
    //   39: ifeq +133 -> 172
    //   42: ldc -11
    //   44: invokestatic 90	com/c/a/a:a	(Ljava/lang/String;)V
    //   47: goto +125 -> 172
    //   50: aload_0
    //   51: sipush 209
    //   54: aconst_null
    //   55: invokevirtual 169	com/c/a/a/s:a	(ILcom/c/a/a/j;)V
    //   58: aload_0
    //   59: iconst_0
    //   60: putfield 34	com/c/a/a/s:m	Z
    //   63: aload_0
    //   64: getfield 40	com/c/a/a/s:n	Ljava/lang/Object;
    //   67: astore_3
    //   68: aload_3
    //   69: monitorenter
    //   70: aload_0
    //   71: getfield 40	com/c/a/a/s:n	Ljava/lang/Object;
    //   74: invokevirtual 248	java/lang/Object:notifyAll	()V
    //   77: aload_3
    //   78: monitorexit
    //   79: iconst_1
    //   80: ireturn
    //   81: astore_3
    //   82: aload_0
    //   83: getfield 144	com/c/a/a/s:b	Z
    //   86: ifeq +5 -> 91
    //   89: aload_3
    //   90: athrow
    //   91: ldc -6
    //   93: invokestatic 90	com/c/a/a:a	(Ljava/lang/String;)V
    //   96: aload_0
    //   97: invokevirtual 251	com/c/a/a/s:e	()V
    //   100: iconst_0
    //   101: ireturn
    //   102: iconst_0
    //   103: istore_2
    //   104: goto -66 -> 38
    //   107: aload_0
    //   108: aload_3
    //   109: invokespecial 253	com/c/a/a/s:a	([B)V
    //   112: goto -54 -> 58
    //   115: astore_3
    //   116: aload_0
    //   117: iconst_0
    //   118: putfield 34	com/c/a/a/s:m	Z
    //   121: aload_3
    //   122: athrow
    //   123: aload_0
    //   124: aload_3
    //   125: invokespecial 255	com/c/a/a/s:b	([B)V
    //   128: goto -70 -> 58
    //   131: aload_0
    //   132: aload_3
    //   133: iload_2
    //   134: invokespecial 257	com/c/a/a/s:a	([BZ)V
    //   137: goto -79 -> 58
    //   140: aload_0
    //   141: aload_3
    //   142: iload_2
    //   143: invokespecial 259	com/c/a/a/s:c	([BZ)V
    //   146: goto -88 -> 58
    //   149: aload_0
    //   150: invokespecial 261	com/c/a/a/s:j	()V
    //   153: goto -95 -> 58
    //   156: aload_0
    //   157: aload_3
    //   158: iload_2
    //   159: invokespecial 263	com/c/a/a/s:b	([BZ)V
    //   162: goto -104 -> 58
    //   165: astore 4
    //   167: aload_3
    //   168: monitorexit
    //   169: aload 4
    //   171: athrow
    //   172: iload_1
    //   173: lookupswitch	default:+83->256, 2:+-42->131, 3:+-17->156, 5:+-33->140, 128:+-66->107, 129:+-50->123, 130:+-42->131, 131:+-17->156, 133:+-33->140, 255:+-24->149
    //   256: goto -206 -> 50
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	259	0	this	s
    //   27	146	1	i	int
    //   37	122	2	bool	boolean
    //   81	28	3	localEOFException	java.io.EOFException
    //   115	53	3	arrayOfByte	byte[]
    //   165	5	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   10	15	81	java/io/EOFException
    //   42	47	115	finally
    //   50	58	115	finally
    //   107	112	115	finally
    //   123	128	115	finally
    //   131	137	115	finally
    //   140	146	115	finally
    //   149	153	115	finally
    //   156	162	115	finally
    //   70	79	165	finally
    //   167	169	165	finally
  }
  
  private boolean i()
  {
    if (b) {
      return true;
    }
    a(192, null);
    return false;
  }
  
  private void j()
  {
    com.c.a.a.a("Abort operation");
    if (!i()) {
      return;
    }
    if (k != null)
    {
      k.e = true;
      k.e();
      k = null;
      a(160, null);
      return;
    }
    a(192, null);
  }
  
  void a()
  {
    o.start();
  }
  
  boolean a(j paramj)
  {
    return a(paramj, j);
  }
  
  public void e()
  {
    l = true;
    if (m) {}
    try
    {
      synchronized (n)
      {
        if (m) {
          n.wait(700L);
        }
        m = false;
      }
      if (!b())
      {
        com.c.a.a.a("OBEXServerSession close");
        if (k != null)
        {
          k.e();
          k = null;
        }
      }
      super.e();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  public void run()
  {
    
    try
    {
      while ((!b()) && (!l))
      {
        boolean bool = h();
        if (!bool)
        {
          com.c.a.a.a("OBEXServerSession ends");
          try
          {
            super.e();
            return;
          }
          catch (IOException localIOException1)
          {
            com.c.a.a.a("OBEXServerSession close error", localIOException1);
            return;
          }
        }
      }
      com.c.a.a.a("OBEXServerSession ends");
      try
      {
        super.e();
        return;
      }
      catch (IOException localIOException2)
      {
        com.c.a.a.a("OBEXServerSession close error", localIOException2);
        return;
      }
      try
      {
        super.e();
        throw localThrowable2;
        com.c.a.a.a("OBEXServerSession error", localThrowable2);
      }
      catch (IOException localIOException4)
      {
        for (;;)
        {
          com.c.a.a.a("OBEXServerSession close error", localIOException4);
        }
      }
    }
    catch (Throwable localThrowable1)
    {
      try
      {
        a += 1;
        if (b)
        {
          com.c.a.a.b("OBEXServerSession error", localThrowable1);
          com.c.a.a.a("OBEXServerSession ends");
          try
          {
            super.e();
            return;
          }
          catch (IOException localIOException3)
          {
            com.c.a.a.a("OBEXServerSession close error", localIOException3);
            return;
          }
          localThrowable2 = finally;
        }
      }
      finally {}
    }
    finally
    {
      com.c.a.a.a("OBEXServerSession ends");
    }
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */