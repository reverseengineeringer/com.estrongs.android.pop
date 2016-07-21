package com.estrongs.android.pop.bt;

import b.b.f;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.l;
import java.io.IOException;
import java.util.Timer;

class c
  extends f
{
  private Timer b = new Timer();
  private boolean c = false;
  private boolean d = false;
  private b.a.a.a e;
  private String f;
  private String g;
  private int h;
  
  private c(a parama) {}
  
  private void c() {}
  
  public int a(b.b.c paramc1, b.b.c paramc2)
  {
    l.b("OBEXFtpServer", "OBEX onConnect");
    if (paramc1 == null) {
      return 160;
    }
    try
    {
      paramc1 = (byte[])paramc1.a(70);
      if (paramc1 == null) {}
      boolean bool;
      do
      {
        paramc2.a(203, new Long(h));
        paramc2.a(74, a.d());
        c = true;
        b.cancel();
        return 160;
        bool = a.a(a, paramc1);
      } while (bool);
      return 192;
    }
    catch (IOException paramc1) {}
    return 192;
  }
  
  public int a(b.b.c paramc1, b.b.c paramc2, boolean paramBoolean1, boolean paramBoolean2)
  {
    l.b("OBEXFtpServer", "OBEX onSetPath");
    if (!c) {
      return 164;
    }
    if (paramBoolean1) {
      g = f;
    }
    try
    {
      if (((Long)paramc1.a(203)).longValue() != h) {
        return 211;
      }
      paramc1 = (String)paramc1.a(1);
      if ((paramc1 == null) || (paramc1.length() == 0))
      {
        if ((!paramBoolean1) && (!paramBoolean2))
        {
          f = a.b(a);
        }
        else
        {
          if ((!paramBoolean1) || (paramBoolean2)) {
            break label255;
          }
          if (a.b(a).equals(f)) {
            return 196;
          }
          f = a.b(a, f);
        }
      }
      else if (paramc1.equals("/"))
      {
        f = a.b(a);
      }
      else
      {
        paramc1 = f + paramc1 + "/";
        paramBoolean1 = a.c(a, paramc1);
        if ((!paramBoolean2) && (!paramBoolean1)) {
          return 196;
        }
        f = paramc1;
        if ((paramBoolean2) && (!paramBoolean1)) {
          a.d(a, paramc1);
        }
      }
      return 160;
    }
    catch (IOException paramc1)
    {
      return 192;
    }
    label255:
    return 192;
  }
  
  /* Error */
  public int a(b.b.d paramd)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: ldc 43
    //   4: ldc 126
    //   6: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   9: aload_0
    //   10: getfield 32	com/estrongs/android/pop/bt/c:c	Z
    //   13: ifne +7 -> 20
    //   16: sipush 164
    //   19: ireturn
    //   20: aload_1
    //   21: invokeinterface 131 1 0
    //   26: astore 7
    //   28: aload 7
    //   30: sipush 203
    //   33: invokeinterface 55 2 0
    //   38: checkcast 59	java/lang/Long
    //   41: invokevirtual 89	java/lang/Long:longValue	()J
    //   44: lstore 4
    //   46: aload_0
    //   47: getfield 61	com/estrongs/android/pop/bt/c:h	I
    //   50: istore_3
    //   51: lload 4
    //   53: iload_3
    //   54: i2l
    //   55: lcmp
    //   56: ifeq +26 -> 82
    //   59: ldc 43
    //   61: ldc -123
    //   63: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   66: aload_0
    //   67: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   70: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   73: invokeinterface 140 1 0
    //   78: sipush 211
    //   81: ireturn
    //   82: aload 7
    //   84: iconst_1
    //   85: invokeinterface 55 2 0
    //   90: checkcast 91	java/lang/String
    //   93: astore 6
    //   95: aload 6
    //   97: ifnull +338 -> 435
    //   100: ldc 43
    //   102: new 109	java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   109: ldc -114
    //   111: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: aload 6
    //   116: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   125: aload_0
    //   126: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   129: new 109	java/lang/StringBuilder
    //   132: dup
    //   133: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   136: ldc -112
    //   138: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: aload 6
    //   143: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   149: invokestatic 147	com/estrongs/android/pop/bt/a:a	(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V
    //   152: aload 7
    //   154: sipush 195
    //   157: invokeinterface 55 2 0
    //   162: checkcast 59	java/lang/Long
    //   165: astore 7
    //   167: aload 7
    //   169: ifnull +58 -> 227
    //   172: ldc 43
    //   174: new 109	java/lang/StringBuilder
    //   177: dup
    //   178: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   181: ldc -107
    //   183: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: aload 7
    //   188: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   191: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   197: aload_0
    //   198: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   201: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   204: iconst_0
    //   205: invokeinterface 155 2 0
    //   210: aload_0
    //   211: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   214: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   217: aload 7
    //   219: invokevirtual 158	java/lang/Long:intValue	()I
    //   222: invokeinterface 160 2 0
    //   227: new 162	java/io/File
    //   230: dup
    //   231: aload_0
    //   232: getfield 83	com/estrongs/android/pop/bt/c:f	Ljava/lang/String;
    //   235: aload 6
    //   237: invokespecial 164	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   240: astore 8
    //   242: aload 8
    //   244: invokevirtual 168	java/io/File:exists	()Z
    //   247: ifne +9 -> 256
    //   250: aload 8
    //   252: invokevirtual 171	java/io/File:createNewFile	()Z
    //   255: pop
    //   256: new 173	java/io/BufferedOutputStream
    //   259: dup
    //   260: new 175	java/io/FileOutputStream
    //   263: dup
    //   264: aload 8
    //   266: invokespecial 178	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   269: ldc -77
    //   271: invokespecial 182	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   274: astore 9
    //   276: new 184	java/io/BufferedInputStream
    //   279: dup
    //   280: aload_1
    //   281: invokeinterface 187 1 0
    //   286: ldc -77
    //   288: invokespecial 190	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   291: astore 10
    //   293: ldc -77
    //   295: newarray <illegal type>
    //   297: astore 11
    //   299: aload_0
    //   300: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   303: invokestatic 193	com/estrongs/android/pop/bt/a:d	(Lcom/estrongs/android/pop/bt/a;)Z
    //   306: ifne +26 -> 332
    //   309: aload 10
    //   311: aload 11
    //   313: iconst_0
    //   314: ldc -77
    //   316: invokevirtual 197	java/io/BufferedInputStream:read	([BII)I
    //   319: istore_3
    //   320: iload_3
    //   321: iconst_m1
    //   322: if_icmpne +148 -> 470
    //   325: ldc 43
    //   327: ldc -57
    //   329: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   332: aload 9
    //   334: invokevirtual 202	java/io/BufferedOutputStream:flush	()V
    //   337: aload 9
    //   339: invokevirtual 205	java/io/BufferedOutputStream:close	()V
    //   342: aload_1
    //   343: invokeinterface 207 1 0
    //   348: ldc 43
    //   350: new 109	java/lang/StringBuilder
    //   353: dup
    //   354: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   357: ldc -47
    //   359: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: aload 8
    //   364: invokevirtual 212	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   367: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   370: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   373: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   376: aload_0
    //   377: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   380: new 109	java/lang/StringBuilder
    //   383: dup
    //   384: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   387: ldc -42
    //   389: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: aload 6
    //   394: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   397: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   400: invokestatic 147	com/estrongs/android/pop/bt/a:a	(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V
    //   403: aload_0
    //   404: iconst_1
    //   405: putfield 34	com/estrongs/android/pop/bt/c:d	Z
    //   408: aload_0
    //   409: invokespecial 216	com/estrongs/android/pop/bt/c:c	()V
    //   412: ldc 43
    //   414: ldc -123
    //   416: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   419: aload_0
    //   420: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   423: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   426: invokeinterface 140 1 0
    //   431: sipush 160
    //   434: ireturn
    //   435: new 109	java/lang/StringBuilder
    //   438: dup
    //   439: invokespecial 110	java/lang/StringBuilder:<init>	()V
    //   442: ldc -38
    //   444: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   447: invokestatic 223	android/os/SystemClock:uptimeMillis	()J
    //   450: invokevirtual 226	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   453: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   456: astore 6
    //   458: aload_0
    //   459: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   462: ldc -28
    //   464: invokestatic 147	com/estrongs/android/pop/bt/a:a	(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;)V
    //   467: goto -315 -> 152
    //   470: aload 9
    //   472: aload 11
    //   474: iconst_0
    //   475: iload_3
    //   476: invokevirtual 232	java/io/BufferedOutputStream:write	([BII)V
    //   479: iload_2
    //   480: iload_3
    //   481: iadd
    //   482: istore_3
    //   483: iload_3
    //   484: istore_2
    //   485: aload 7
    //   487: ifnull -188 -> 299
    //   490: iload_3
    //   491: istore_2
    //   492: iload_3
    //   493: bipush 100
    //   495: irem
    //   496: ifne -197 -> 299
    //   499: aload_0
    //   500: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   503: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   506: iload_3
    //   507: invokeinterface 155 2 0
    //   512: iload_3
    //   513: istore_2
    //   514: goto -215 -> 299
    //   517: astore_1
    //   518: ldc 43
    //   520: ldc -22
    //   522: aload_1
    //   523: invokestatic 237	com/estrongs/android/util/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   526: ldc 43
    //   528: ldc -123
    //   530: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   533: aload_0
    //   534: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   537: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   540: invokeinterface 140 1 0
    //   545: sipush 211
    //   548: ireturn
    //   549: astore_1
    //   550: ldc 43
    //   552: ldc -123
    //   554: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   557: aload_0
    //   558: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   561: invokestatic 136	com/estrongs/android/pop/bt/a:c	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/android/pop/bt/k;
    //   564: invokeinterface 140 1 0
    //   569: aload_1
    //   570: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	571	0	this	c
    //   0	571	1	paramd	b.b.d
    //   1	513	2	i	int
    //   50	463	3	j	int
    //   44	8	4	l	long
    //   93	364	6	str	String
    //   26	460	7	localObject	Object
    //   240	123	8	localFile	java.io.File
    //   274	197	9	localBufferedOutputStream	java.io.BufferedOutputStream
    //   291	19	10	localBufferedInputStream	java.io.BufferedInputStream
    //   297	176	11	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   20	51	517	java/io/IOException
    //   82	95	517	java/io/IOException
    //   100	152	517	java/io/IOException
    //   152	167	517	java/io/IOException
    //   172	227	517	java/io/IOException
    //   227	256	517	java/io/IOException
    //   256	299	517	java/io/IOException
    //   299	320	517	java/io/IOException
    //   325	332	517	java/io/IOException
    //   332	412	517	java/io/IOException
    //   435	467	517	java/io/IOException
    //   470	479	517	java/io/IOException
    //   499	512	517	java/io/IOException
    //   20	51	549	finally
    //   82	95	549	finally
    //   100	152	549	finally
    //   152	167	549	finally
    //   172	227	549	finally
    //   227	256	549	finally
    //   256	299	549	finally
    //   299	320	549	finally
    //   325	332	549	finally
    //   332	412	549	finally
    //   435	467	549	finally
    //   470	479	549	finally
    //   499	512	549	finally
    //   518	526	549	finally
  }
  
  public void a()
  {
    l.b("OBEXFtpServer", "OBEX notConnectedClose");
    if (!c) {
      l.b("OBEXFtpServer", "OBEX connection timeout");
    }
    try
    {
      e.e();
      if (!d) {
        a.a(a, "Disconnected");
      }
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public void a(b.a.a.a parama, int paramInt)
  {
    l.b("OBEXFtpServer", "Received OBEX connection");
    a.a(a, "Client connected");
    e = parama;
    h = paramInt;
    if (!c) {
      b.schedule(new d(this), 60000L);
    }
    f = ad.a(a.a(a)).z();
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    l.b("OBEXFtpServer", "OBEX AuthFailure " + new String(paramArrayOfByte));
  }
  
  /* Error */
  public int b(b.b.d paramd)
  {
    // Byte code:
    //   0: ldc 43
    //   2: ldc_w 282
    //   5: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   8: aload_0
    //   9: getfield 32	com/estrongs/android/pop/bt/c:c	Z
    //   12: ifne +7 -> 19
    //   15: sipush 164
    //   18: ireturn
    //   19: aload_1
    //   20: invokeinterface 131 1 0
    //   25: astore 6
    //   27: aload 6
    //   29: ifnonnull +15 -> 44
    //   32: ldc 43
    //   34: ldc_w 284
    //   37: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   40: sipush 192
    //   43: ireturn
    //   44: aload 6
    //   46: bipush 66
    //   48: invokeinterface 55 2 0
    //   53: checkcast 91	java/lang/String
    //   56: astore 7
    //   58: aload 6
    //   60: iconst_1
    //   61: invokeinterface 55 2 0
    //   66: checkcast 91	java/lang/String
    //   69: astore 5
    //   71: aload 6
    //   73: sipush 203
    //   76: invokeinterface 55 2 0
    //   81: checkcast 59	java/lang/Long
    //   84: invokevirtual 89	java/lang/Long:longValue	()J
    //   87: lstore_3
    //   88: aload_0
    //   89: getfield 61	com/estrongs/android/pop/bt/c:h	I
    //   92: istore_2
    //   93: lload_3
    //   94: iload_2
    //   95: i2l
    //   96: lcmp
    //   97: ifeq +15 -> 112
    //   100: ldc 43
    //   102: ldc_w 284
    //   105: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   108: sipush 211
    //   111: ireturn
    //   112: aload 7
    //   114: ifnull +156 -> 270
    //   117: aload 7
    //   119: ldc_w 286
    //   122: invokevirtual 102	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   125: ifeq +145 -> 270
    //   128: aload_0
    //   129: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   132: invokestatic 289	com/estrongs/android/pop/bt/a:e	(Lcom/estrongs/android/pop/bt/a;)Lcom/estrongs/bluetooth/parser/a;
    //   135: aload_0
    //   136: getfield 22	com/estrongs/android/pop/bt/c:a	Lcom/estrongs/android/pop/bt/a;
    //   139: aload_0
    //   140: getfield 83	com/estrongs/android/pop/bt/c:f	Ljava/lang/String;
    //   143: aload 5
    //   145: invokestatic 292	com/estrongs/android/pop/bt/a:a	(Lcom/estrongs/android/pop/bt/a;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    //   148: invokevirtual 297	com/estrongs/bluetooth/parser/a:a	(Ljava/util/ArrayList;)Ljava/lang/String;
    //   151: invokevirtual 300	java/lang/String:getBytes	()[B
    //   154: astore 6
    //   156: aload_0
    //   157: invokevirtual 302	com/estrongs/android/pop/bt/c:b	()Lb/b/c;
    //   160: astore 7
    //   162: aload 7
    //   164: sipush 203
    //   167: new 59	java/lang/Long
    //   170: dup
    //   171: aload_0
    //   172: getfield 61	com/estrongs/android/pop/bt/c:h	I
    //   175: i2l
    //   176: invokespecial 64	java/lang/Long:<init>	(J)V
    //   179: invokeinterface 67 3 0
    //   184: aload 7
    //   186: sipush 195
    //   189: new 59	java/lang/Long
    //   192: dup
    //   193: aload 6
    //   195: arraylength
    //   196: i2l
    //   197: invokespecial 64	java/lang/Long:<init>	(J)V
    //   200: invokeinterface 67 3 0
    //   205: aload 7
    //   207: iconst_1
    //   208: aload 5
    //   210: invokeinterface 67 3 0
    //   215: aload_1
    //   216: aload 7
    //   218: invokeinterface 305 2 0
    //   223: aload_1
    //   224: invokeinterface 308 1 0
    //   229: astore 5
    //   231: aload 5
    //   233: aload 6
    //   235: iconst_0
    //   236: aload 6
    //   238: arraylength
    //   239: invokevirtual 311	java/io/OutputStream:write	([BII)V
    //   242: aload 5
    //   244: invokevirtual 312	java/io/OutputStream:flush	()V
    //   247: aload 5
    //   249: invokevirtual 313	java/io/OutputStream:close	()V
    //   252: aload_1
    //   253: invokeinterface 207 1 0
    //   258: ldc 43
    //   260: ldc_w 284
    //   263: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   266: sipush 160
    //   269: ireturn
    //   270: aload 5
    //   272: ifnonnull +49 -> 321
    //   275: aload_1
    //   276: invokeinterface 131 1 0
    //   281: astore 5
    //   283: aload 5
    //   285: bipush 73
    //   287: iconst_0
    //   288: newarray <illegal type>
    //   290: invokeinterface 67 3 0
    //   295: aload_1
    //   296: aload 5
    //   298: invokeinterface 305 2 0
    //   303: aload_1
    //   304: invokeinterface 207 1 0
    //   309: ldc 43
    //   311: ldc_w 284
    //   314: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   317: sipush 160
    //   320: ireturn
    //   321: new 184	java/io/BufferedInputStream
    //   324: dup
    //   325: new 315	java/io/FileInputStream
    //   328: dup
    //   329: new 162	java/io/File
    //   332: dup
    //   333: aload_0
    //   334: getfield 83	com/estrongs/android/pop/bt/c:f	Ljava/lang/String;
    //   337: aload 5
    //   339: invokespecial 164	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   342: invokespecial 316	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   345: ldc -77
    //   347: invokespecial 190	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   350: astore 5
    //   352: new 173	java/io/BufferedOutputStream
    //   355: dup
    //   356: aload_1
    //   357: invokeinterface 319 1 0
    //   362: ldc -77
    //   364: invokespecial 182	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   367: astore 6
    //   369: ldc -77
    //   371: newarray <illegal type>
    //   373: astore 7
    //   375: aload 5
    //   377: aload 7
    //   379: iconst_0
    //   380: ldc -77
    //   382: invokevirtual 197	java/io/BufferedInputStream:read	([BII)I
    //   385: istore_2
    //   386: iload_2
    //   387: iconst_m1
    //   388: if_icmpeq +37 -> 425
    //   391: aload 6
    //   393: aload 7
    //   395: iconst_0
    //   396: iload_2
    //   397: invokevirtual 232	java/io/BufferedOutputStream:write	([BII)V
    //   400: goto -25 -> 375
    //   403: astore_1
    //   404: ldc 43
    //   406: ldc_w 321
    //   409: aload_1
    //   410: invokestatic 237	com/estrongs/android/util/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   413: ldc 43
    //   415: ldc_w 284
    //   418: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   421: sipush 211
    //   424: ireturn
    //   425: aload 6
    //   427: invokevirtual 202	java/io/BufferedOutputStream:flush	()V
    //   430: aload 5
    //   432: invokevirtual 322	java/io/BufferedInputStream:close	()V
    //   435: aload 6
    //   437: invokevirtual 205	java/io/BufferedOutputStream:close	()V
    //   440: aload_1
    //   441: invokeinterface 207 1 0
    //   446: ldc 43
    //   448: ldc_w 284
    //   451: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   454: sipush 160
    //   457: ireturn
    //   458: astore_1
    //   459: ldc 43
    //   461: ldc_w 284
    //   464: invokestatic 50	com/estrongs/android/util/l:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   467: aload_1
    //   468: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	469	0	this	c
    //   0	469	1	paramd	b.b.d
    //   92	305	2	i	int
    //   87	7	3	l	long
    //   69	362	5	localObject1	Object
    //   25	411	6	localObject2	Object
    //   56	338	7	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   19	27	403	java/io/IOException
    //   44	93	403	java/io/IOException
    //   117	258	403	java/io/IOException
    //   275	309	403	java/io/IOException
    //   321	375	403	java/io/IOException
    //   375	386	403	java/io/IOException
    //   391	400	403	java/io/IOException
    //   425	446	403	java/io/IOException
    //   19	27	458	finally
    //   44	93	458	finally
    //   117	258	458	finally
    //   275	309	458	finally
    //   321	375	458	finally
    //   375	386	458	finally
    //   391	400	458	finally
    //   404	413	458	finally
    //   425	446	458	finally
  }
  
  public void b(b.b.c paramc1, b.b.c paramc2)
  {
    l.b("OBEXFtpServer", "OBEX onDisconnect");
    if (!d) {
      a.a(a, "Disconnected");
    }
    c = false;
  }
  
  public int c(b.b.c paramc1, b.b.c paramc2)
  {
    l.b("OBEXFtpServer", "OBEX onDelete");
    if (!c) {
      return 164;
    }
    try
    {
      if (((Long)paramc1.a(203)).longValue() != h) {
        return 211;
      }
      String str = (String)paramc1.a(1);
      if ((str != null) && (!str.equals("/")))
      {
        str = f + str + "/";
        if (!a.c(a, str)) {
          return 196;
        }
        boolean bool = a.e(a, str);
        if (bool) {
          return 160;
        }
        return 195;
      }
    }
    catch (IOException localIOException)
    {
      return super.c(paramc1, paramc2);
    }
    return 192;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.bt.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */