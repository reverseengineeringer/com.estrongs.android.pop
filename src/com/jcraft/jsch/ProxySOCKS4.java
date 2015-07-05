package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

public class ProxySOCKS4
  implements Proxy
{
  private static int a = 1080;
  private String b;
  private int c;
  private InputStream d;
  private OutputStream e;
  private Socket f;
  private String g;
  
  public InputStream a()
  {
    return d;
  }
  
  /* Error */
  public void a(SocketFactory paramSocketFactory, String paramString, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: iconst_4
    //   1: istore 6
    //   3: iconst_0
    //   4: istore 5
    //   6: aload_1
    //   7: ifnonnull +223 -> 230
    //   10: aload_0
    //   11: aload_0
    //   12: getfield 35	com/jcraft/jsch/ProxySOCKS4:b	Ljava/lang/String;
    //   15: aload_0
    //   16: getfield 37	com/jcraft/jsch/ProxySOCKS4:c	I
    //   19: iload 4
    //   21: invokestatic 42	com/jcraft/jsch/Util:a	(Ljava/lang/String;II)Ljava/net/Socket;
    //   24: putfield 44	com/jcraft/jsch/ProxySOCKS4:f	Ljava/net/Socket;
    //   27: aload_0
    //   28: aload_0
    //   29: getfield 44	com/jcraft/jsch/ProxySOCKS4:f	Ljava/net/Socket;
    //   32: invokevirtual 49	java/net/Socket:getInputStream	()Ljava/io/InputStream;
    //   35: putfield 26	com/jcraft/jsch/ProxySOCKS4:d	Ljava/io/InputStream;
    //   38: aload_0
    //   39: aload_0
    //   40: getfield 44	com/jcraft/jsch/ProxySOCKS4:f	Ljava/net/Socket;
    //   43: invokevirtual 53	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   46: putfield 55	com/jcraft/jsch/ProxySOCKS4:e	Ljava/io/OutputStream;
    //   49: iload 4
    //   51: ifle +12 -> 63
    //   54: aload_0
    //   55: getfield 44	com/jcraft/jsch/ProxySOCKS4:f	Ljava/net/Socket;
    //   58: iload 4
    //   60: invokevirtual 59	java/net/Socket:setSoTimeout	(I)V
    //   63: aload_0
    //   64: getfield 44	com/jcraft/jsch/ProxySOCKS4:f	Ljava/net/Socket;
    //   67: iconst_1
    //   68: invokevirtual 63	java/net/Socket:setTcpNoDelay	(Z)V
    //   71: sipush 1024
    //   74: newarray <illegal type>
    //   76: astore_1
    //   77: aload_1
    //   78: iconst_0
    //   79: iconst_4
    //   80: bastore
    //   81: aload_1
    //   82: iconst_1
    //   83: iconst_1
    //   84: bastore
    //   85: aload_1
    //   86: iconst_2
    //   87: iload_3
    //   88: bipush 8
    //   90: iushr
    //   91: i2b
    //   92: bastore
    //   93: aload_1
    //   94: iconst_3
    //   95: iload_3
    //   96: sipush 255
    //   99: iand
    //   100: i2b
    //   101: bastore
    //   102: aload_2
    //   103: invokestatic 69	java/net/InetAddress:getByName	(Ljava/lang/String;)Ljava/net/InetAddress;
    //   106: invokevirtual 73	java/net/InetAddress:getAddress	()[B
    //   109: astore_2
    //   110: iconst_0
    //   111: istore 4
    //   113: iload 6
    //   115: istore_3
    //   116: aload_2
    //   117: arraylength
    //   118: istore 6
    //   120: iload 4
    //   122: iload 6
    //   124: if_icmplt +197 -> 321
    //   127: iload_3
    //   128: istore 4
    //   130: aload_0
    //   131: getfield 75	com/jcraft/jsch/ProxySOCKS4:g	Ljava/lang/String;
    //   134: ifnull +34 -> 168
    //   137: aload_0
    //   138: getfield 75	com/jcraft/jsch/ProxySOCKS4:g	Ljava/lang/String;
    //   141: invokestatic 78	com/jcraft/jsch/Util:b	(Ljava/lang/String;)[B
    //   144: iconst_0
    //   145: aload_1
    //   146: iload_3
    //   147: aload_0
    //   148: getfield 75	com/jcraft/jsch/ProxySOCKS4:g	Ljava/lang/String;
    //   151: invokevirtual 84	java/lang/String:length	()I
    //   154: invokestatic 90	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   157: iload_3
    //   158: aload_0
    //   159: getfield 75	com/jcraft/jsch/ProxySOCKS4:g	Ljava/lang/String;
    //   162: invokevirtual 84	java/lang/String:length	()I
    //   165: iadd
    //   166: istore 4
    //   168: aload_1
    //   169: iload 4
    //   171: iconst_0
    //   172: bastore
    //   173: aload_0
    //   174: getfield 55	com/jcraft/jsch/ProxySOCKS4:e	Ljava/io/OutputStream;
    //   177: aload_1
    //   178: iconst_0
    //   179: iload 4
    //   181: iconst_1
    //   182: iadd
    //   183: invokevirtual 96	java/io/OutputStream:write	([BII)V
    //   186: iload 5
    //   188: istore_3
    //   189: iload_3
    //   190: bipush 8
    //   192: if_icmplt +178 -> 370
    //   195: aload_1
    //   196: iconst_0
    //   197: baload
    //   198: ifeq +202 -> 400
    //   201: new 98	com/jcraft/jsch/JSchException
    //   204: dup
    //   205: new 100	java/lang/StringBuilder
    //   208: dup
    //   209: ldc 102
    //   211: invokespecial 106	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   214: aload_1
    //   215: iconst_0
    //   216: baload
    //   217: invokevirtual 110	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   220: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   223: invokespecial 115	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   226: athrow
    //   227: astore_1
    //   228: aload_1
    //   229: athrow
    //   230: aload_0
    //   231: aload_1
    //   232: aload_0
    //   233: getfield 35	com/jcraft/jsch/ProxySOCKS4:b	Ljava/lang/String;
    //   236: aload_0
    //   237: getfield 37	com/jcraft/jsch/ProxySOCKS4:c	I
    //   240: invokeinterface 120 3 0
    //   245: putfield 44	com/jcraft/jsch/ProxySOCKS4:f	Ljava/net/Socket;
    //   248: aload_0
    //   249: aload_1
    //   250: aload_0
    //   251: getfield 44	com/jcraft/jsch/ProxySOCKS4:f	Ljava/net/Socket;
    //   254: invokeinterface 123 2 0
    //   259: putfield 26	com/jcraft/jsch/ProxySOCKS4:d	Ljava/io/InputStream;
    //   262: aload_0
    //   263: aload_1
    //   264: aload_0
    //   265: getfield 44	com/jcraft/jsch/ProxySOCKS4:f	Ljava/net/Socket;
    //   268: invokeinterface 126 2 0
    //   273: putfield 55	com/jcraft/jsch/ProxySOCKS4:e	Ljava/io/OutputStream;
    //   276: goto -227 -> 49
    //   279: astore_1
    //   280: aload_0
    //   281: getfield 44	com/jcraft/jsch/ProxySOCKS4:f	Ljava/net/Socket;
    //   284: ifnull +10 -> 294
    //   287: aload_0
    //   288: getfield 44	com/jcraft/jsch/ProxySOCKS4:f	Ljava/net/Socket;
    //   291: invokevirtual 129	java/net/Socket:close	()V
    //   294: new 98	com/jcraft/jsch/JSchException
    //   297: dup
    //   298: new 100	java/lang/StringBuilder
    //   301: dup
    //   302: ldc -125
    //   304: invokespecial 106	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   307: aload_1
    //   308: invokevirtual 132	java/lang/Exception:toString	()Ljava/lang/String;
    //   311: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   314: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   317: invokespecial 115	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   320: athrow
    //   321: aload_1
    //   322: iload_3
    //   323: aload_2
    //   324: iload 4
    //   326: baload
    //   327: bastore
    //   328: iload 4
    //   330: iconst_1
    //   331: iadd
    //   332: istore 4
    //   334: iload_3
    //   335: iconst_1
    //   336: iadd
    //   337: istore_3
    //   338: goto -222 -> 116
    //   341: astore_1
    //   342: new 98	com/jcraft/jsch/JSchException
    //   345: dup
    //   346: new 100	java/lang/StringBuilder
    //   349: dup
    //   350: ldc -125
    //   352: invokespecial 106	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   355: aload_1
    //   356: invokevirtual 136	java/net/UnknownHostException:toString	()Ljava/lang/String;
    //   359: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   365: aload_1
    //   366: invokespecial 139	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   369: athrow
    //   370: aload_0
    //   371: getfield 26	com/jcraft/jsch/ProxySOCKS4:d	Ljava/io/InputStream;
    //   374: aload_1
    //   375: iload_3
    //   376: bipush 8
    //   378: iload_3
    //   379: isub
    //   380: invokevirtual 145	java/io/InputStream:read	([BII)I
    //   383: istore 4
    //   385: iload 4
    //   387: ifgt +65 -> 452
    //   390: new 98	com/jcraft/jsch/JSchException
    //   393: dup
    //   394: ldc -109
    //   396: invokespecial 115	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   399: athrow
    //   400: aload_1
    //   401: iconst_1
    //   402: baload
    //   403: istore_3
    //   404: iload_3
    //   405: bipush 90
    //   407: if_icmpeq +36 -> 443
    //   410: aload_0
    //   411: getfield 44	com/jcraft/jsch/ProxySOCKS4:f	Ljava/net/Socket;
    //   414: invokevirtual 129	java/net/Socket:close	()V
    //   417: new 98	com/jcraft/jsch/JSchException
    //   420: dup
    //   421: new 100	java/lang/StringBuilder
    //   424: dup
    //   425: ldc -107
    //   427: invokespecial 106	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   430: aload_1
    //   431: iconst_1
    //   432: baload
    //   433: invokevirtual 110	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   436: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   439: invokespecial 115	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   442: athrow
    //   443: return
    //   444: astore_2
    //   445: goto -151 -> 294
    //   448: astore_2
    //   449: goto -32 -> 417
    //   452: iload_3
    //   453: iload 4
    //   455: iadd
    //   456: istore_3
    //   457: goto -268 -> 189
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	460	0	this	ProxySOCKS4
    //   0	460	1	paramSocketFactory	SocketFactory
    //   0	460	2	paramString	String
    //   0	460	3	paramInt1	int
    //   0	460	4	paramInt2	int
    //   4	183	5	i	int
    //   1	124	6	j	int
    // Exception table:
    //   from	to	target	type
    //   10	49	227	java/lang/RuntimeException
    //   54	63	227	java/lang/RuntimeException
    //   63	77	227	java/lang/RuntimeException
    //   102	110	227	java/lang/RuntimeException
    //   116	120	227	java/lang/RuntimeException
    //   130	168	227	java/lang/RuntimeException
    //   173	186	227	java/lang/RuntimeException
    //   201	227	227	java/lang/RuntimeException
    //   230	276	227	java/lang/RuntimeException
    //   342	370	227	java/lang/RuntimeException
    //   370	385	227	java/lang/RuntimeException
    //   390	400	227	java/lang/RuntimeException
    //   410	417	227	java/lang/RuntimeException
    //   417	443	227	java/lang/RuntimeException
    //   10	49	279	java/lang/Exception
    //   54	63	279	java/lang/Exception
    //   63	77	279	java/lang/Exception
    //   102	110	279	java/lang/Exception
    //   116	120	279	java/lang/Exception
    //   130	168	279	java/lang/Exception
    //   173	186	279	java/lang/Exception
    //   201	227	279	java/lang/Exception
    //   230	276	279	java/lang/Exception
    //   342	370	279	java/lang/Exception
    //   370	385	279	java/lang/Exception
    //   390	400	279	java/lang/Exception
    //   417	443	279	java/lang/Exception
    //   102	110	341	java/net/UnknownHostException
    //   116	120	341	java/net/UnknownHostException
    //   280	294	444	java/lang/Exception
    //   410	417	448	java/lang/Exception
  }
  
  public OutputStream b()
  {
    return e;
  }
  
  public Socket c()
  {
    return f;
  }
  
  public void d()
  {
    try
    {
      if (d != null) {
        d.close();
      }
      if (e != null) {
        e.close();
      }
      if (f != null) {
        f.close();
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    d = null;
    e = null;
    f = null;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ProxySOCKS4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */