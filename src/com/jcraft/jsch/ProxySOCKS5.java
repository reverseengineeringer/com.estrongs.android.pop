package com.jcraft.jsch;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

public class ProxySOCKS5
  implements Proxy
{
  private static int a = 1080;
  private String b;
  private int c;
  private InputStream d;
  private OutputStream e;
  private Socket f;
  private String g;
  private String h;
  
  private void a(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    for (;;)
    {
      if (i >= paramInt) {
        return;
      }
      int j = paramInputStream.read(paramArrayOfByte, i, paramInt - i);
      if (j <= 0) {
        throw new JSchException("ProxySOCKS5: stream is closed");
      }
      i += j;
    }
  }
  
  public InputStream a()
  {
    return d;
  }
  
  /* Error */
  public void a(SocketFactory paramSocketFactory, String paramString, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 5
    //   3: aload_1
    //   4: ifnonnull +176 -> 180
    //   7: aload_0
    //   8: aload_0
    //   9: getfield 49	com/jcraft/jsch/ProxySOCKS5:b	Ljava/lang/String;
    //   12: aload_0
    //   13: getfield 51	com/jcraft/jsch/ProxySOCKS5:c	I
    //   16: iload 4
    //   18: invokestatic 56	com/jcraft/jsch/Util:a	(Ljava/lang/String;II)Ljava/net/Socket;
    //   21: putfield 58	com/jcraft/jsch/ProxySOCKS5:f	Ljava/net/Socket;
    //   24: aload_0
    //   25: aload_0
    //   26: getfield 58	com/jcraft/jsch/ProxySOCKS5:f	Ljava/net/Socket;
    //   29: invokevirtual 63	java/net/Socket:getInputStream	()Ljava/io/InputStream;
    //   32: putfield 42	com/jcraft/jsch/ProxySOCKS5:d	Ljava/io/InputStream;
    //   35: aload_0
    //   36: aload_0
    //   37: getfield 58	com/jcraft/jsch/ProxySOCKS5:f	Ljava/net/Socket;
    //   40: invokevirtual 67	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   43: putfield 69	com/jcraft/jsch/ProxySOCKS5:e	Ljava/io/OutputStream;
    //   46: iload 4
    //   48: ifle +12 -> 60
    //   51: aload_0
    //   52: getfield 58	com/jcraft/jsch/ProxySOCKS5:f	Ljava/net/Socket;
    //   55: iload 4
    //   57: invokevirtual 73	java/net/Socket:setSoTimeout	(I)V
    //   60: aload_0
    //   61: getfield 58	com/jcraft/jsch/ProxySOCKS5:f	Ljava/net/Socket;
    //   64: iconst_1
    //   65: invokevirtual 77	java/net/Socket:setTcpNoDelay	(Z)V
    //   68: sipush 1024
    //   71: newarray <illegal type>
    //   73: astore_1
    //   74: aload_1
    //   75: iconst_0
    //   76: iconst_5
    //   77: bastore
    //   78: aload_1
    //   79: iconst_1
    //   80: iconst_2
    //   81: bastore
    //   82: aload_1
    //   83: iconst_2
    //   84: iconst_0
    //   85: bastore
    //   86: aload_1
    //   87: iconst_3
    //   88: iconst_2
    //   89: bastore
    //   90: aload_0
    //   91: getfield 69	com/jcraft/jsch/ProxySOCKS5:e	Ljava/io/OutputStream;
    //   94: aload_1
    //   95: iconst_0
    //   96: iconst_4
    //   97: invokevirtual 83	java/io/OutputStream:write	([BII)V
    //   100: aload_0
    //   101: aload_0
    //   102: getfield 42	com/jcraft/jsch/ProxySOCKS5:d	Ljava/io/InputStream;
    //   105: aload_1
    //   106: iconst_2
    //   107: invokespecial 85	com/jcraft/jsch/ProxySOCKS5:a	(Ljava/io/InputStream;[BI)V
    //   110: aload_1
    //   111: iconst_1
    //   112: baload
    //   113: istore 6
    //   115: iload 5
    //   117: istore 4
    //   119: iload 6
    //   121: sipush 255
    //   124: iand
    //   125: tableswitch	default:+27->152, 0:+30->155, 1:+27->152, 2:+156->281
    //   152: iconst_0
    //   153: istore 4
    //   155: iload 4
    //   157: ifne +275 -> 432
    //   160: aload_0
    //   161: getfield 58	com/jcraft/jsch/ProxySOCKS5:f	Ljava/net/Socket;
    //   164: invokevirtual 88	java/net/Socket:close	()V
    //   167: new 33	com/jcraft/jsch/JSchException
    //   170: dup
    //   171: ldc 90
    //   173: invokespecial 39	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   176: athrow
    //   177: astore_1
    //   178: aload_1
    //   179: athrow
    //   180: aload_0
    //   181: aload_1
    //   182: aload_0
    //   183: getfield 49	com/jcraft/jsch/ProxySOCKS5:b	Ljava/lang/String;
    //   186: aload_0
    //   187: getfield 51	com/jcraft/jsch/ProxySOCKS5:c	I
    //   190: invokeinterface 95 3 0
    //   195: putfield 58	com/jcraft/jsch/ProxySOCKS5:f	Ljava/net/Socket;
    //   198: aload_0
    //   199: aload_1
    //   200: aload_0
    //   201: getfield 58	com/jcraft/jsch/ProxySOCKS5:f	Ljava/net/Socket;
    //   204: invokeinterface 98 2 0
    //   209: putfield 42	com/jcraft/jsch/ProxySOCKS5:d	Ljava/io/InputStream;
    //   212: aload_0
    //   213: aload_1
    //   214: aload_0
    //   215: getfield 58	com/jcraft/jsch/ProxySOCKS5:f	Ljava/net/Socket;
    //   218: invokeinterface 101 2 0
    //   223: putfield 69	com/jcraft/jsch/ProxySOCKS5:e	Ljava/io/OutputStream;
    //   226: goto -180 -> 46
    //   229: astore_1
    //   230: aload_0
    //   231: getfield 58	com/jcraft/jsch/ProxySOCKS5:f	Ljava/net/Socket;
    //   234: ifnull +10 -> 244
    //   237: aload_0
    //   238: getfield 58	com/jcraft/jsch/ProxySOCKS5:f	Ljava/net/Socket;
    //   241: invokevirtual 88	java/net/Socket:close	()V
    //   244: new 103	java/lang/StringBuilder
    //   247: dup
    //   248: ldc 105
    //   250: invokespecial 106	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   253: aload_1
    //   254: invokevirtual 110	java/lang/Exception:toString	()Ljava/lang/String;
    //   257: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   263: astore_2
    //   264: aload_1
    //   265: instanceof 117
    //   268: ifeq +352 -> 620
    //   271: new 33	com/jcraft/jsch/JSchException
    //   274: dup
    //   275: aload_2
    //   276: aload_1
    //   277: invokespecial 120	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   280: athrow
    //   281: aload_0
    //   282: getfield 122	com/jcraft/jsch/ProxySOCKS5:g	Ljava/lang/String;
    //   285: ifnull -133 -> 152
    //   288: aload_0
    //   289: getfield 124	com/jcraft/jsch/ProxySOCKS5:h	Ljava/lang/String;
    //   292: ifnonnull +9 -> 301
    //   295: iconst_0
    //   296: istore 4
    //   298: goto -143 -> 155
    //   301: aload_1
    //   302: iconst_0
    //   303: iconst_1
    //   304: bastore
    //   305: aload_1
    //   306: iconst_1
    //   307: aload_0
    //   308: getfield 122	com/jcraft/jsch/ProxySOCKS5:g	Ljava/lang/String;
    //   311: invokevirtual 130	java/lang/String:length	()I
    //   314: i2b
    //   315: bastore
    //   316: aload_0
    //   317: getfield 122	com/jcraft/jsch/ProxySOCKS5:g	Ljava/lang/String;
    //   320: invokestatic 133	com/jcraft/jsch/Util:b	(Ljava/lang/String;)[B
    //   323: iconst_0
    //   324: aload_1
    //   325: iconst_2
    //   326: aload_0
    //   327: getfield 122	com/jcraft/jsch/ProxySOCKS5:g	Ljava/lang/String;
    //   330: invokevirtual 130	java/lang/String:length	()I
    //   333: invokestatic 139	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   336: aload_0
    //   337: getfield 122	com/jcraft/jsch/ProxySOCKS5:g	Ljava/lang/String;
    //   340: invokevirtual 130	java/lang/String:length	()I
    //   343: iconst_2
    //   344: iadd
    //   345: istore 6
    //   347: iload 6
    //   349: iconst_1
    //   350: iadd
    //   351: istore 4
    //   353: aload_1
    //   354: iload 6
    //   356: aload_0
    //   357: getfield 124	com/jcraft/jsch/ProxySOCKS5:h	Ljava/lang/String;
    //   360: invokevirtual 130	java/lang/String:length	()I
    //   363: i2b
    //   364: bastore
    //   365: aload_0
    //   366: getfield 124	com/jcraft/jsch/ProxySOCKS5:h	Ljava/lang/String;
    //   369: invokestatic 133	com/jcraft/jsch/Util:b	(Ljava/lang/String;)[B
    //   372: iconst_0
    //   373: aload_1
    //   374: iload 4
    //   376: aload_0
    //   377: getfield 124	com/jcraft/jsch/ProxySOCKS5:h	Ljava/lang/String;
    //   380: invokevirtual 130	java/lang/String:length	()I
    //   383: invokestatic 139	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   386: aload_0
    //   387: getfield 124	com/jcraft/jsch/ProxySOCKS5:h	Ljava/lang/String;
    //   390: invokevirtual 130	java/lang/String:length	()I
    //   393: istore 6
    //   395: aload_0
    //   396: getfield 69	com/jcraft/jsch/ProxySOCKS5:e	Ljava/io/OutputStream;
    //   399: aload_1
    //   400: iconst_0
    //   401: iload 6
    //   403: iload 4
    //   405: iadd
    //   406: invokevirtual 83	java/io/OutputStream:write	([BII)V
    //   409: aload_0
    //   410: aload_0
    //   411: getfield 42	com/jcraft/jsch/ProxySOCKS5:d	Ljava/io/InputStream;
    //   414: aload_1
    //   415: iconst_2
    //   416: invokespecial 85	com/jcraft/jsch/ProxySOCKS5:a	(Ljava/io/InputStream;[BI)V
    //   419: aload_1
    //   420: iconst_1
    //   421: baload
    //   422: ifne -270 -> 152
    //   425: iload 5
    //   427: istore 4
    //   429: goto -274 -> 155
    //   432: aload_1
    //   433: iconst_0
    //   434: iconst_5
    //   435: bastore
    //   436: aload_1
    //   437: iconst_1
    //   438: iconst_1
    //   439: bastore
    //   440: aload_1
    //   441: iconst_2
    //   442: iconst_0
    //   443: bastore
    //   444: aload_2
    //   445: invokestatic 133	com/jcraft/jsch/Util:b	(Ljava/lang/String;)[B
    //   448: astore_2
    //   449: aload_2
    //   450: arraylength
    //   451: istore 4
    //   453: aload_1
    //   454: iconst_3
    //   455: iconst_3
    //   456: bastore
    //   457: aload_1
    //   458: iconst_4
    //   459: iload 4
    //   461: i2b
    //   462: bastore
    //   463: aload_2
    //   464: iconst_0
    //   465: aload_1
    //   466: iconst_5
    //   467: iload 4
    //   469: invokestatic 139	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   472: iload 4
    //   474: iconst_5
    //   475: iadd
    //   476: istore 4
    //   478: iload 4
    //   480: iconst_1
    //   481: iadd
    //   482: istore 5
    //   484: aload_1
    //   485: iload 4
    //   487: iload_3
    //   488: bipush 8
    //   490: iushr
    //   491: i2b
    //   492: bastore
    //   493: aload_1
    //   494: iload 5
    //   496: iload_3
    //   497: sipush 255
    //   500: iand
    //   501: i2b
    //   502: bastore
    //   503: aload_0
    //   504: getfield 69	com/jcraft/jsch/ProxySOCKS5:e	Ljava/io/OutputStream;
    //   507: aload_1
    //   508: iconst_0
    //   509: iload 5
    //   511: iconst_1
    //   512: iadd
    //   513: invokevirtual 83	java/io/OutputStream:write	([BII)V
    //   516: aload_0
    //   517: aload_0
    //   518: getfield 42	com/jcraft/jsch/ProxySOCKS5:d	Ljava/io/InputStream;
    //   521: aload_1
    //   522: iconst_4
    //   523: invokespecial 85	com/jcraft/jsch/ProxySOCKS5:a	(Ljava/io/InputStream;[BI)V
    //   526: aload_1
    //   527: iconst_1
    //   528: baload
    //   529: istore_3
    //   530: iload_3
    //   531: ifeq +110 -> 641
    //   534: aload_0
    //   535: getfield 58	com/jcraft/jsch/ProxySOCKS5:f	Ljava/net/Socket;
    //   538: invokevirtual 88	java/net/Socket:close	()V
    //   541: new 33	com/jcraft/jsch/JSchException
    //   544: dup
    //   545: new 103	java/lang/StringBuilder
    //   548: dup
    //   549: ldc -115
    //   551: invokespecial 106	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   554: aload_1
    //   555: iconst_1
    //   556: baload
    //   557: invokevirtual 144	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   560: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   563: invokespecial 39	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   566: athrow
    //   567: aload_0
    //   568: aload_0
    //   569: getfield 42	com/jcraft/jsch/ProxySOCKS5:d	Ljava/io/InputStream;
    //   572: aload_1
    //   573: bipush 6
    //   575: invokespecial 85	com/jcraft/jsch/ProxySOCKS5:a	(Ljava/io/InputStream;[BI)V
    //   578: return
    //   579: aload_0
    //   580: aload_0
    //   581: getfield 42	com/jcraft/jsch/ProxySOCKS5:d	Ljava/io/InputStream;
    //   584: aload_1
    //   585: iconst_1
    //   586: invokespecial 85	com/jcraft/jsch/ProxySOCKS5:a	(Ljava/io/InputStream;[BI)V
    //   589: aload_0
    //   590: aload_0
    //   591: getfield 42	com/jcraft/jsch/ProxySOCKS5:d	Ljava/io/InputStream;
    //   594: aload_1
    //   595: aload_1
    //   596: iconst_0
    //   597: baload
    //   598: sipush 255
    //   601: iand
    //   602: iconst_2
    //   603: iadd
    //   604: invokespecial 85	com/jcraft/jsch/ProxySOCKS5:a	(Ljava/io/InputStream;[BI)V
    //   607: return
    //   608: aload_0
    //   609: aload_0
    //   610: getfield 42	com/jcraft/jsch/ProxySOCKS5:d	Ljava/io/InputStream;
    //   613: aload_1
    //   614: bipush 18
    //   616: invokespecial 85	com/jcraft/jsch/ProxySOCKS5:a	(Ljava/io/InputStream;[BI)V
    //   619: return
    //   620: new 33	com/jcraft/jsch/JSchException
    //   623: dup
    //   624: aload_2
    //   625: invokespecial 39	com/jcraft/jsch/JSchException:<init>	(Ljava/lang/String;)V
    //   628: athrow
    //   629: astore_2
    //   630: goto -386 -> 244
    //   633: astore_2
    //   634: goto -93 -> 541
    //   637: astore_1
    //   638: goto -471 -> 167
    //   641: aload_1
    //   642: iconst_3
    //   643: baload
    //   644: sipush 255
    //   647: iand
    //   648: tableswitch	default:+32->680, 1:+-81->567, 2:+32->680, 3:+-69->579, 4:+-40->608
    //   680: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	681	0	this	ProxySOCKS5
    //   0	681	1	paramSocketFactory	SocketFactory
    //   0	681	2	paramString	String
    //   0	681	3	paramInt1	int
    //   0	681	4	paramInt2	int
    //   1	512	5	i	int
    //   113	293	6	j	int
    // Exception table:
    //   from	to	target	type
    //   7	46	177	java/lang/RuntimeException
    //   51	60	177	java/lang/RuntimeException
    //   60	74	177	java/lang/RuntimeException
    //   90	110	177	java/lang/RuntimeException
    //   160	167	177	java/lang/RuntimeException
    //   167	177	177	java/lang/RuntimeException
    //   180	226	177	java/lang/RuntimeException
    //   281	295	177	java/lang/RuntimeException
    //   305	347	177	java/lang/RuntimeException
    //   353	419	177	java/lang/RuntimeException
    //   444	453	177	java/lang/RuntimeException
    //   463	472	177	java/lang/RuntimeException
    //   503	526	177	java/lang/RuntimeException
    //   534	541	177	java/lang/RuntimeException
    //   541	567	177	java/lang/RuntimeException
    //   567	578	177	java/lang/RuntimeException
    //   579	607	177	java/lang/RuntimeException
    //   608	619	177	java/lang/RuntimeException
    //   7	46	229	java/lang/Exception
    //   51	60	229	java/lang/Exception
    //   60	74	229	java/lang/Exception
    //   90	110	229	java/lang/Exception
    //   167	177	229	java/lang/Exception
    //   180	226	229	java/lang/Exception
    //   281	295	229	java/lang/Exception
    //   305	347	229	java/lang/Exception
    //   353	419	229	java/lang/Exception
    //   444	453	229	java/lang/Exception
    //   463	472	229	java/lang/Exception
    //   503	526	229	java/lang/Exception
    //   541	567	229	java/lang/Exception
    //   567	578	229	java/lang/Exception
    //   579	607	229	java/lang/Exception
    //   608	619	229	java/lang/Exception
    //   230	244	629	java/lang/Exception
    //   534	541	633	java/lang/Exception
    //   160	167	637	java/lang/Exception
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
 * Qualified Name:     com.jcraft.jsch.ProxySOCKS5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */