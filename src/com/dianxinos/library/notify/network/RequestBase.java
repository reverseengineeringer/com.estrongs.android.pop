package com.dianxinos.library.notify.network;

import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.i;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy.Type;
import java.net.SocketAddress;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.TimeZone;

public abstract class RequestBase
  extends s
{
  private static final boolean D = false;
  protected int A;
  protected int B;
  protected l C;
  private String E;
  private boolean F;
  private boolean G;
  private boolean H;
  private boolean I;
  private boolean J = false;
  private boolean K = false;
  protected d p;
  protected o q;
  protected HttpURLConnection r = null;
  protected String s;
  protected byte[] t = new byte['ࠀ'];
  protected String u;
  protected String v;
  protected LinkedList<k> w = new LinkedList();
  protected long x;
  protected long y;
  protected int z;
  
  static
  {
    if (e.b) {}
  }
  
  public RequestBase(n arg1, String paramString, k paramk, long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, l paraml)
  {
    q = ((o)???);
    s = "unknown";
    for (;;)
    {
      synchronized (w)
      {
        w.add(paramk);
        a = paramString;
        v = paramString;
        u = paramString;
        x = paramLong1;
        y = paramLong2;
        z = paramInt1;
        A = paramInt2;
        B = paramInt3;
        C = paraml;
        if ((z & 0x4) == 4)
        {
          bool1 = true;
          F = bool1;
          if ((z & 0x8) != 8) {
            break label254;
          }
          bool1 = true;
          G = bool1;
          if ((z & 0x2) != 2) {
            break label260;
          }
          bool1 = true;
          H = bool1;
          if ((z & 0x10) != 16) {
            break label266;
          }
          bool1 = bool2;
          I = bool1;
          if (D) {
            com.dianxinos.library.dxbase.j.b("Job: " + toString() + " created.");
          }
          return;
        }
      }
      boolean bool1 = false;
      continue;
      label254:
      bool1 = false;
      continue;
      label260:
      bool1 = false;
      continue;
      label266:
      bool1 = false;
    }
  }
  
  private static String a(long paramLong)
  {
    Date localDate = new Date(paramLong);
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
    return localSimpleDateFormat.format(localDate);
  }
  
  private void a(int paramInt)
  {
    synchronized (w)
    {
      Iterator localIterator = w.iterator();
      if (localIterator.hasNext()) {
        ((k)localIterator.next()).a(paramInt);
      }
    }
  }
  
  private void a(String paramString, long paramLong1, long paramLong2)
  {
    synchronized (w)
    {
      Iterator localIterator = w.iterator();
      if (localIterator.hasNext()) {
        ((k)localIterator.next()).a(paramString, paramLong1, paramLong2);
      }
    }
  }
  
  private void a(String paramString1, String paramString2, int paramInt)
  {
    synchronized (w)
    {
      Iterator localIterator = w.iterator();
      if (localIterator.hasNext()) {
        ((k)localIterator.next()).a(paramString1, paramString2, paramInt);
      }
    }
  }
  
  private static void a(MessageDigest paramMessageDigest, long paramLong)
  {
    byte[] arrayOfByte = new byte[16];
    int i = 0;
    while (i < arrayOfByte.length)
    {
      arrayOfByte[i] = ((byte)(int)(paramLong >> i * 4 & 0xFF));
      i += 1;
    }
    paramMessageDigest.update(arrayOfByte);
  }
  
  private void b(int paramInt)
  {
    synchronized (w)
    {
      Iterator localIterator = w.iterator();
      if (localIterator.hasNext()) {
        ((k)localIterator.next()).a(paramInt, this);
      }
    }
  }
  
  private boolean b()
  {
    if ((p != null) && (!F)) {
      try
      {
        localObject = e();
        j localj = p.a((String)localObject);
        if (localj != null)
        {
          boolean bool1 = com.dianxinos.library.dxbase.k.b();
          boolean bool2 = C.a();
          localObject = localj.a(0);
          if (x > 0L)
          {
            if (((InputStream)localObject).available() > x) {
              ((InputStream)localObject).skip(x);
            }
          }
          else
          {
            g = ((InputStream)localObject);
            h = localj.b(0);
            n = h.lastModified();
            o = localj.a();
            if ((!bool1) && (bool2)) {
              break label231;
            }
            if (!C.a(u, n)) {
              break label224;
            }
            com.dianxinos.library.dxbase.j.a("Cache entry too old, need verify by 304: " + u);
            b(2);
            return false;
          }
          com.dianxinos.library.dxbase.j.a("bad cache entry found" + u);
          return false;
        }
      }
      catch (IOException localIOException)
      {
        Object localObject;
        if (D)
        {
          localIOException.printStackTrace();
          return false;
          label224:
          b(1);
          return true;
          label231:
          b(1);
          return true;
          com.dianxinos.library.dxbase.j.a("key not found in cache: " + (String)localObject + ", url=" + u);
        }
      }
    }
    return false;
  }
  
  /* Error */
  private void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 91	com/dianxinos/library/notify/network/RequestBase:B	I
    //   4: istore_2
    //   5: aload_0
    //   6: getfield 89	com/dianxinos/library/notify/network/RequestBase:A	I
    //   9: istore_1
    //   10: aload_0
    //   11: aload_0
    //   12: getfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   15: putfield 81	com/dianxinos/library/notify/network/RequestBase:u	Ljava/lang/String;
    //   18: iload_2
    //   19: iflt +390 -> 409
    //   22: iload_1
    //   23: iflt +386 -> 409
    //   26: invokestatic 216	com/dianxinos/library/dxbase/k:b	()Z
    //   29: ifne +10 -> 39
    //   32: aload_0
    //   33: bipush -3
    //   35: invokespecial 291	com/dianxinos/library/notify/network/RequestBase:c	(I)V
    //   38: return
    //   39: aload_0
    //   40: invokespecial 294	com/dianxinos/library/notify/network/RequestBase:d	()I
    //   43: istore_3
    //   44: new 103	java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   51: ldc_w 296
    //   54: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: iload_3
    //   58: invokevirtual 299	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   61: ldc_w 301
    //   64: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload_0
    //   68: getfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   71: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: invokestatic 267	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   80: iload_3
    //   81: tableswitch	default:+355->436, 0:+55->136, 1:+171->252
    //   104: ldc_w 303
    //   107: invokestatic 267	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   110: new 283	com/dianxinos/library/notify/network/RequestBase$NEED_RETRY
    //   113: dup
    //   114: invokespecial 304	com/dianxinos/library/notify/network/RequestBase$NEED_RETRY:<init>	()V
    //   117: athrow
    //   118: astore 6
    //   120: aload_0
    //   121: aload 6
    //   123: putfield 307	com/dianxinos/library/notify/network/RequestBase:c	Ljava/lang/Exception;
    //   126: aload_0
    //   127: aload 6
    //   129: getfield 310	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR:errNo	I
    //   132: invokespecial 291	com/dianxinos/library/notify/network/RequestBase:c	(I)V
    //   135: return
    //   136: aload_0
    //   137: iconst_0
    //   138: invokespecial 269	com/dianxinos/library/notify/network/RequestBase:b	(I)V
    //   141: return
    //   142: astore 6
    //   144: aload_0
    //   145: aload_0
    //   146: getfield 81	com/dianxinos/library/notify/network/RequestBase:u	Ljava/lang/String;
    //   149: putfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   152: new 103	java/lang/StringBuilder
    //   155: dup
    //   156: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   159: ldc_w 312
    //   162: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: aload_0
    //   166: getfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   169: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   175: invokestatic 267	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   178: iload_2
    //   179: iconst_1
    //   180: isub
    //   181: istore_2
    //   182: aload_0
    //   183: getfield 89	com/dianxinos/library/notify/network/RequestBase:A	I
    //   186: istore_1
    //   187: aload_0
    //   188: iload_2
    //   189: invokespecial 314	com/dianxinos/library/notify/network/RequestBase:a	(I)V
    //   192: iconst_1
    //   193: aload_0
    //   194: getfield 91	com/dianxinos/library/notify/network/RequestBase:B	I
    //   197: iload_2
    //   198: isub
    //   199: ishl
    //   200: sipush 200
    //   203: imul
    //   204: i2l
    //   205: lstore 4
    //   207: new 103	java/lang/StringBuilder
    //   210: dup
    //   211: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   214: ldc_w 316
    //   217: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: lload 4
    //   222: invokevirtual 319	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   225: ldc_w 321
    //   228: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: aload_0
    //   232: getfield 81	com/dianxinos/library/notify/network/RequestBase:u	Ljava/lang/String;
    //   235: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   241: invokestatic 267	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   244: lload 4
    //   246: invokestatic 326	java/lang/Thread:sleep	(J)V
    //   249: goto -231 -> 18
    //   252: new 103	java/lang/StringBuilder
    //   255: dup
    //   256: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   259: ldc_w 328
    //   262: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: aload_0
    //   266: getfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   269: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   275: invokestatic 267	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   278: aload_0
    //   279: iconst_1
    //   280: invokespecial 269	com/dianxinos/library/notify/network/RequestBase:b	(I)V
    //   283: return
    //   284: astore 6
    //   286: aload_0
    //   287: aload 6
    //   289: getfield 331	com/dianxinos/library/notify/network/RequestBase$NEED_REDIRECT:newUrl	Ljava/lang/String;
    //   292: putfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   295: new 103	java/lang/StringBuilder
    //   298: dup
    //   299: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   302: ldc_w 333
    //   305: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   308: aload_0
    //   309: getfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   312: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   315: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: invokestatic 267	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   321: iload_1
    //   322: iconst_1
    //   323: isub
    //   324: istore_1
    //   325: aload_0
    //   326: aload_0
    //   327: getfield 81	com/dianxinos/library/notify/network/RequestBase:u	Ljava/lang/String;
    //   330: aload_0
    //   331: getfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   334: iload_1
    //   335: invokespecial 335	com/dianxinos/library/notify/network/RequestBase:a	(Ljava/lang/String;Ljava/lang/String;I)V
    //   338: goto -320 -> 18
    //   341: astore 6
    //   343: aload_0
    //   344: aload_0
    //   345: getfield 81	com/dianxinos/library/notify/network/RequestBase:u	Ljava/lang/String;
    //   348: putfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   351: new 103	java/lang/StringBuilder
    //   354: dup
    //   355: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   358: ldc_w 337
    //   361: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   364: aload_0
    //   365: getfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   368: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: ldc_w 301
    //   374: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: aload 6
    //   379: invokevirtual 340	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   382: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   385: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   388: invokestatic 267	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   391: aload_0
    //   392: aload 6
    //   394: putfield 307	com/dianxinos/library/notify/network/RequestBase:c	Ljava/lang/Exception;
    //   397: aload_0
    //   398: getfield 89	com/dianxinos/library/notify/network/RequestBase:A	I
    //   401: istore_1
    //   402: iload_2
    //   403: iconst_1
    //   404: isub
    //   405: istore_2
    //   406: goto -388 -> 18
    //   409: iload_2
    //   410: ifge +10 -> 420
    //   413: aload_0
    //   414: bipush -4
    //   416: invokespecial 291	com/dianxinos/library/notify/network/RequestBase:c	(I)V
    //   419: return
    //   420: iload_1
    //   421: ifge -383 -> 38
    //   424: aload_0
    //   425: bipush -5
    //   427: invokespecial 291	com/dianxinos/library/notify/network/RequestBase:c	(I)V
    //   430: return
    //   431: astore 6
    //   433: goto -184 -> 249
    //   436: goto -332 -> 104
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	439	0	this	RequestBase
    //   9	412	1	i	int
    //   4	406	2	j	int
    //   43	38	3	k	int
    //   205	40	4	l	long
    //   118	10	6	localFINISH_WITH_ERROR	RequestBase.FINISH_WITH_ERROR
    //   142	1	6	localNEED_RETRY	RequestBase.NEED_RETRY
    //   284	4	6	localNEED_REDIRECT	RequestBase.NEED_REDIRECT
    //   341	52	6	localException	Exception
    //   431	1	6	localInterruptedException	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   39	80	118	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR
    //   104	118	118	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR
    //   136	141	118	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR
    //   252	283	118	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR
    //   39	80	142	com/dianxinos/library/notify/network/RequestBase$NEED_RETRY
    //   104	118	142	com/dianxinos/library/notify/network/RequestBase$NEED_RETRY
    //   136	141	142	com/dianxinos/library/notify/network/RequestBase$NEED_RETRY
    //   252	283	142	com/dianxinos/library/notify/network/RequestBase$NEED_RETRY
    //   39	80	284	com/dianxinos/library/notify/network/RequestBase$NEED_REDIRECT
    //   104	118	284	com/dianxinos/library/notify/network/RequestBase$NEED_REDIRECT
    //   136	141	284	com/dianxinos/library/notify/network/RequestBase$NEED_REDIRECT
    //   252	283	284	com/dianxinos/library/notify/network/RequestBase$NEED_REDIRECT
    //   39	80	341	java/lang/Exception
    //   104	118	341	java/lang/Exception
    //   136	141	341	java/lang/Exception
    //   252	283	341	java/lang/Exception
    //   192	249	431	java/lang/InterruptedException
  }
  
  private void c(int paramInt)
  {
    synchronized (w)
    {
      Iterator localIterator = w.iterator();
      if (localIterator.hasNext()) {
        ((k)localIterator.next()).b(paramInt, this);
      }
    }
  }
  
  /* Error */
  private int d()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnull +15 -> 23
    //   11: aload_0
    //   12: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   15: invokevirtual 347	java/net/HttpURLConnection:disconnect	()V
    //   18: aload_0
    //   19: aconst_null
    //   20: putfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   23: aload_0
    //   24: aload_0
    //   25: aload_0
    //   26: getfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   29: invokevirtual 350	com/dianxinos/library/notify/network/RequestBase:a	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   32: putfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   35: aload_0
    //   36: aload_0
    //   37: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   40: invokevirtual 353	com/dianxinos/library/notify/network/RequestBase:a	(Ljava/net/HttpURLConnection;)V
    //   43: aload_0
    //   44: invokespecial 356	com/dianxinos/library/notify/network/RequestBase:f	()V
    //   47: aload_0
    //   48: aload_0
    //   49: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   52: invokevirtual 358	com/dianxinos/library/notify/network/RequestBase:b	(Ljava/net/HttpURLConnection;)V
    //   55: aload_0
    //   56: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   59: invokevirtual 361	java/net/HttpURLConnection:connect	()V
    //   62: aload_0
    //   63: aload_0
    //   64: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   67: invokevirtual 363	com/dianxinos/library/notify/network/RequestBase:c	(Ljava/net/HttpURLConnection;)V
    //   70: aload_0
    //   71: aload_0
    //   72: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   75: invokevirtual 366	java/net/HttpURLConnection:getResponseCode	()I
    //   78: putfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   81: aload_0
    //   82: aload_0
    //   83: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   86: invokevirtual 371	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
    //   89: putfield 373	com/dianxinos/library/notify/network/RequestBase:e	Ljava/lang/String;
    //   92: aload_0
    //   93: aload_0
    //   94: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   97: invokevirtual 376	java/net/HttpURLConnection:getContentEncoding	()Ljava/lang/String;
    //   100: putfield 379	com/dianxinos/library/notify/network/RequestBase:l	Ljava/lang/String;
    //   103: aload_0
    //   104: aload_0
    //   105: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   108: invokevirtual 382	java/net/HttpURLConnection:getContentLength	()I
    //   111: i2l
    //   112: putfield 385	com/dianxinos/library/notify/network/RequestBase:k	J
    //   115: aload_0
    //   116: aload_0
    //   117: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   120: invokevirtual 388	java/net/HttpURLConnection:getContentType	()Ljava/lang/String;
    //   123: putfield 391	com/dianxinos/library/notify/network/RequestBase:m	Ljava/lang/String;
    //   126: getstatic 44	com/dianxinos/library/notify/network/RequestBase:D	Z
    //   129: ifeq +55 -> 184
    //   132: new 103	java/lang/StringBuilder
    //   135: dup
    //   136: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   139: ldc_w 393
    //   142: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload_0
    //   146: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   149: invokevirtual 299	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   152: ldc_w 395
    //   155: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: aload_0
    //   159: getfield 373	com/dianxinos/library/notify/network/RequestBase:e	Ljava/lang/String;
    //   162: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: ldc_w 397
    //   168: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: aload_0
    //   172: getfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   175: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   181: invokestatic 267	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   184: aload_0
    //   185: invokespecial 399	com/dianxinos/library/notify/network/RequestBase:g	()V
    //   188: aload_0
    //   189: aload_0
    //   190: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   193: invokevirtual 402	java/net/HttpURLConnection:getLastModified	()J
    //   196: putfield 260	com/dianxinos/library/notify/network/RequestBase:o	J
    //   199: aload_0
    //   200: getfield 260	com/dianxinos/library/notify/network/RequestBase:o	J
    //   203: lconst_0
    //   204: lcmp
    //   205: ifle +58 -> 263
    //   208: getstatic 44	com/dianxinos/library/notify/network/RequestBase:D	Z
    //   211: ifeq +52 -> 263
    //   214: new 103	java/lang/StringBuilder
    //   217: dup
    //   218: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   221: aload_0
    //   222: getfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   225: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: ldc_w 404
    //   231: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: aload_0
    //   235: getfield 260	com/dianxinos/library/notify/network/RequestBase:o	J
    //   238: invokevirtual 319	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   241: ldc_w 406
    //   244: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   247: aload_0
    //   248: getfield 260	com/dianxinos/library/notify/network/RequestBase:o	J
    //   251: invokestatic 408	com/dianxinos/library/notify/network/RequestBase:a	(J)Ljava/lang/String;
    //   254: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   260: invokestatic 267	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   263: aload_0
    //   264: getfield 95	com/dianxinos/library/notify/network/RequestBase:F	Z
    //   267: ifne +129 -> 396
    //   270: aload_0
    //   271: getfield 239	com/dianxinos/library/notify/network/RequestBase:g	Ljava/io/InputStream;
    //   274: ifnull +122 -> 396
    //   277: aload_0
    //   278: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   281: sipush 304
    //   284: if_icmpne +112 -> 396
    //   287: new 103	java/lang/StringBuilder
    //   290: dup
    //   291: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   294: ldc_w 410
    //   297: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: aload_0
    //   301: getfield 79	com/dianxinos/library/notify/network/RequestBase:v	Ljava/lang/String;
    //   304: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   310: invokestatic 267	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   313: aload_0
    //   314: getfield 246	com/dianxinos/library/notify/network/RequestBase:h	Ljava/io/File;
    //   317: ifnull +24 -> 341
    //   320: aload_0
    //   321: getfield 246	com/dianxinos/library/notify/network/RequestBase:h	Ljava/io/File;
    //   324: invokevirtual 413	java/io/File:exists	()Z
    //   327: ifeq +14 -> 341
    //   330: aload_0
    //   331: getfield 246	com/dianxinos/library/notify/network/RequestBase:h	Ljava/io/File;
    //   334: invokestatic 418	java/lang/System:currentTimeMillis	()J
    //   337: invokevirtual 422	java/io/File:setLastModified	(J)Z
    //   340: pop
    //   341: aload_0
    //   342: invokevirtual 424	com/dianxinos/library/notify/network/RequestBase:a	()V
    //   345: aload_0
    //   346: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   349: invokevirtual 347	java/net/HttpURLConnection:disconnect	()V
    //   352: iconst_1
    //   353: ireturn
    //   354: astore_3
    //   355: aload_3
    //   356: invokevirtual 425	java/lang/Exception:printStackTrace	()V
    //   359: aload_0
    //   360: aconst_null
    //   361: putfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   364: goto -341 -> 23
    //   367: astore_3
    //   368: aload_3
    //   369: invokevirtual 274	java/io/IOException:printStackTrace	()V
    //   372: aload_0
    //   373: aload_3
    //   374: putfield 307	com/dianxinos/library/notify/network/RequestBase:c	Ljava/lang/Exception;
    //   377: new 283	com/dianxinos/library/notify/network/RequestBase$NEED_RETRY
    //   380: dup
    //   381: invokespecial 304	com/dianxinos/library/notify/network/RequestBase$NEED_RETRY:<init>	()V
    //   384: athrow
    //   385: astore_3
    //   386: aload_3
    //   387: athrow
    //   388: astore_3
    //   389: aload_0
    //   390: aconst_null
    //   391: putfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   394: aload_3
    //   395: athrow
    //   396: sipush 200
    //   399: aload_0
    //   400: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   403: if_icmpgt +334 -> 737
    //   406: aload_0
    //   407: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   410: sipush 299
    //   413: if_icmpgt +324 -> 737
    //   416: aload_0
    //   417: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   420: invokevirtual 429	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   423: astore_3
    //   424: aload_0
    //   425: getfield 379	com/dianxinos/library/notify/network/RequestBase:l	Ljava/lang/String;
    //   428: ifnull +679 -> 1107
    //   431: aload_0
    //   432: getfield 379	com/dianxinos/library/notify/network/RequestBase:l	Ljava/lang/String;
    //   435: ldc_w 431
    //   438: invokevirtual 437	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   441: iconst_m1
    //   442: if_icmpeq +665 -> 1107
    //   445: new 439	java/util/zip/GZIPInputStream
    //   448: dup
    //   449: aload_3
    //   450: invokespecial 442	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   453: astore_3
    //   454: aload_0
    //   455: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   458: aload_0
    //   459: getfield 444	com/dianxinos/library/notify/network/RequestBase:f	I
    //   462: if_icmpeq +78 -> 540
    //   465: aload_0
    //   466: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   469: sipush 200
    //   472: if_icmpne +68 -> 540
    //   475: new 103	java/lang/StringBuilder
    //   478: dup
    //   479: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   482: ldc_w 446
    //   485: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   488: aload_0
    //   489: getfield 83	com/dianxinos/library/notify/network/RequestBase:x	J
    //   492: invokevirtual 319	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   495: ldc_w 448
    //   498: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   504: invokestatic 267	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   507: aload_0
    //   508: getfield 83	com/dianxinos/library/notify/network/RequestBase:x	J
    //   511: lconst_0
    //   512: lcmp
    //   513: ifle +308 -> 821
    //   516: aload_0
    //   517: getfield 95	com/dianxinos/library/notify/network/RequestBase:F	Z
    //   520: ifeq +301 -> 821
    //   523: aload_3
    //   524: aload_0
    //   525: getfield 83	com/dianxinos/library/notify/network/RequestBase:x	J
    //   528: invokevirtual 235	java/io/InputStream:skip	(J)J
    //   531: pop2
    //   532: aload_0
    //   533: aload_0
    //   534: getfield 83	com/dianxinos/library/notify/network/RequestBase:x	J
    //   537: putfield 451	com/dianxinos/library/notify/network/RequestBase:i	J
    //   540: aload_0
    //   541: getfield 204	com/dianxinos/library/notify/network/RequestBase:p	Lcom/dianxinos/library/notify/network/d;
    //   544: ifnull +557 -> 1101
    //   547: aload_0
    //   548: getfield 95	com/dianxinos/library/notify/network/RequestBase:F	Z
    //   551: ifne +550 -> 1101
    //   554: aload_0
    //   555: getfield 204	com/dianxinos/library/notify/network/RequestBase:p	Lcom/dianxinos/library/notify/network/d;
    //   558: aload_0
    //   559: invokespecial 207	com/dianxinos/library/notify/network/RequestBase:e	()Ljava/lang/String;
    //   562: invokevirtual 454	com/dianxinos/library/notify/network/d:b	(Ljava/lang/String;)Lcom/dianxinos/library/notify/network/g;
    //   565: astore 4
    //   567: aload_0
    //   568: getfield 97	com/dianxinos/library/notify/network/RequestBase:G	Z
    //   571: ifne +498 -> 1069
    //   574: aload_0
    //   575: getfield 95	com/dianxinos/library/notify/network/RequestBase:F	Z
    //   578: ifne +491 -> 1069
    //   581: aload_0
    //   582: getfield 204	com/dianxinos/library/notify/network/RequestBase:p	Lcom/dianxinos/library/notify/network/d;
    //   585: ifnull +484 -> 1069
    //   588: aload 4
    //   590: ifnull +479 -> 1069
    //   593: aload_0
    //   594: lconst_0
    //   595: putfield 457	com/dianxinos/library/notify/network/RequestBase:j	J
    //   598: aload_0
    //   599: getfield 99	com/dianxinos/library/notify/network/RequestBase:H	Z
    //   602: ifeq +19 -> 621
    //   605: aload_0
    //   606: aload_0
    //   607: getfield 81	com/dianxinos/library/notify/network/RequestBase:u	Ljava/lang/String;
    //   610: aload_0
    //   611: getfield 457	com/dianxinos/library/notify/network/RequestBase:j	J
    //   614: aload_0
    //   615: getfield 385	com/dianxinos/library/notify/network/RequestBase:k	J
    //   618: invokespecial 458	com/dianxinos/library/notify/network/RequestBase:a	(Ljava/lang/String;JJ)V
    //   621: aload 4
    //   623: iconst_0
    //   624: invokevirtual 463	com/dianxinos/library/notify/network/g:a	(I)Ljava/io/OutputStream;
    //   627: astore 6
    //   629: aload_3
    //   630: aload_0
    //   631: getfield 57	com/dianxinos/library/notify/network/RequestBase:t	[B
    //   634: invokevirtual 467	java/io/InputStream:read	([B)I
    //   637: istore_2
    //   638: iload_2
    //   639: ifle +240 -> 879
    //   642: aload_0
    //   643: aload_0
    //   644: getfield 457	com/dianxinos/library/notify/network/RequestBase:j	J
    //   647: iload_2
    //   648: i2l
    //   649: ladd
    //   650: putfield 457	com/dianxinos/library/notify/network/RequestBase:j	J
    //   653: aload 6
    //   655: aload_0
    //   656: getfield 57	com/dianxinos/library/notify/network/RequestBase:t	[B
    //   659: iconst_0
    //   660: iload_2
    //   661: invokevirtual 473	java/io/OutputStream:write	([BII)V
    //   664: aload_0
    //   665: getfield 99	com/dianxinos/library/notify/network/RequestBase:H	Z
    //   668: ifeq +19 -> 687
    //   671: aload_0
    //   672: aload_0
    //   673: getfield 81	com/dianxinos/library/notify/network/RequestBase:u	Ljava/lang/String;
    //   676: aload_0
    //   677: getfield 457	com/dianxinos/library/notify/network/RequestBase:j	J
    //   680: aload_0
    //   681: getfield 385	com/dianxinos/library/notify/network/RequestBase:k	J
    //   684: invokespecial 458	com/dianxinos/library/notify/network/RequestBase:a	(Ljava/lang/String;JJ)V
    //   687: aload 4
    //   689: invokevirtual 474	com/dianxinos/library/notify/network/g:a	()Z
    //   692: ifeq +187 -> 879
    //   695: new 281	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR
    //   698: dup
    //   699: invokespecial 475	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR:<init>	()V
    //   702: astore 5
    //   704: aload 5
    //   706: bipush -7
    //   708: putfield 310	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR:errNo	I
    //   711: aload 5
    //   713: athrow
    //   714: astore 5
    //   716: iload_1
    //   717: ifeq +372 -> 1089
    //   720: aload 4
    //   722: invokevirtual 477	com/dianxinos/library/notify/network/g:b	()V
    //   725: aload_3
    //   726: invokestatic 482	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   729: aload 6
    //   731: invokestatic 482	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   734: aload 5
    //   736: athrow
    //   737: sipush 300
    //   740: aload_0
    //   741: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   744: if_icmpgt +21 -> 765
    //   747: aload_0
    //   748: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   751: sipush 399
    //   754: if_icmpgt +11 -> 765
    //   757: new 281	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR
    //   760: dup
    //   761: invokespecial 475	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR:<init>	()V
    //   764: athrow
    //   765: sipush 400
    //   768: aload_0
    //   769: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   772: if_icmpgt +21 -> 793
    //   775: aload_0
    //   776: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   779: sipush 499
    //   782: if_icmpgt +11 -> 793
    //   785: new 281	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR
    //   788: dup
    //   789: invokespecial 475	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR:<init>	()V
    //   792: athrow
    //   793: sipush 500
    //   796: aload_0
    //   797: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   800: if_icmpgt -384 -> 416
    //   803: aload_0
    //   804: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   807: sipush 599
    //   810: if_icmpgt -394 -> 416
    //   813: new 283	com/dianxinos/library/notify/network/RequestBase$NEED_RETRY
    //   816: dup
    //   817: invokespecial 304	com/dianxinos/library/notify/network/RequestBase$NEED_RETRY:<init>	()V
    //   820: athrow
    //   821: aload_0
    //   822: lconst_0
    //   823: putfield 451	com/dianxinos/library/notify/network/RequestBase:i	J
    //   826: goto -286 -> 540
    //   829: astore 4
    //   831: aload_0
    //   832: getfield 66	com/dianxinos/library/notify/network/RequestBase:q	Lcom/dianxinos/library/notify/network/o;
    //   835: invokevirtual 483	com/dianxinos/library/notify/network/o:b	()V
    //   838: aload_0
    //   839: aconst_null
    //   840: putfield 204	com/dianxinos/library/notify/network/RequestBase:p	Lcom/dianxinos/library/notify/network/d;
    //   843: aload_0
    //   844: getfield 239	com/dianxinos/library/notify/network/RequestBase:g	Ljava/io/InputStream;
    //   847: invokestatic 482	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   850: aload_0
    //   851: aload_3
    //   852: putfield 239	com/dianxinos/library/notify/network/RequestBase:g	Ljava/io/InputStream;
    //   855: aload_0
    //   856: aconst_null
    //   857: putfield 246	com/dianxinos/library/notify/network/RequestBase:h	Ljava/io/File;
    //   860: aload_0
    //   861: iconst_1
    //   862: putfield 95	com/dianxinos/library/notify/network/RequestBase:F	Z
    //   865: iconst_0
    //   866: ireturn
    //   867: astore 5
    //   869: aload 5
    //   871: athrow
    //   872: astore 5
    //   874: iconst_1
    //   875: istore_1
    //   876: goto -160 -> 716
    //   879: iload_2
    //   880: ifgt -251 -> 629
    //   883: aload 4
    //   885: aload_0
    //   886: getfield 260	com/dianxinos/library/notify/network/RequestBase:o	J
    //   889: invokevirtual 485	com/dianxinos/library/notify/network/g:a	(J)V
    //   892: aload_3
    //   893: invokestatic 482	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   896: aload 6
    //   898: invokestatic 482	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   901: aload_0
    //   902: getfield 99	com/dianxinos/library/notify/network/RequestBase:H	Z
    //   905: ifeq +19 -> 924
    //   908: aload_0
    //   909: aload_0
    //   910: getfield 81	com/dianxinos/library/notify/network/RequestBase:u	Ljava/lang/String;
    //   913: aload_0
    //   914: getfield 457	com/dianxinos/library/notify/network/RequestBase:j	J
    //   917: aload_0
    //   918: getfield 385	com/dianxinos/library/notify/network/RequestBase:k	J
    //   921: invokespecial 458	com/dianxinos/library/notify/network/RequestBase:a	(Ljava/lang/String;JJ)V
    //   924: aload_0
    //   925: getfield 204	com/dianxinos/library/notify/network/RequestBase:p	Lcom/dianxinos/library/notify/network/d;
    //   928: aload_0
    //   929: invokespecial 207	com/dianxinos/library/notify/network/RequestBase:e	()Ljava/lang/String;
    //   932: invokevirtual 212	com/dianxinos/library/notify/network/d:a	(Ljava/lang/String;)Lcom/dianxinos/library/notify/network/j;
    //   935: astore_3
    //   936: aload_3
    //   937: ifnonnull +19 -> 956
    //   940: new 281	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR
    //   943: dup
    //   944: invokespecial 475	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR:<init>	()V
    //   947: astore_3
    //   948: aload_3
    //   949: bipush -7
    //   951: putfield 310	com/dianxinos/library/notify/network/RequestBase$FINISH_WITH_ERROR:errNo	I
    //   954: aload_3
    //   955: athrow
    //   956: aload_0
    //   957: invokestatic 418	java/lang/System:currentTimeMillis	()J
    //   960: putfield 255	com/dianxinos/library/notify/network/RequestBase:n	J
    //   963: aload_3
    //   964: iconst_0
    //   965: invokevirtual 242	com/dianxinos/library/notify/network/j:b	(I)Ljava/io/File;
    //   968: aload_0
    //   969: getfield 255	com/dianxinos/library/notify/network/RequestBase:n	J
    //   972: invokevirtual 422	java/io/File:setLastModified	(J)Z
    //   975: pop
    //   976: aload_3
    //   977: iconst_0
    //   978: invokevirtual 225	com/dianxinos/library/notify/network/j:a	(I)Ljava/io/InputStream;
    //   981: astore 4
    //   983: aload_0
    //   984: getfield 83	com/dianxinos/library/notify/network/RequestBase:x	J
    //   987: lconst_0
    //   988: lcmp
    //   989: ifle +27 -> 1016
    //   992: aload 4
    //   994: invokevirtual 231	java/io/InputStream:available	()I
    //   997: i2l
    //   998: aload_0
    //   999: getfield 83	com/dianxinos/library/notify/network/RequestBase:x	J
    //   1002: lcmp
    //   1003: ifle +38 -> 1041
    //   1006: aload 4
    //   1008: aload_0
    //   1009: getfield 83	com/dianxinos/library/notify/network/RequestBase:x	J
    //   1012: invokevirtual 235	java/io/InputStream:skip	(J)J
    //   1015: pop2
    //   1016: aload_0
    //   1017: getfield 239	com/dianxinos/library/notify/network/RequestBase:g	Ljava/io/InputStream;
    //   1020: invokestatic 482	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   1023: aload_0
    //   1024: aload 4
    //   1026: putfield 239	com/dianxinos/library/notify/network/RequestBase:g	Ljava/io/InputStream;
    //   1029: aload_0
    //   1030: aload_3
    //   1031: iconst_0
    //   1032: invokevirtual 242	com/dianxinos/library/notify/network/j:b	(I)Ljava/io/File;
    //   1035: putfield 246	com/dianxinos/library/notify/network/RequestBase:h	Ljava/io/File;
    //   1038: goto +72 -> 1110
    //   1041: new 103	java/lang/StringBuilder
    //   1044: dup
    //   1045: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   1048: ldc_w 271
    //   1051: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1054: aload_0
    //   1055: getfield 81	com/dianxinos/library/notify/network/RequestBase:u	Ljava/lang/String;
    //   1058: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1061: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1064: invokestatic 267	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   1067: iconst_m1
    //   1068: ireturn
    //   1069: aload_0
    //   1070: getfield 239	com/dianxinos/library/notify/network/RequestBase:g	Ljava/io/InputStream;
    //   1073: invokestatic 482	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   1076: aload_0
    //   1077: aload_3
    //   1078: putfield 239	com/dianxinos/library/notify/network/RequestBase:g	Ljava/io/InputStream;
    //   1081: aload_0
    //   1082: aconst_null
    //   1083: putfield 246	com/dianxinos/library/notify/network/RequestBase:h	Ljava/io/File;
    //   1086: goto +24 -> 1110
    //   1089: aload 4
    //   1091: aload_0
    //   1092: getfield 260	com/dianxinos/library/notify/network/RequestBase:o	J
    //   1095: invokevirtual 485	com/dianxinos/library/notify/network/g:a	(J)V
    //   1098: goto -373 -> 725
    //   1101: aconst_null
    //   1102: astore 4
    //   1104: goto -537 -> 567
    //   1107: goto -653 -> 454
    //   1110: iconst_0
    //   1111: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1112	0	this	RequestBase
    //   1	875	1	i	int
    //   637	243	2	j	int
    //   6	2	3	localHttpURLConnection	HttpURLConnection
    //   354	2	3	localException1	Exception
    //   367	7	3	localIOException1	IOException
    //   385	2	3	localObject1	Object
    //   388	7	3	localObject2	Object
    //   423	655	3	localObject3	Object
    //   565	156	4	localg	g
    //   829	55	4	localException2	Exception
    //   981	122	4	localInputStream	InputStream
    //   702	10	5	localFINISH_WITH_ERROR	RequestBase.FINISH_WITH_ERROR
    //   714	21	5	localObject4	Object
    //   867	3	5	localIOException2	IOException
    //   872	1	5	localObject5	Object
    //   627	270	6	localOutputStream	java.io.OutputStream
    // Exception table:
    //   from	to	target	type
    //   11	18	354	java/lang/Exception
    //   2	7	367	java/io/IOException
    //   18	23	367	java/io/IOException
    //   23	184	367	java/io/IOException
    //   184	263	367	java/io/IOException
    //   263	341	367	java/io/IOException
    //   341	352	367	java/io/IOException
    //   359	364	367	java/io/IOException
    //   389	396	367	java/io/IOException
    //   396	416	367	java/io/IOException
    //   416	454	367	java/io/IOException
    //   454	540	367	java/io/IOException
    //   540	567	367	java/io/IOException
    //   567	588	367	java/io/IOException
    //   593	621	367	java/io/IOException
    //   621	629	367	java/io/IOException
    //   720	725	367	java/io/IOException
    //   725	737	367	java/io/IOException
    //   737	765	367	java/io/IOException
    //   765	793	367	java/io/IOException
    //   793	821	367	java/io/IOException
    //   821	826	367	java/io/IOException
    //   831	865	367	java/io/IOException
    //   883	924	367	java/io/IOException
    //   924	936	367	java/io/IOException
    //   940	956	367	java/io/IOException
    //   956	1016	367	java/io/IOException
    //   1016	1038	367	java/io/IOException
    //   1041	1067	367	java/io/IOException
    //   1069	1086	367	java/io/IOException
    //   1089	1098	367	java/io/IOException
    //   2	7	385	finally
    //   18	23	385	finally
    //   23	184	385	finally
    //   184	263	385	finally
    //   263	341	385	finally
    //   341	352	385	finally
    //   359	364	385	finally
    //   368	385	385	finally
    //   389	396	385	finally
    //   396	416	385	finally
    //   416	454	385	finally
    //   454	540	385	finally
    //   540	567	385	finally
    //   567	588	385	finally
    //   593	621	385	finally
    //   621	629	385	finally
    //   720	725	385	finally
    //   725	737	385	finally
    //   737	765	385	finally
    //   765	793	385	finally
    //   793	821	385	finally
    //   821	826	385	finally
    //   831	865	385	finally
    //   883	924	385	finally
    //   924	936	385	finally
    //   940	956	385	finally
    //   956	1016	385	finally
    //   1016	1038	385	finally
    //   1041	1067	385	finally
    //   1069	1086	385	finally
    //   1089	1098	385	finally
    //   11	18	388	finally
    //   355	359	388	finally
    //   629	638	714	finally
    //   642	687	714	finally
    //   687	714	714	finally
    //   621	629	829	java/lang/Exception
    //   629	638	867	java/io/IOException
    //   869	872	872	finally
  }
  
  private String e()
  {
    if (E == null) {}
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(C.a(u).getBytes());
      localMessageDigest.update(s.getBytes());
      a(localMessageDigest, x);
      a(localMessageDigest, y);
      a(localMessageDigest);
      E = i.a(localMessageDigest.digest());
      boolean bool = D;
      if (!bool) {}
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      for (;;) {}
    }
    return E;
  }
  
  private void f()
  {
    synchronized (w)
    {
      Iterator localIterator = w.iterator();
      if (localIterator.hasNext()) {
        ((k)localIterator.next()).b(this);
      }
    }
  }
  
  private void g()
  {
    synchronized (w)
    {
      Iterator localIterator = w.iterator();
      if (localIterator.hasNext()) {
        ((k)localIterator.next()).a(this);
      }
    }
  }
  
  protected HttpURLConnection a(String paramString)
  {
    paramString = new URL(paramString);
    Object localObject = C.b();
    int i = C.c();
    if ((localObject != null) && (((String)localObject).length() > 0))
    {
      localObject = new InetSocketAddress((String)localObject, i);
      return (HttpURLConnection)paramString.openConnection(new java.net.Proxy(Proxy.Type.HTTP, (SocketAddress)localObject));
    }
    if ((localObject != null) && (((String)localObject).length() == 0)) {
      return (HttpURLConnection)paramString.openConnection();
    }
    if (com.dianxinos.library.dxbase.k.f())
    {
      localObject = android.net.Proxy.getDefaultHost();
      i = android.net.Proxy.getDefaultPort();
      if (com.dianxinos.library.dxbase.k.g())
      {
        StringBuffer localStringBuffer = new StringBuffer();
        localStringBuffer.append("http://");
        localStringBuffer.append((String)localObject);
        localStringBuffer.append(":");
        localStringBuffer.append(i);
        localStringBuffer.append(paramString.getFile());
        localObject = (HttpURLConnection)new URL(localStringBuffer.toString()).openConnection();
        ((HttpURLConnection)localObject).setRequestProperty("X-Online-Host", paramString.getHost());
        return (HttpURLConnection)localObject;
      }
      localObject = new InetSocketAddress((String)localObject, i);
      return (HttpURLConnection)paramString.openConnection(new java.net.Proxy(Proxy.Type.HTTP, (SocketAddress)localObject));
    }
    return (HttpURLConnection)paramString.openConnection();
  }
  
  public void a()
  {
    if (F) {
      throw new IllegalStateException("dataStream could not be reseted if FLAG_NO_CACHE is set");
    }
    try
    {
      Object localObject = e();
      localObject = p.a((String)localObject);
      if (localObject != null)
      {
        g = ((j)localObject).a(0);
        if (x > 0L) {
          g.skip(x);
        }
      }
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public void a(k paramk)
  {
    synchronized (w)
    {
      if (!w.contains(paramk)) {
        w.add(paramk);
      }
      return;
    }
  }
  
  protected void a(HttpURLConnection paramHttpURLConnection)
  {
    paramHttpURLConnection.setConnectTimeout(C.d());
    paramHttpURLConnection.setReadTimeout(C.e());
    label77:
    String str;
    if ((H) && (y <= 0L))
    {
      i = 1;
      if (((!C.g()) || (i != 0)) && (!I)) {
        break label313;
      }
      paramHttpURLConnection.setRequestProperty("Accept-Encoding", "gzip, deflate");
      paramHttpURLConnection.setRequestProperty("User-Agent", C.f());
      paramHttpURLConnection.setRequestProperty("accept", "*/*");
      paramHttpURLConnection.setRequestProperty("Connection", "Keep-Alive");
      paramHttpURLConnection.setUseCaches(false);
      if ((x > 0L) && (F))
      {
        str = "bytes=" + x + "-";
        if (y < x) {
          break label326;
        }
        str = str + (y - 1L);
        label200:
        com.dianxinos.library.dxbase.j.b("requesting byte range " + str);
        paramHttpURLConnection.setRequestProperty("Range", str);
        if (x <= 0L) {
          break label336;
        }
      }
    }
    label313:
    label326:
    label336:
    for (int i = 200;; i = 206)
    {
      f = i;
      if (o > 0L)
      {
        str = a(o);
        com.dianxinos.library.dxbase.j.a("check for modify: " + str);
        paramHttpURLConnection.setRequestProperty("If-Modified-Since", str);
      }
      C.a(paramHttpURLConnection);
      return;
      i = 0;
      break;
      paramHttpURLConnection.setRequestProperty("Accept-Encoding", "identity");
      break label77;
      y = -1L;
      break label200;
    }
  }
  
  protected void a(MessageDigest paramMessageDigest) {}
  
  protected void b(HttpURLConnection paramHttpURLConnection) {}
  
  protected void c(HttpURLConnection paramHttpURLConnection) {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: invokestatic 657	com/dianxinos/library/dxbase/o:a	()V
    //   3: getstatic 44	com/dianxinos/library/notify/network/RequestBase:D	Z
    //   6: ifeq +29 -> 35
    //   9: new 103	java/lang/StringBuilder
    //   12: dup
    //   13: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   16: ldc_w 659
    //   19: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: aload_0
    //   23: getfield 81	com/dianxinos/library/notify/network/RequestBase:u	Ljava/lang/String;
    //   26: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   32: invokestatic 124	com/dianxinos/library/dxbase/j:b	(Ljava/lang/String;)V
    //   35: aload_0
    //   36: monitorenter
    //   37: aload_0
    //   38: iconst_1
    //   39: putfield 53	com/dianxinos/library/notify/network/RequestBase:J	Z
    //   42: aload_0
    //   43: getfield 55	com/dianxinos/library/notify/network/RequestBase:K	Z
    //   46: ifeq +39 -> 85
    //   49: new 103	java/lang/StringBuilder
    //   52: dup
    //   53: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   56: aload_0
    //   57: invokevirtual 116	java/lang/Object:toString	()Ljava/lang/String;
    //   60: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: ldc_w 661
    //   66: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: aload_0
    //   70: getfield 81	com/dianxinos/library/notify/network/RequestBase:u	Ljava/lang/String;
    //   73: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokestatic 267	com/dianxinos/library/dxbase/j:a	(Ljava/lang/String;)V
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: aload_0
    //   86: monitorexit
    //   87: aload_0
    //   88: aload_0
    //   89: getfield 66	com/dianxinos/library/notify/network/RequestBase:q	Lcom/dianxinos/library/notify/network/o;
    //   92: aload_0
    //   93: getfield 81	com/dianxinos/library/notify/network/RequestBase:u	Ljava/lang/String;
    //   96: invokevirtual 664	com/dianxinos/library/notify/network/o:a	(Ljava/lang/String;)Lcom/dianxinos/library/notify/network/d;
    //   99: putfield 204	com/dianxinos/library/notify/network/RequestBase:p	Lcom/dianxinos/library/notify/network/d;
    //   102: aload_0
    //   103: invokespecial 665	com/dianxinos/library/notify/network/RequestBase:b	()Z
    //   106: ifne +7 -> 113
    //   109: aload_0
    //   110: invokespecial 667	com/dianxinos/library/notify/network/RequestBase:c	()V
    //   113: aload_0
    //   114: getfield 66	com/dianxinos/library/notify/network/RequestBase:q	Lcom/dianxinos/library/notify/network/o;
    //   117: aload_0
    //   118: invokevirtual 670	com/dianxinos/library/notify/network/o:a	(Lcom/dianxinos/library/notify/network/RequestBase;)V
    //   121: aload_0
    //   122: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   125: ifnull +15 -> 140
    //   128: aload_0
    //   129: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   132: invokevirtual 347	java/net/HttpURLConnection:disconnect	()V
    //   135: aload_0
    //   136: aconst_null
    //   137: putfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   140: aload_0
    //   141: aconst_null
    //   142: putfield 77	com/dianxinos/library/notify/network/RequestBase:a	Ljava/lang/String;
    //   145: aload_0
    //   146: aconst_null
    //   147: putfield 307	com/dianxinos/library/notify/network/RequestBase:c	Ljava/lang/Exception;
    //   150: aload_0
    //   151: sipush 200
    //   154: putfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   157: aload_0
    //   158: ldc_w 672
    //   161: putfield 373	com/dianxinos/library/notify/network/RequestBase:e	Ljava/lang/String;
    //   164: aload_0
    //   165: aload_0
    //   166: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   169: putfield 444	com/dianxinos/library/notify/network/RequestBase:f	I
    //   172: aload_0
    //   173: getfield 239	com/dianxinos/library/notify/network/RequestBase:g	Ljava/io/InputStream;
    //   176: invokestatic 482	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   179: aload_0
    //   180: aconst_null
    //   181: putfield 239	com/dianxinos/library/notify/network/RequestBase:g	Ljava/io/InputStream;
    //   184: aload_0
    //   185: aconst_null
    //   186: putfield 246	com/dianxinos/library/notify/network/RequestBase:h	Ljava/io/File;
    //   189: aload_0
    //   190: lconst_0
    //   191: putfield 451	com/dianxinos/library/notify/network/RequestBase:i	J
    //   194: aload_0
    //   195: ldc2_w 652
    //   198: putfield 385	com/dianxinos/library/notify/network/RequestBase:k	J
    //   201: aload_0
    //   202: aconst_null
    //   203: putfield 379	com/dianxinos/library/notify/network/RequestBase:l	Ljava/lang/String;
    //   206: aload_0
    //   207: aconst_null
    //   208: putfield 391	com/dianxinos/library/notify/network/RequestBase:m	Ljava/lang/String;
    //   211: aload_0
    //   212: ldc2_w 652
    //   215: putfield 260	com/dianxinos/library/notify/network/RequestBase:o	J
    //   218: getstatic 44	com/dianxinos/library/notify/network/RequestBase:D	Z
    //   221: ifeq +291 -> 512
    //   224: new 103	java/lang/StringBuilder
    //   227: dup
    //   228: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   231: ldc_w 674
    //   234: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: aload_0
    //   238: getfield 81	com/dianxinos/library/notify/network/RequestBase:u	Ljava/lang/String;
    //   241: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: invokestatic 124	com/dianxinos/library/dxbase/j:b	(Ljava/lang/String;)V
    //   250: return
    //   251: astore_1
    //   252: aload_0
    //   253: monitorexit
    //   254: aload_1
    //   255: athrow
    //   256: astore_1
    //   257: aload_0
    //   258: aload_1
    //   259: putfield 307	com/dianxinos/library/notify/network/RequestBase:c	Ljava/lang/Exception;
    //   262: aload_0
    //   263: iconst_m1
    //   264: invokespecial 291	com/dianxinos/library/notify/network/RequestBase:c	(I)V
    //   267: aload_0
    //   268: getfield 66	com/dianxinos/library/notify/network/RequestBase:q	Lcom/dianxinos/library/notify/network/o;
    //   271: aload_0
    //   272: invokevirtual 670	com/dianxinos/library/notify/network/o:a	(Lcom/dianxinos/library/notify/network/RequestBase;)V
    //   275: aload_0
    //   276: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   279: ifnull +15 -> 294
    //   282: aload_0
    //   283: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   286: invokevirtual 347	java/net/HttpURLConnection:disconnect	()V
    //   289: aload_0
    //   290: aconst_null
    //   291: putfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   294: aload_0
    //   295: aconst_null
    //   296: putfield 77	com/dianxinos/library/notify/network/RequestBase:a	Ljava/lang/String;
    //   299: aload_0
    //   300: aconst_null
    //   301: putfield 307	com/dianxinos/library/notify/network/RequestBase:c	Ljava/lang/Exception;
    //   304: aload_0
    //   305: sipush 200
    //   308: putfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   311: aload_0
    //   312: ldc_w 672
    //   315: putfield 373	com/dianxinos/library/notify/network/RequestBase:e	Ljava/lang/String;
    //   318: aload_0
    //   319: aload_0
    //   320: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   323: putfield 444	com/dianxinos/library/notify/network/RequestBase:f	I
    //   326: aload_0
    //   327: getfield 239	com/dianxinos/library/notify/network/RequestBase:g	Ljava/io/InputStream;
    //   330: invokestatic 482	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   333: aload_0
    //   334: aconst_null
    //   335: putfield 239	com/dianxinos/library/notify/network/RequestBase:g	Ljava/io/InputStream;
    //   338: aload_0
    //   339: aconst_null
    //   340: putfield 246	com/dianxinos/library/notify/network/RequestBase:h	Ljava/io/File;
    //   343: aload_0
    //   344: lconst_0
    //   345: putfield 451	com/dianxinos/library/notify/network/RequestBase:i	J
    //   348: aload_0
    //   349: ldc2_w 652
    //   352: putfield 385	com/dianxinos/library/notify/network/RequestBase:k	J
    //   355: aload_0
    //   356: aconst_null
    //   357: putfield 379	com/dianxinos/library/notify/network/RequestBase:l	Ljava/lang/String;
    //   360: aload_0
    //   361: aconst_null
    //   362: putfield 391	com/dianxinos/library/notify/network/RequestBase:m	Ljava/lang/String;
    //   365: goto -154 -> 211
    //   368: astore_1
    //   369: aload_0
    //   370: getfield 66	com/dianxinos/library/notify/network/RequestBase:q	Lcom/dianxinos/library/notify/network/o;
    //   373: aload_0
    //   374: invokevirtual 670	com/dianxinos/library/notify/network/o:a	(Lcom/dianxinos/library/notify/network/RequestBase;)V
    //   377: aload_0
    //   378: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   381: ifnull +15 -> 396
    //   384: aload_0
    //   385: getfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   388: invokevirtual 347	java/net/HttpURLConnection:disconnect	()V
    //   391: aload_0
    //   392: aconst_null
    //   393: putfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   396: aload_0
    //   397: aconst_null
    //   398: putfield 77	com/dianxinos/library/notify/network/RequestBase:a	Ljava/lang/String;
    //   401: aload_0
    //   402: aconst_null
    //   403: putfield 307	com/dianxinos/library/notify/network/RequestBase:c	Ljava/lang/Exception;
    //   406: aload_0
    //   407: sipush 200
    //   410: putfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   413: aload_0
    //   414: ldc_w 672
    //   417: putfield 373	com/dianxinos/library/notify/network/RequestBase:e	Ljava/lang/String;
    //   420: aload_0
    //   421: aload_0
    //   422: getfield 368	com/dianxinos/library/notify/network/RequestBase:d	I
    //   425: putfield 444	com/dianxinos/library/notify/network/RequestBase:f	I
    //   428: aload_0
    //   429: getfield 239	com/dianxinos/library/notify/network/RequestBase:g	Ljava/io/InputStream;
    //   432: invokestatic 482	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   435: aload_0
    //   436: aconst_null
    //   437: putfield 239	com/dianxinos/library/notify/network/RequestBase:g	Ljava/io/InputStream;
    //   440: aload_0
    //   441: aconst_null
    //   442: putfield 246	com/dianxinos/library/notify/network/RequestBase:h	Ljava/io/File;
    //   445: aload_0
    //   446: lconst_0
    //   447: putfield 451	com/dianxinos/library/notify/network/RequestBase:i	J
    //   450: aload_0
    //   451: ldc2_w 652
    //   454: putfield 385	com/dianxinos/library/notify/network/RequestBase:k	J
    //   457: aload_0
    //   458: aconst_null
    //   459: putfield 379	com/dianxinos/library/notify/network/RequestBase:l	Ljava/lang/String;
    //   462: aload_0
    //   463: aconst_null
    //   464: putfield 391	com/dianxinos/library/notify/network/RequestBase:m	Ljava/lang/String;
    //   467: aload_0
    //   468: ldc2_w 652
    //   471: putfield 260	com/dianxinos/library/notify/network/RequestBase:o	J
    //   474: aload_1
    //   475: athrow
    //   476: astore_1
    //   477: aload_0
    //   478: aconst_null
    //   479: putfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   482: aload_1
    //   483: athrow
    //   484: astore_1
    //   485: aload_0
    //   486: aconst_null
    //   487: putfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   490: aload_1
    //   491: athrow
    //   492: astore_1
    //   493: aload_0
    //   494: aconst_null
    //   495: putfield 51	com/dianxinos/library/notify/network/RequestBase:r	Ljava/net/HttpURLConnection;
    //   498: aload_1
    //   499: athrow
    //   500: astore_1
    //   501: goto -366 -> 135
    //   504: astore_1
    //   505: goto -216 -> 289
    //   508: astore_2
    //   509: goto -118 -> 391
    //   512: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	513	0	this	RequestBase
    //   251	4	1	localObject1	Object
    //   256	3	1	localException1	Exception
    //   368	107	1	localObject2	Object
    //   476	7	1	localObject3	Object
    //   484	7	1	localObject4	Object
    //   492	7	1	localObject5	Object
    //   500	1	1	localException2	Exception
    //   504	1	1	localException3	Exception
    //   508	1	2	localException4	Exception
    // Exception table:
    //   from	to	target	type
    //   37	84	251	finally
    //   85	87	251	finally
    //   252	254	251	finally
    //   87	113	256	java/lang/Exception
    //   87	113	368	finally
    //   257	267	368	finally
    //   384	391	476	finally
    //   282	289	484	finally
    //   128	135	492	finally
    //   128	135	500	java/lang/Exception
    //   282	289	504	java/lang/Exception
    //   384	391	508	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.RequestBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */