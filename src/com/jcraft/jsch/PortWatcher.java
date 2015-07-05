package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Vector;

class PortWatcher
  implements Runnable
{
  private static Vector i = new Vector();
  private static InetAddress j = null;
  Session a;
  int b;
  int c;
  String d;
  InetAddress e;
  Runnable f;
  ServerSocket g;
  int h;
  
  static
  {
    try
    {
      j = InetAddress.getByName("0.0.0.0");
      return;
    }
    catch (UnknownHostException localUnknownHostException) {}
  }
  
  /* Error */
  PortWatcher(Session paramSession, String paramString1, int paramInt1, String paramString2, int paramInt2, ServerSocketFactory paramServerSocketFactory)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 49	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: iconst_0
    //   6: putfield 51	com/jcraft/jsch/PortWatcher:h	I
    //   9: aload_0
    //   10: aload_1
    //   11: putfield 53	com/jcraft/jsch/PortWatcher:a	Lcom/jcraft/jsch/Session;
    //   14: aload_0
    //   15: iload_3
    //   16: putfield 55	com/jcraft/jsch/PortWatcher:b	I
    //   19: aload_0
    //   20: aload 4
    //   22: putfield 57	com/jcraft/jsch/PortWatcher:d	Ljava/lang/String;
    //   25: aload_0
    //   26: iload 5
    //   28: putfield 59	com/jcraft/jsch/PortWatcher:c	I
    //   31: aload_0
    //   32: aload_2
    //   33: invokestatic 44	java/net/InetAddress:getByName	(Ljava/lang/String;)Ljava/net/InetAddress;
    //   36: putfield 61	com/jcraft/jsch/PortWatcher:e	Ljava/net/InetAddress;
    //   39: aload 6
    //   41: ifnonnull +45 -> 86
    //   44: new 63	java/net/ServerSocket
    //   47: dup
    //   48: iload_3
    //   49: iconst_0
    //   50: aload_0
    //   51: getfield 61	com/jcraft/jsch/PortWatcher:e	Ljava/net/InetAddress;
    //   54: invokespecial 66	java/net/ServerSocket:<init>	(IILjava/net/InetAddress;)V
    //   57: astore_1
    //   58: aload_0
    //   59: aload_1
    //   60: putfield 68	com/jcraft/jsch/PortWatcher:g	Ljava/net/ServerSocket;
    //   63: iload_3
    //   64: ifne +21 -> 85
    //   67: aload_0
    //   68: getfield 68	com/jcraft/jsch/PortWatcher:g	Ljava/net/ServerSocket;
    //   71: invokevirtual 72	java/net/ServerSocket:getLocalPort	()I
    //   74: istore_3
    //   75: iload_3
    //   76: iconst_m1
    //   77: if_icmpeq +8 -> 85
    //   80: aload_0
    //   81: iload_3
    //   82: putfield 55	com/jcraft/jsch/PortWatcher:b	I
    //   85: return
    //   86: aload 6
    //   88: iload_3
    //   89: iconst_0
    //   90: aload_0
    //   91: getfield 61	com/jcraft/jsch/PortWatcher:e	Ljava/net/InetAddress;
    //   94: invokeinterface 77 4 0
    //   99: astore_1
    //   100: goto -42 -> 58
    //   103: astore_1
    //   104: new 79	java/lang/StringBuilder
    //   107: dup
    //   108: ldc 81
    //   110: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: aload_2
    //   114: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: ldc 90
    //   119: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: iload_3
    //   123: invokevirtual 93	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   126: ldc 95
    //   128: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   134: astore_2
    //   135: aload_1
    //   136: instanceof 101
    //   139: ifeq +13 -> 152
    //   142: new 103	com/jcraft/jsch/JSchException
    //   145: dup
    //   146: aload_2
    //   147: aload_1
    //   148: invokespecial 106	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   151: athrow
    //   152: new 103	com/jcraft/jsch/JSchException
    //   155: dup
    //   156: aload_2
    //   157: invokespecial 107	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   160: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	161	0	this	PortWatcher
    //   0	161	1	paramSession	Session
    //   0	161	2	paramString1	String
    //   0	161	3	paramInt1	int
    //   0	161	4	paramString2	String
    //   0	161	5	paramInt2	int
    //   0	161	6	paramServerSocketFactory	ServerSocketFactory
    // Exception table:
    //   from	to	target	type
    //   31	39	103	java/lang/Exception
    //   44	58	103	java/lang/Exception
    //   58	63	103	java/lang/Exception
    //   86	100	103	java/lang/Exception
  }
  
  /* Error */
  static PortWatcher a(Session paramSession, String paramString, int paramInt)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 44	java/net/InetAddress:getByName	(Ljava/lang/String;)Ljava/net/InetAddress;
    //   4: astore 4
    //   6: getstatic 34	com/jcraft/jsch/PortWatcher:i	Ljava/util/Vector;
    //   9: astore_1
    //   10: aload_1
    //   11: monitorenter
    //   12: iconst_0
    //   13: istore_3
    //   14: iload_3
    //   15: getstatic 34	com/jcraft/jsch/PortWatcher:i	Ljava/util/Vector;
    //   18: invokevirtual 111	java/util/Vector:size	()I
    //   21: if_icmplt +38 -> 59
    //   24: aload_1
    //   25: monitorexit
    //   26: aconst_null
    //   27: areturn
    //   28: astore_0
    //   29: new 103	com/jcraft/jsch/JSchException
    //   32: dup
    //   33: new 79	java/lang/StringBuilder
    //   36: dup
    //   37: ldc 113
    //   39: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: aload_1
    //   43: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: ldc 115
    //   48: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: aload_0
    //   55: invokespecial 106	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   58: athrow
    //   59: getstatic 34	com/jcraft/jsch/PortWatcher:i	Ljava/util/Vector;
    //   62: iload_3
    //   63: invokevirtual 119	java/util/Vector:elementAt	(I)Ljava/lang/Object;
    //   66: checkcast 2	com/jcraft/jsch/PortWatcher
    //   69: astore 5
    //   71: aload 5
    //   73: getfield 53	com/jcraft/jsch/PortWatcher:a	Lcom/jcraft/jsch/Session;
    //   76: aload_0
    //   77: if_acmpne +55 -> 132
    //   80: aload 5
    //   82: getfield 55	com/jcraft/jsch/PortWatcher:b	I
    //   85: iload_2
    //   86: if_icmpne +46 -> 132
    //   89: getstatic 36	com/jcraft/jsch/PortWatcher:j	Ljava/net/InetAddress;
    //   92: ifnull +17 -> 109
    //   95: aload 5
    //   97: getfield 61	com/jcraft/jsch/PortWatcher:e	Ljava/net/InetAddress;
    //   100: getstatic 36	com/jcraft/jsch/PortWatcher:j	Ljava/net/InetAddress;
    //   103: invokevirtual 123	java/net/InetAddress:equals	(Ljava/lang/Object;)Z
    //   106: ifne +16 -> 122
    //   109: aload 5
    //   111: getfield 61	com/jcraft/jsch/PortWatcher:e	Ljava/net/InetAddress;
    //   114: aload 4
    //   116: invokevirtual 123	java/net/InetAddress:equals	(Ljava/lang/Object;)Z
    //   119: ifeq +13 -> 132
    //   122: aload_1
    //   123: monitorexit
    //   124: aload 5
    //   126: areturn
    //   127: astore_0
    //   128: aload_1
    //   129: monitorexit
    //   130: aload_0
    //   131: athrow
    //   132: iload_3
    //   133: iconst_1
    //   134: iadd
    //   135: istore_3
    //   136: goto -122 -> 14
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	139	0	paramSession	Session
    //   0	139	1	paramString	String
    //   0	139	2	paramInt	int
    //   13	123	3	k	int
    //   4	111	4	localInetAddress	InetAddress
    //   69	56	5	localPortWatcher	PortWatcher
    // Exception table:
    //   from	to	target	type
    //   0	6	28	java/net/UnknownHostException
    //   14	26	127	finally
    //   59	109	127	finally
    //   109	122	127	finally
    //   122	124	127	finally
    //   128	130	127	finally
  }
  
  static PortWatcher a(Session paramSession, String paramString1, int paramInt1, String paramString2, int paramInt2, ServerSocketFactory paramServerSocketFactory)
  {
    paramString1 = a(paramString1);
    if (a(paramSession, paramString1, paramInt1) != null) {
      throw new JSchException("PortForwardingL: local port " + paramString1 + ":" + paramInt1 + " is already registered.");
    }
    paramSession = new PortWatcher(paramSession, paramString1, paramInt1, paramString2, paramInt2, paramServerSocketFactory);
    i.addElement(paramSession);
    return paramSession;
  }
  
  private static String a(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      if ((paramString.length() != 0) && (!paramString.equals("*"))) {
        break label27;
      }
      str = "0.0.0.0";
    }
    label27:
    do
    {
      return str;
      str = paramString;
    } while (!paramString.equals("localhost"));
    return "127.0.0.1";
  }
  
  static void a(Session paramSession)
  {
    for (;;)
    {
      int m;
      synchronized (i)
      {
        PortWatcher[] arrayOfPortWatcher = new PortWatcher[i.size()];
        m = 0;
        int k = 0;
        if (m >= i.size())
        {
          m = 0;
          if (m < k) {}
        }
        else
        {
          PortWatcher localPortWatcher = (PortWatcher)i.elementAt(m);
          if (a != paramSession) {
            break label105;
          }
          localPortWatcher.a();
          arrayOfPortWatcher[k] = localPortWatcher;
          k += 1;
          break label105;
        }
        paramSession = arrayOfPortWatcher[m];
        i.removeElement(paramSession);
        m += 1;
      }
      label105:
      m += 1;
    }
  }
  
  void a()
  {
    f = null;
    try
    {
      if (g != null) {
        g.close();
      }
      g = null;
      return;
    }
    catch (Exception localException) {}
  }
  
  void a(int paramInt)
  {
    h = paramInt;
  }
  
  public void run()
  {
    f = this;
    for (;;)
    {
      try
      {
        localObject = f;
        if (localObject != null) {
          continue;
        }
      }
      catch (Exception localException)
      {
        Object localObject;
        InputStream localInputStream;
        OutputStream localOutputStream;
        ChannelDirectTCPIP localChannelDirectTCPIP;
        int k;
        continue;
      }
      a();
      return;
      localObject = g.accept();
      ((Socket)localObject).setTcpNoDelay(true);
      localInputStream = ((Socket)localObject).getInputStream();
      localOutputStream = ((Socket)localObject).getOutputStream();
      localChannelDirectTCPIP = new ChannelDirectTCPIP();
      localChannelDirectTCPIP.b();
      localChannelDirectTCPIP.a(localInputStream);
      localChannelDirectTCPIP.a(localOutputStream);
      a.a(localChannelDirectTCPIP);
      localChannelDirectTCPIP.b(d);
      localChannelDirectTCPIP.i(c);
      localChannelDirectTCPIP.c(((Socket)localObject).getInetAddress().getHostAddress());
      localChannelDirectTCPIP.j(((Socket)localObject).getPort());
      localChannelDirectTCPIP.b(h);
      k = q;
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.PortWatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */