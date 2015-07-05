package com.estrongs.io.archive.aeszip;

import com.estrongs.a.b.o;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.bd;
import de.a.a.a.a.e;
import de.a.a.a.a.j;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;

public class k
  extends com.estrongs.io.archive.i
{
  protected j a;
  private de.a.a.a.a.d b = null;
  private String f;
  private int g = 0;
  
  public k(String paramString1, com.estrongs.io.a.d paramd, String paramString2)
  {
    super(paramString1, paramd, new HashMap());
    f = paramString2;
  }
  
  public k(String paramString, com.estrongs.io.a.d paramd, Map<String, String> paramMap)
  {
    this(paramString, paramd, (String)paramMap.get("password"));
    paramString = (String)paramMap.get("compress_level");
    if ((paramString != null) && (paramString.length() > 0))
    {
      g = bd.a(paramString);
      return;
    }
    g = -1;
  }
  
  private static final int a(long paramLong)
  {
    long l;
    if (paramLong > 65536L) {
      l = 65536L;
    }
    for (;;)
    {
      return (int)l;
      l = paramLong;
      if (paramLong < 8192L) {
        l = 8192L;
      }
    }
  }
  
  protected void a(File paramFile, String paramString)
  {
    if (!com.estrongs.fs.impl.local.h.a(paramFile.getPath())) {
      break label10;
    }
    label10:
    while (d.b()) {
      return;
    }
    if ((paramString == null) || (paramString.length() < 1)) {}
    for (paramString = paramFile.getName();; paramString = paramString + "/" + paramFile.getName())
    {
      if (!com.estrongs.fs.impl.local.h.h(paramFile.getPath())) {
        break label184;
      }
      a.d(new de.a.a.a.a.i(paramString + "/"));
      paramFile = com.estrongs.fs.impl.local.h.a(paramFile.getPath(), com.estrongs.fs.i.c, o.a).iterator();
      for (;;)
      {
        if (!paramFile.hasNext()) {
          break label152;
        }
        com.estrongs.fs.h localh = (com.estrongs.fs.h)paramFile.next();
        if (d.b()) {
          break;
        }
        a(new File(localh.getAbsolutePath()), paramString);
      }
      label152:
      break label10;
    }
    label184:
    d.a(paramFile.getName(), com.estrongs.fs.impl.local.h.e(paramFile.getPath()));
    a(paramString, paramFile);
  }
  
  public void a(String paramString, File paramFile)
  {
    try
    {
      b = new e(f.getBytes("UTF-8"));
      locali = new de.a.a.a.a.i(paramString);
      if (g == 0)
      {
        locali.setMethod(0);
        locali.setCrc(0L);
        l = com.estrongs.fs.impl.local.h.e(paramFile.getCanonicalPath());
        locali.setSize(l);
        locali.setCompressedSize(0L);
        locali.setTime(new Date().getTime());
        locali.a();
        a.d(locali);
        a.write(b.a());
        a.write(b.b());
        arrayOfByte = new byte[a(l)];
        l locall = new l(this, a, b);
        if (g != 0) {
          break label228;
        }
        paramString = locall;
        paramFile = com.estrongs.fs.impl.local.h.a(FexApplication.a(), paramFile.getCanonicalPath());
        i = paramFile.read(arrayOfByte);
        if (i <= 0) {
          break label308;
        }
        if (!d.b()) {
          break label256;
        }
        paramFile.close();
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      de.a.a.a.a.i locali;
      long l;
      for (;;)
      {
        byte[] arrayOfByte;
        int i;
        localUnsupportedEncodingException.printStackTrace();
        continue;
        locali.setMethod(8);
        continue;
        label228:
        paramString = new DeflaterOutputStream(localUnsupportedEncodingException, new Deflater(g, true), 8192);
        continue;
        label256:
        paramString.write(arrayOfByte, 0, i);
        if (d.b())
        {
          paramFile.close();
          return;
        }
        e += i;
        d.a(e);
      }
      label308:
      paramFile.close();
      paramString.close();
      locali.setSize(l);
      locali.setCompressedSize(a + 28L);
      locali.setCrc(localUnsupportedEncodingException.a());
      a.write(b.c());
      a.a(locali);
    }
  }
  
  /* Error */
  public void a(List<String> paramList)
  {
    // Byte code:
    //   0: aload_0
    //   1: lconst_0
    //   2: putfield 254	com/estrongs/io/archive/aeszip/k:e	J
    //   5: new 62	java/io/File
    //   8: dup
    //   9: aload_0
    //   10: invokevirtual 274	com/estrongs/io/archive/aeszip/k:a	()Ljava/lang/String;
    //   13: invokespecial 145	java/io/File:<init>	(Ljava/lang/String;)V
    //   16: astore 5
    //   18: aload 5
    //   20: invokevirtual 278	java/io/File:getParentFile	()Ljava/io/File;
    //   23: invokevirtual 279	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   26: invokestatic 71	com/estrongs/fs/impl/local/h:a	(Ljava/lang/String;)Z
    //   29: ifne +24 -> 53
    //   32: invokestatic 284	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   35: ifnull +74 -> 109
    //   38: invokestatic 284	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   41: aload 5
    //   43: invokevirtual 278	java/io/File:getParentFile	()Ljava/io/File;
    //   46: invokevirtual 279	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   49: invokevirtual 286	com/estrongs/fs/d:g	(Ljava/lang/String;)Z
    //   52: pop
    //   53: new 288	com/estrongs/io/archive/g
    //   56: dup
    //   57: aload_0
    //   58: getfield 75	com/estrongs/io/archive/aeszip/k:d	Lcom/estrongs/io/a/d;
    //   61: invokespecial 291	com/estrongs/io/archive/g:<init>	(Lcom/estrongs/io/a/d;)V
    //   64: astore 5
    //   66: aload_1
    //   67: invokeinterface 130 1 0
    //   72: astore 6
    //   74: aload 6
    //   76: invokeinterface 135 1 0
    //   81: ifeq +43 -> 124
    //   84: aload 5
    //   86: new 62	java/io/File
    //   89: dup
    //   90: aload 6
    //   92: invokeinterface 139 1 0
    //   97: checkcast 39	java/lang/String
    //   100: invokespecial 145	java/io/File:<init>	(Ljava/lang/String;)V
    //   103: invokevirtual 294	com/estrongs/io/archive/g:a	(Ljava/io/File;)V
    //   106: goto -32 -> 74
    //   109: aload 5
    //   111: invokevirtual 278	java/io/File:getParentFile	()Ljava/io/File;
    //   114: invokevirtual 279	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   117: invokestatic 295	com/estrongs/fs/impl/local/h:g	(Ljava/lang/String;)Z
    //   120: pop
    //   121: goto -68 -> 53
    //   124: aload_0
    //   125: getfield 75	com/estrongs/io/archive/aeszip/k:d	Lcom/estrongs/io/a/d;
    //   128: invokeinterface 80 1 0
    //   133: ifeq +4 -> 137
    //   136: return
    //   137: aload_0
    //   138: getfield 75	com/estrongs/io/archive/aeszip/k:d	Lcom/estrongs/io/a/d;
    //   141: astore 6
    //   143: new 62	java/io/File
    //   146: dup
    //   147: aload_0
    //   148: getfield 297	com/estrongs/io/archive/aeszip/k:c	Ljava/lang/String;
    //   151: invokespecial 145	java/io/File:<init>	(Ljava/lang/String;)V
    //   154: invokevirtual 83	java/io/File:getName	()Ljava/lang/String;
    //   157: astore 7
    //   159: aload 5
    //   161: invokevirtual 298	com/estrongs/io/archive/g:a	()J
    //   164: lstore_3
    //   165: aload 5
    //   167: invokevirtual 300	com/estrongs/io/archive/g:b	()I
    //   170: istore_2
    //   171: aload 6
    //   173: aload 7
    //   175: lload_3
    //   176: aload 5
    //   178: invokevirtual 302	com/estrongs/io/archive/g:c	()I
    //   181: iload_2
    //   182: iadd
    //   183: invokeinterface 305 5 0
    //   188: new 92	java/lang/StringBuilder
    //   191: dup
    //   192: invokespecial 93	java/lang/StringBuilder:<init>	()V
    //   195: aload_0
    //   196: getfield 297	com/estrongs/io/archive/aeszip/k:c	Ljava/lang/String;
    //   199: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: ldc_w 307
    //   205: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: astore 6
    //   213: new 62	java/io/File
    //   216: dup
    //   217: aload 6
    //   219: invokespecial 145	java/io/File:<init>	(Ljava/lang/String;)V
    //   222: astore 5
    //   224: aload_0
    //   225: new 107	de/a/a/a/a/j
    //   228: dup
    //   229: new 309	java/io/BufferedOutputStream
    //   232: dup
    //   233: aload 6
    //   235: invokestatic 312	com/estrongs/fs/impl/local/h:f	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   238: ldc_w 313
    //   241: invokespecial 316	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   244: invokespecial 319	de/a/a/a/a/j:<init>	(Ljava/io/OutputStream;)V
    //   247: putfield 88	com/estrongs/io/archive/aeszip/k:a	Lde/a/a/a/a/j;
    //   250: aload_1
    //   251: invokeinterface 130 1 0
    //   256: astore_1
    //   257: aload_1
    //   258: invokeinterface 135 1 0
    //   263: ifeq +80 -> 343
    //   266: aload_0
    //   267: new 62	java/io/File
    //   270: dup
    //   271: aload_1
    //   272: invokeinterface 139 1 0
    //   277: checkcast 39	java/lang/String
    //   280: invokespecial 145	java/io/File:<init>	(Ljava/lang/String;)V
    //   283: ldc_w 321
    //   286: invokevirtual 147	com/estrongs/io/archive/aeszip/k:a	(Ljava/io/File;Ljava/lang/String;)V
    //   289: goto -32 -> 257
    //   292: astore_1
    //   293: aload_1
    //   294: invokevirtual 322	java/io/IOException:printStackTrace	()V
    //   297: aload_1
    //   298: athrow
    //   299: astore_1
    //   300: aload_0
    //   301: getfield 88	com/estrongs/io/archive/aeszip/k:a	Lde/a/a/a/a/j;
    //   304: invokevirtual 323	de/a/a/a/a/j:a	()V
    //   307: aload_0
    //   308: getfield 88	com/estrongs/io/archive/aeszip/k:a	Lde/a/a/a/a/j;
    //   311: invokevirtual 324	de/a/a/a/a/j:close	()V
    //   314: aload_0
    //   315: getfield 75	com/estrongs/io/archive/aeszip/k:d	Lcom/estrongs/io/a/d;
    //   318: invokeinterface 80 1 0
    //   323: ifeq +18 -> 341
    //   326: invokestatic 284	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   329: aload 5
    //   331: invokevirtual 181	java/io/File:getCanonicalPath	()Ljava/lang/String;
    //   334: getstatic 329	com/estrongs/a/b/s:b	Lcom/estrongs/a/b/s;
    //   337: invokevirtual 332	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    //   340: pop
    //   341: aload_1
    //   342: athrow
    //   343: aload_0
    //   344: getfield 297	com/estrongs/io/archive/aeszip/k:c	Ljava/lang/String;
    //   347: invokestatic 71	com/estrongs/fs/impl/local/h:a	(Ljava/lang/String;)Z
    //   350: ifeq +17 -> 367
    //   353: invokestatic 284	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   356: aload_0
    //   357: getfield 297	com/estrongs/io/archive/aeszip/k:c	Ljava/lang/String;
    //   360: getstatic 329	com/estrongs/a/b/s:b	Lcom/estrongs/a/b/s;
    //   363: invokevirtual 332	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    //   366: pop
    //   367: aload 5
    //   369: ifnull +33 -> 402
    //   372: aload 5
    //   374: invokevirtual 335	java/io/File:exists	()Z
    //   377: ifeq +25 -> 402
    //   380: invokestatic 284	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   383: invokestatic 284	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   386: aload 5
    //   388: invokevirtual 279	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   391: invokevirtual 339	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   394: aload_0
    //   395: getfield 297	com/estrongs/io/archive/aeszip/k:c	Ljava/lang/String;
    //   398: invokevirtual 342	com/estrongs/fs/d:a	(Lcom/estrongs/fs/h;Ljava/lang/String;)Z
    //   401: pop
    //   402: aload_0
    //   403: getfield 88	com/estrongs/io/archive/aeszip/k:a	Lde/a/a/a/a/j;
    //   406: invokevirtual 323	de/a/a/a/a/j:a	()V
    //   409: aload_0
    //   410: getfield 88	com/estrongs/io/archive/aeszip/k:a	Lde/a/a/a/a/j;
    //   413: invokevirtual 324	de/a/a/a/a/j:close	()V
    //   416: aload_0
    //   417: getfield 75	com/estrongs/io/archive/aeszip/k:d	Lcom/estrongs/io/a/d;
    //   420: invokeinterface 80 1 0
    //   425: ifeq -289 -> 136
    //   428: invokestatic 284	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   431: aload 5
    //   433: invokevirtual 181	java/io/File:getCanonicalPath	()Ljava/lang/String;
    //   436: getstatic 329	com/estrongs/a/b/s:b	Lcom/estrongs/a/b/s;
    //   439: invokevirtual 332	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    //   442: pop
    //   443: return
    //   444: astore_1
    //   445: invokestatic 284	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   448: aload 5
    //   450: invokevirtual 181	java/io/File:getCanonicalPath	()Ljava/lang/String;
    //   453: getstatic 329	com/estrongs/a/b/s:b	Lcom/estrongs/a/b/s;
    //   456: invokevirtual 332	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    //   459: pop
    //   460: aload_1
    //   461: invokevirtual 343	java/lang/Throwable:printStackTrace	()V
    //   464: new 270	java/io/IOException
    //   467: dup
    //   468: aload_1
    //   469: invokevirtual 346	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   472: invokespecial 347	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   475: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	476	0	this	k
    //   0	476	1	paramList	List<String>
    //   170	13	2	i	int
    //   164	12	3	l	long
    //   16	433	5	localObject1	Object
    //   72	162	6	localObject2	Object
    //   157	17	7	str	String
    // Exception table:
    //   from	to	target	type
    //   250	257	292	java/io/IOException
    //   257	289	292	java/io/IOException
    //   343	367	292	java/io/IOException
    //   372	402	292	java/io/IOException
    //   250	257	299	finally
    //   257	289	299	finally
    //   293	299	299	finally
    //   343	367	299	finally
    //   372	402	299	finally
    //   445	476	299	finally
    //   250	257	444	java/lang/Throwable
    //   257	289	444	java/lang/Throwable
    //   343	367	444	java/lang/Throwable
    //   372	402	444	java/lang/Throwable
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.aeszip.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */