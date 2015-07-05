package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;

public abstract class Channel
  implements Runnable
{
  static int a = 0;
  private static Vector u = new Vector();
  int b;
  volatile int c = -1;
  protected byte[] d = Util.b("foo");
  volatile int e = 1048576;
  volatile int f = e;
  volatile int g = 16384;
  volatile long h = 0L;
  volatile int i = 0;
  IO j = null;
  Thread k = null;
  volatile boolean l = false;
  volatile boolean m = false;
  volatile boolean n = false;
  volatile boolean o = false;
  volatile boolean p = false;
  volatile int q = -1;
  volatile int r = 0;
  volatile int s = 0;
  int t = 0;
  private Session v;
  
  Channel()
  {
    synchronized (u)
    {
      int i1 = a;
      a = i1 + 1;
      b = i1;
      u.addElement(this);
      return;
    }
  }
  
  static Channel a(int paramInt, Session paramSession)
  {
    Vector localVector = u;
    int i1 = 0;
    for (;;)
    {
      try
      {
        if (i1 >= u.size()) {
          return null;
        }
        Channel localChannel = (Channel)u.elementAt(i1);
        if ((b == paramInt) && (v == paramSession)) {
          return localChannel;
        }
      }
      finally {}
      i1 += 1;
    }
  }
  
  static Channel a(String paramString)
  {
    if (paramString.equals("session")) {
      return new ChannelSession();
    }
    if (paramString.equals("shell")) {
      return new ChannelShell();
    }
    if (paramString.equals("exec")) {
      return new ChannelExec();
    }
    if (paramString.equals("x11")) {
      return new ChannelX11();
    }
    if (paramString.equals("auth-agent@openssh.com")) {
      return new ChannelAgentForwarding();
    }
    if (paramString.equals("direct-tcpip")) {
      return new ChannelDirectTCPIP();
    }
    if (paramString.equals("forwarded-tcpip")) {
      return new ChannelForwardedTCPIP();
    }
    if (paramString.equals("sftp")) {
      return new ChannelSftp();
    }
    if (paramString.equals("subsystem")) {
      return new ChannelSubsystem();
    }
    return null;
  }
  
  static void a(Channel paramChannel)
  {
    synchronized (u)
    {
      u.removeElement(paramChannel);
      return;
    }
  }
  
  static void a(Session paramSession)
  {
    for (;;)
    {
      Channel[] arrayOfChannel;
      int i2;
      synchronized (u)
      {
        arrayOfChannel = new Channel[u.size()];
        i2 = 0;
        int i1 = 0;
        if (i2 >= u.size())
        {
          i2 = 0;
          if (i2 < i1) {
            break label88;
          }
        }
        try
        {
          Channel localChannel = (Channel)u.elementAt(i2);
          Session localSession = v;
          if (localSession != paramSession) {
            break;
          }
          arrayOfChannel[i1] = localChannel;
          i1 += 1;
        }
        catch (Exception localException)
        {
          continue;
          continue;
        }
        i2 += 1;
      }
      label88:
      arrayOfChannel[i2].h();
      i2 += 1;
    }
  }
  
  int a()
  {
    return c;
  }
  
  void a(int paramInt)
  {
    try
    {
      c = paramInt;
      if (t > 0) {
        notifyAll();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void a(long paramLong)
  {
    try
    {
      h = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void a(Buffer paramBuffer)
  {
    a(paramBuffer.d());
    a(paramBuffer.e());
    f(paramBuffer.d());
  }
  
  public void a(InputStream paramInputStream)
  {
    j.a(paramInputStream, false);
  }
  
  public void a(OutputStream paramOutputStream)
  {
    j.a(paramOutputStream, false);
  }
  
  void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      j.a(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (NullPointerException paramArrayOfByte) {}
  }
  
  void b() {}
  
  public void b(int paramInt)
  {
    s = paramInt;
    try
    {
      m();
      c();
      return;
    }
    catch (Exception localException)
    {
      o = false;
      h();
      if ((localException instanceof JSchException)) {
        throw ((JSchException)localException);
      }
      throw new JSchException(localException.toString(), localException);
    }
  }
  
  void b(long paramLong)
  {
    try
    {
      h += paramLong;
      if (t > 0) {
        notifyAll();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void b(Session paramSession)
  {
    v = paramSession;
  }
  
  void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      j.b(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (NullPointerException paramArrayOfByte) {}
  }
  
  public void c() {}
  
  void c(int paramInt)
  {
    e = paramInt;
  }
  
  public InputStream d()
  {
    try
    {
      i1 = Integer.parseInt(j().d("max_input_buffer_size"));
      Channel.MyPipedInputStream localMyPipedInputStream = new Channel.MyPipedInputStream(this, 32768, i1);
      if (32768 < i1)
      {
        bool = true;
        j.a(new Channel.PassiveOutputStream(this, localMyPipedInputStream, bool), false);
        return localMyPipedInputStream;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        int i1 = 32768;
        continue;
        boolean bool = false;
      }
    }
  }
  
  void d(int paramInt)
  {
    f = paramInt;
  }
  
  void e()
  {
    m = true;
    try
    {
      j.b();
      return;
    }
    catch (NullPointerException localNullPointerException) {}
  }
  
  void e(int paramInt)
  {
    g = paramInt;
  }
  
  void f()
  {
    if (l) {}
    int i1;
    do
    {
      return;
      l = true;
      i1 = a();
    } while (i1 == -1);
    try
    {
      Buffer localBuffer = new Buffer(100);
      Packet localPacket = new Packet(localBuffer);
      localPacket.a();
      localBuffer.a((byte)96);
      localBuffer.a(i1);
      try
      {
        if (!n) {
          j().b(localPacket);
        }
        return;
      }
      finally {}
      return;
    }
    catch (Exception localException) {}
  }
  
  void f(int paramInt)
  {
    i = paramInt;
  }
  
  void g()
  {
    if (n) {}
    int i1;
    do
    {
      return;
      n = true;
      m = true;
      l = true;
      i1 = a();
    } while (i1 == -1);
    try
    {
      Buffer localBuffer = new Buffer(100);
      Packet localPacket = new Packet(localBuffer);
      localPacket.a();
      localBuffer.a((byte)97);
      localBuffer.a(i1);
      try
      {
        j().b(localPacket);
        return;
      }
      finally {}
      return;
    }
    catch (Exception localException) {}
  }
  
  void g(int paramInt)
  {
    q = paramInt;
  }
  
  /* Error */
  public void h()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 83	com/jcraft/jsch/Channel:o	Z
    //   6: ifne +10 -> 16
    //   9: aload_0
    //   10: monitorexit
    //   11: aload_0
    //   12: invokestatic 269	com/jcraft/jsch/Channel:a	(Lcom/jcraft/jsch/Channel;)V
    //   15: return
    //   16: aload_0
    //   17: iconst_0
    //   18: putfield 83	com/jcraft/jsch/Channel:o	Z
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_0
    //   24: invokevirtual 271	com/jcraft/jsch/Channel:g	()V
    //   27: aload_0
    //   28: iconst_1
    //   29: putfield 77	com/jcraft/jsch/Channel:l	Z
    //   32: aload_0
    //   33: iconst_1
    //   34: putfield 79	com/jcraft/jsch/Channel:m	Z
    //   37: aload_0
    //   38: aconst_null
    //   39: putfield 75	com/jcraft/jsch/Channel:k	Ljava/lang/Thread;
    //   42: aload_0
    //   43: getfield 73	com/jcraft/jsch/Channel:j	Lcom/jcraft/jsch/IO;
    //   46: ifnull +10 -> 56
    //   49: aload_0
    //   50: getfield 73	com/jcraft/jsch/Channel:j	Lcom/jcraft/jsch/IO;
    //   53: invokevirtual 272	com/jcraft/jsch/IO:c	()V
    //   56: aload_0
    //   57: invokestatic 269	com/jcraft/jsch/Channel:a	(Lcom/jcraft/jsch/Channel;)V
    //   60: return
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    //   66: astore_1
    //   67: aload_0
    //   68: invokestatic 269	com/jcraft/jsch/Channel:a	(Lcom/jcraft/jsch/Channel;)V
    //   71: aload_1
    //   72: athrow
    //   73: astore_1
    //   74: goto -18 -> 56
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	this	Channel
    //   61	4	1	localObject1	Object
    //   66	6	1	localObject2	Object
    //   73	1	1	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   2	11	61	finally
    //   16	23	61	finally
    //   62	64	61	finally
    //   0	2	66	finally
    //   23	42	66	finally
    //   42	56	66	finally
    //   64	66	66	finally
    //   42	56	73	java/lang/Exception
  }
  
  protected void h(int paramInt)
  {
    try
    {
      Buffer localBuffer = new Buffer(100);
      Packet localPacket = new Packet(localBuffer);
      localPacket.a();
      localBuffer.a((byte)92);
      localBuffer.a(a());
      localBuffer.a(paramInt);
      localBuffer.b(Util.b("open failed"));
      localBuffer.b(Util.a);
      j().b(localPacket);
      return;
    }
    catch (Exception localException) {}
  }
  
  public boolean i()
  {
    boolean bool2 = false;
    Session localSession = v;
    boolean bool1 = bool2;
    if (localSession != null)
    {
      bool1 = bool2;
      if (localSession.d())
      {
        bool1 = bool2;
        if (o) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public Session j()
  {
    Session localSession = v;
    if (localSession == null) {
      throw new JSchException("session is not available");
    }
    return localSession;
  }
  
  protected void k()
  {
    Buffer localBuffer = new Buffer(100);
    Packet localPacket = new Packet(localBuffer);
    localPacket.a();
    localBuffer.a((byte)91);
    localBuffer.a(a());
    localBuffer.a(b);
    localBuffer.a(f);
    localBuffer.a(g);
    j().b(localPacket);
  }
  
  protected Packet l()
  {
    Buffer localBuffer = new Buffer(100);
    Packet localPacket = new Packet(localBuffer);
    localPacket.a();
    localBuffer.a((byte)90);
    localBuffer.b(d);
    localBuffer.a(b);
    localBuffer.a(f);
    localBuffer.a(g);
    return localPacket;
  }
  
  /* Error */
  protected void m()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 224	com/jcraft/jsch/Channel:j	()Lcom/jcraft/jsch/Session;
    //   4: astore 8
    //   6: aload 8
    //   8: invokevirtual 282	com/jcraft/jsch/Session:d	()Z
    //   11: ifne +14 -> 25
    //   14: new 211	com/jcraft/jsch/JSchException
    //   17: dup
    //   18: ldc_w 292
    //   21: invokespecial 287	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   24: athrow
    //   25: aload 8
    //   27: aload_0
    //   28: invokevirtual 294	com/jcraft/jsch/Channel:l	()Lcom/jcraft/jsch/Packet;
    //   31: invokevirtual 267	com/jcraft/jsch/Session:b	(Lcom/jcraft/jsch/Packet;)V
    //   34: sipush 2000
    //   37: istore_1
    //   38: invokestatic 299	java/lang/System:currentTimeMillis	()J
    //   41: lstore 6
    //   43: aload_0
    //   44: getfield 91	com/jcraft/jsch/Channel:s	I
    //   47: i2l
    //   48: lstore 4
    //   50: lload 4
    //   52: lconst_0
    //   53: lcmp
    //   54: ifeq +5 -> 59
    //   57: iconst_1
    //   58: istore_1
    //   59: aload_0
    //   60: monitorenter
    //   61: aload_0
    //   62: invokevirtual 252	com/jcraft/jsch/Channel:a	()I
    //   65: iconst_m1
    //   66: if_icmpne +15 -> 81
    //   69: aload 8
    //   71: invokevirtual 282	com/jcraft/jsch/Session:d	()Z
    //   74: ifeq +7 -> 81
    //   77: iload_1
    //   78: ifgt +24 -> 102
    //   81: aload_0
    //   82: monitorexit
    //   83: aload 8
    //   85: invokevirtual 282	com/jcraft/jsch/Session:d	()Z
    //   88: ifne +96 -> 184
    //   91: new 211	com/jcraft/jsch/JSchException
    //   94: dup
    //   95: ldc_w 292
    //   98: invokespecial 287	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   101: athrow
    //   102: lload 4
    //   104: lconst_0
    //   105: lcmp
    //   106: ifle +22 -> 128
    //   109: invokestatic 299	java/lang/System:currentTimeMillis	()J
    //   112: lstore_2
    //   113: lload_2
    //   114: lload 6
    //   116: lsub
    //   117: lload 4
    //   119: lcmp
    //   120: ifle +8 -> 128
    //   123: iconst_0
    //   124: istore_1
    //   125: goto -64 -> 61
    //   128: lload 4
    //   130: lconst_0
    //   131: lcmp
    //   132: ifne +102 -> 234
    //   135: ldc2_w 300
    //   138: lstore_2
    //   139: aload_0
    //   140: iconst_1
    //   141: putfield 93	com/jcraft/jsch/Channel:t	I
    //   144: aload_0
    //   145: lload_2
    //   146: invokevirtual 304	java/lang/Object:wait	(J)V
    //   149: aload_0
    //   150: iconst_0
    //   151: putfield 93	com/jcraft/jsch/Channel:t	I
    //   154: goto +73 -> 227
    //   157: astore 9
    //   159: aload_0
    //   160: iconst_0
    //   161: putfield 93	com/jcraft/jsch/Channel:t	I
    //   164: goto +63 -> 227
    //   167: astore 8
    //   169: aload_0
    //   170: monitorexit
    //   171: aload 8
    //   173: athrow
    //   174: astore 8
    //   176: aload_0
    //   177: iconst_0
    //   178: putfield 93	com/jcraft/jsch/Channel:t	I
    //   181: aload 8
    //   183: athrow
    //   184: aload_0
    //   185: invokevirtual 252	com/jcraft/jsch/Channel:a	()I
    //   188: iconst_m1
    //   189: if_icmpne +14 -> 203
    //   192: new 211	com/jcraft/jsch/JSchException
    //   195: dup
    //   196: ldc_w 306
    //   199: invokespecial 287	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   202: athrow
    //   203: aload_0
    //   204: getfield 85	com/jcraft/jsch/Channel:p	Z
    //   207: ifne +14 -> 221
    //   210: new 211	com/jcraft/jsch/JSchException
    //   213: dup
    //   214: ldc_w 306
    //   217: invokespecial 287	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   220: athrow
    //   221: aload_0
    //   222: iconst_1
    //   223: putfield 83	com/jcraft/jsch/Channel:o	Z
    //   226: return
    //   227: iload_1
    //   228: iconst_1
    //   229: isub
    //   230: istore_1
    //   231: goto -170 -> 61
    //   234: lload 4
    //   236: lstore_2
    //   237: goto -98 -> 139
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	240	0	this	Channel
    //   37	194	1	i1	int
    //   112	125	2	l1	long
    //   48	187	4	l2	long
    //   41	74	6	l3	long
    //   4	80	8	localSession	Session
    //   167	5	8	localObject1	Object
    //   174	8	8	localObject2	Object
    //   157	1	9	localInterruptedException	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   139	149	157	java/lang/InterruptedException
    //   61	77	167	finally
    //   81	83	167	finally
    //   109	113	167	finally
    //   149	154	167	finally
    //   159	164	167	finally
    //   169	171	167	finally
    //   176	184	167	finally
    //   139	149	174	finally
  }
  
  public void run() {}
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Channel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */