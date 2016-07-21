package com.estrongs.fs.impl.local;

import android.content.Context;
import android.content.res.Resources;
import android.net.LocalSocket;
import android.os.Build;
import com.estrongs.android.nativetool.c;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.util.ao;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

public class m
{
  static List<v> a = new ArrayList();
  static List<v> b = new ArrayList();
  public static Object c = new Object();
  static ArrayList<Integer> d = new ArrayList();
  private static String e = null;
  private static String f = null;
  private static String g = null;
  private static Queue<s> h = new LinkedList();
  private static Queue<s> i = new LinkedList();
  private static s j = null;
  private static boolean k = false;
  private static int l = 0;
  private static boolean m = false;
  
  public static int a()
  {
    Object localObject = a(false);
    if (localObject == null) {
      return 0;
    }
    p localp = new p();
    a = localObject;
    b = "uname -m";
    c = Integer.valueOf(13);
    localp.b();
    if (((Boolean)localp.c()).booleanValue())
    {
      b((s)localObject);
      localObject = (String)d;
      if (localObject == null)
      {
        l.e("Error", "uname result null");
        return 0;
      }
    }
    else
    {
      a((s)localObject);
      return 0;
    }
    localObject = ((String)localObject).toLowerCase();
    l.e("Error", "uname ret:" + (String)localObject);
    if (((String)localObject).contains("arm")) {
      return 1;
    }
    if ((((String)localObject).contains("x86")) || (((String)localObject).contains("386")) || (((String)localObject).contains("686"))) {
      return 2;
    }
    if (((String)localObject).contains("mips")) {
      return 3;
    }
    return 0;
  }
  
  public static int a(Object paramObject, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      q.a((q)paramObject, paramInt2);
      q.b((q)paramObject, paramInt1);
      q.a((q)paramObject, paramArrayOfByte);
      e(paramObject);
      paramInt1 = q.j((q)paramObject);
      return paramInt1;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  public static long a(Object paramObject, long paramLong, int paramInt)
  {
    try
    {
      q.c((q)paramObject, paramInt);
      q.a((q)paramObject, paramLong);
      f(paramObject);
      paramLong = q.k((q)paramObject);
      return paramLong;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  public static s a(boolean paramBoolean)
  {
    return a(paramBoolean, false);
  }
  
  /* Error */
  public static s a(boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iload_1
    //   1: ifeq +215 -> 216
    //   4: getstatic 52	com/estrongs/fs/impl/local/m:i	Ljava/util/Queue;
    //   7: astore_2
    //   8: aload_2
    //   9: monitorenter
    //   10: getstatic 52	com/estrongs/fs/impl/local/m:i	Ljava/util/Queue;
    //   13: invokeinterface 185 1 0
    //   18: checkcast 187	com/estrongs/fs/impl/local/s
    //   21: astore_3
    //   22: ldc -67
    //   24: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   27: aload_2
    //   28: monitorexit
    //   29: aload_3
    //   30: ifnonnull +323 -> 353
    //   33: iload_0
    //   34: ifeq +319 -> 353
    //   37: ldc -60
    //   39: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   42: iload_1
    //   43: ifeq +212 -> 255
    //   46: ldc -58
    //   48: astore_2
    //   49: invokestatic 204	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   52: aload_2
    //   53: invokevirtual 208	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   56: astore 4
    //   58: aload_3
    //   59: astore_2
    //   60: aload 4
    //   62: ifnull +414 -> 476
    //   65: new 187	com/estrongs/fs/impl/local/s
    //   68: dup
    //   69: invokespecial 209	com/estrongs/fs/impl/local/s:<init>	()V
    //   72: astore_3
    //   73: aload_3
    //   74: new 211	java/io/BufferedReader
    //   77: dup
    //   78: new 213	java/io/InputStreamReader
    //   81: dup
    //   82: aload 4
    //   84: invokevirtual 219	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   87: invokespecial 222	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   90: invokespecial 225	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   93: putfield 228	com/estrongs/fs/impl/local/s:c	Ljava/io/BufferedReader;
    //   96: aload_3
    //   97: new 230	java/io/BufferedWriter
    //   100: dup
    //   101: new 232	java/io/OutputStreamWriter
    //   104: dup
    //   105: aload 4
    //   107: invokevirtual 236	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   110: invokespecial 239	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   113: invokespecial 242	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   116: putfield 245	com/estrongs/fs/impl/local/s:b	Ljava/io/BufferedWriter;
    //   119: aload_3
    //   120: getfield 245	com/estrongs/fs/impl/local/s:b	Ljava/io/BufferedWriter;
    //   123: ldc -9
    //   125: invokevirtual 250	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   128: aload_3
    //   129: getfield 245	com/estrongs/fs/impl/local/s:b	Ljava/io/BufferedWriter;
    //   132: invokevirtual 253	java/io/BufferedWriter:flush	()V
    //   135: aload_3
    //   136: iconst_1
    //   137: putfield 255	com/estrongs/fs/impl/local/s:d	Z
    //   140: aload_3
    //   141: iload_1
    //   142: putfield 257	com/estrongs/fs/impl/local/s:e	Z
    //   145: ldc2_w 258
    //   148: invokestatic 265	java/lang/Thread:sleep	(J)V
    //   151: aload_3
    //   152: getfield 228	com/estrongs/fs/impl/local/s:c	Ljava/io/BufferedReader;
    //   155: invokevirtual 268	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   158: astore_2
    //   159: aload_2
    //   160: ifnull +102 -> 262
    //   163: aload_2
    //   164: ldc_w 270
    //   167: invokevirtual 274	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   170: ifne +92 -> 262
    //   173: aload_3
    //   174: getfield 228	com/estrongs/fs/impl/local/s:c	Ljava/io/BufferedReader;
    //   177: invokevirtual 277	java/io/BufferedReader:ready	()Z
    //   180: ifne +14 -> 194
    //   183: aload 4
    //   185: invokevirtual 219	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   188: invokevirtual 282	java/io/InputStream:available	()I
    //   191: ifle +71 -> 262
    //   194: aload_3
    //   195: getfield 228	com/estrongs/fs/impl/local/s:c	Ljava/io/BufferedReader;
    //   198: invokevirtual 268	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   201: astore_2
    //   202: goto -43 -> 159
    //   205: astore_3
    //   206: aconst_null
    //   207: astore_3
    //   208: goto -181 -> 27
    //   211: astore_3
    //   212: aload_2
    //   213: monitorexit
    //   214: aload_3
    //   215: athrow
    //   216: getstatic 50	com/estrongs/fs/impl/local/m:h	Ljava/util/Queue;
    //   219: astore_2
    //   220: aload_2
    //   221: monitorenter
    //   222: getstatic 50	com/estrongs/fs/impl/local/m:h	Ljava/util/Queue;
    //   225: invokeinterface 185 1 0
    //   230: checkcast 187	com/estrongs/fs/impl/local/s
    //   233: astore_3
    //   234: ldc -67
    //   236: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   239: aload_2
    //   240: monitorexit
    //   241: goto -212 -> 29
    //   244: astore_3
    //   245: aload_2
    //   246: monitorexit
    //   247: aload_3
    //   248: athrow
    //   249: astore_3
    //   250: aconst_null
    //   251: astore_3
    //   252: goto -13 -> 239
    //   255: ldc_w 284
    //   258: astore_2
    //   259: goto -210 -> 49
    //   262: aload_2
    //   263: ifnull +13 -> 276
    //   266: aload_2
    //   267: ldc_w 270
    //   270: invokevirtual 274	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   273: ifne +36 -> 309
    //   276: aload 4
    //   278: invokevirtual 287	java/lang/Process:destroy	()V
    //   281: new 121	java/lang/StringBuilder
    //   284: dup
    //   285: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   288: ldc_w 289
    //   291: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   294: aload_2
    //   295: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   298: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   301: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   304: aconst_null
    //   305: astore_2
    //   306: goto +170 -> 476
    //   309: ldc_w 291
    //   312: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   315: aload_3
    //   316: astore_2
    //   317: goto +159 -> 476
    //   320: astore_2
    //   321: aload_2
    //   322: invokevirtual 294	java/lang/Exception:printStackTrace	()V
    //   325: new 121	java/lang/StringBuilder
    //   328: dup
    //   329: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   332: ldc_w 296
    //   335: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: aload_2
    //   339: invokevirtual 297	java/lang/Exception:toString	()Ljava/lang/String;
    //   342: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   348: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   351: aconst_null
    //   352: areturn
    //   353: aload_3
    //   354: astore_2
    //   355: aload_3
    //   356: ifnonnull +120 -> 476
    //   359: aload_3
    //   360: astore_2
    //   361: iload_0
    //   362: ifne +114 -> 476
    //   365: new 299	java/lang/ProcessBuilder
    //   368: dup
    //   369: iconst_1
    //   370: anewarray 104	java/lang/String
    //   373: dup
    //   374: iconst_0
    //   375: ldc_w 301
    //   378: aastore
    //   379: invokespecial 304	java/lang/ProcessBuilder:<init>	([Ljava/lang/String;)V
    //   382: astore_2
    //   383: aload_2
    //   384: invokevirtual 307	java/lang/ProcessBuilder:redirectErrorStream	()Z
    //   387: pop
    //   388: aload_2
    //   389: invokevirtual 311	java/lang/ProcessBuilder:start	()Ljava/lang/Process;
    //   392: astore 4
    //   394: aload_3
    //   395: astore_2
    //   396: aload 4
    //   398: ifnull +78 -> 476
    //   401: new 187	com/estrongs/fs/impl/local/s
    //   404: dup
    //   405: invokespecial 209	com/estrongs/fs/impl/local/s:<init>	()V
    //   408: astore_2
    //   409: aload_2
    //   410: iconst_0
    //   411: putfield 255	com/estrongs/fs/impl/local/s:d	Z
    //   414: aload_2
    //   415: new 211	java/io/BufferedReader
    //   418: dup
    //   419: new 213	java/io/InputStreamReader
    //   422: dup
    //   423: aload 4
    //   425: invokevirtual 219	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   428: invokespecial 222	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   431: invokespecial 225	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   434: putfield 228	com/estrongs/fs/impl/local/s:c	Ljava/io/BufferedReader;
    //   437: aload_2
    //   438: new 230	java/io/BufferedWriter
    //   441: dup
    //   442: new 232	java/io/OutputStreamWriter
    //   445: dup
    //   446: aload 4
    //   448: invokevirtual 236	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   451: invokespecial 239	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   454: invokespecial 242	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   457: putfield 245	com/estrongs/fs/impl/local/s:b	Ljava/io/BufferedWriter;
    //   460: aload_2
    //   461: aload 4
    //   463: putfield 314	com/estrongs/fs/impl/local/s:a	Ljava/lang/Process;
    //   466: goto +10 -> 476
    //   469: astore_2
    //   470: aconst_null
    //   471: areturn
    //   472: astore_2
    //   473: goto -322 -> 151
    //   476: aload_2
    //   477: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	478	0	paramBoolean1	boolean
    //   0	478	1	paramBoolean2	boolean
    //   320	19	2	localException1	Exception
    //   354	107	2	localObject2	Object
    //   469	1	2	localException2	Exception
    //   472	5	2	localException3	Exception
    //   21	174	3	locals1	s
    //   205	1	3	localNoSuchElementException1	java.util.NoSuchElementException
    //   207	1	3	localObject3	Object
    //   211	4	3	localObject4	Object
    //   233	1	3	locals2	s
    //   244	4	3	localObject5	Object
    //   249	1	3	localNoSuchElementException2	java.util.NoSuchElementException
    //   251	144	3	localObject6	Object
    //   56	406	4	localProcess	Process
    // Exception table:
    //   from	to	target	type
    //   10	27	205	java/util/NoSuchElementException
    //   10	27	211	finally
    //   27	29	211	finally
    //   212	214	211	finally
    //   222	239	244	finally
    //   239	241	244	finally
    //   245	247	244	finally
    //   222	239	249	java/util/NoSuchElementException
    //   49	58	320	java/lang/Exception
    //   65	145	320	java/lang/Exception
    //   151	159	320	java/lang/Exception
    //   163	194	320	java/lang/Exception
    //   194	202	320	java/lang/Exception
    //   266	276	320	java/lang/Exception
    //   276	304	320	java/lang/Exception
    //   309	315	320	java/lang/Exception
    //   365	394	469	java/lang/Exception
    //   401	466	469	java/lang/Exception
    //   145	151	472	java/lang/Exception
  }
  
  public static String a(int paramInt)
  {
    if (a.size() == 0) {
      q();
    }
    int n = 0;
    while (n < a.size())
    {
      if (ageta == paramInt) {
        return agetb;
      }
      n += 1;
    }
    return null;
  }
  
  public static String a(InputStream paramInputStream)
  {
    return new String(b(paramInputStream));
  }
  
  public static String a(String[] paramArrayOfString)
  {
    if (paramArrayOfString == null) {
      return "";
    }
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("");
    int n = 0;
    while (n < paramArrayOfString.length - 1)
    {
      localStringBuffer.append(paramArrayOfString[n] + "\n");
      n += 1;
    }
    if (paramArrayOfString.length > 0) {
      localStringBuffer.append(paramArrayOfString[n]);
    }
    return localStringBuffer.toString();
  }
  
  public static void a(s params)
  {
    if ((params == null) || (a == null)) {
      return;
    }
    p localp = new p();
    a = params;
    localp.a();
  }
  
  public static void a(OutputStream paramOutputStream, int paramInt)
  {
    paramOutputStream.write(new byte[] { (byte)(paramInt >>> 24), (byte)(paramInt >>> 16), (byte)(paramInt >>> 8), (byte)paramInt });
  }
  
  public static void a(OutputStream paramOutputStream, long paramLong)
  {
    paramOutputStream.write(new byte[] { (byte)(int)(paramLong >>> 56 & 0xFF), (byte)(int)(paramLong >>> 48 & 0xFF), (byte)(int)(paramLong >>> 40 & 0xFF), (byte)(int)(paramLong >>> 32 & 0xFF), (byte)(int)(paramLong >>> 24 & 0xFF), (byte)(int)(paramLong >>> 16 & 0xFF), (byte)(int)(paramLong >>> 8 & 0xFF), (byte)(int)(paramLong >>> 0 & 0xFF) });
  }
  
  public static void a(OutputStream paramOutputStream, String paramString)
  {
    paramString = paramString.getBytes();
    a(paramOutputStream, paramString.length);
    paramOutputStream.write(paramString);
  }
  
  public static void a(Object paramObject)
  {
    try
    {
      g(paramObject);
      return;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  public static void a(String paramString)
  {
    e = paramString + "/" + "libestool2.so";
    g = paramString + "/sdcardhelper";
    f = paramString;
  }
  
  public static void a(String paramString, h paramh, boolean paramBoolean)
  {
    try
    {
      a(paramString, paramh.lastModified() / 1000L);
      paramh = f(paramh.getAbsolutePath());
      c = -1;
      if (paramBoolean) {
        a |= 0x1FF;
      }
      a(paramString, paramh);
      return;
    }
    catch (Exception paramString) {}
  }
  
  /* Error */
  public static void a(String paramString, Object paramObject)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 9
    //   3: aload_0
    //   4: ifnonnull +4 -> 8
    //   7: return
    //   8: invokestatic 408	com/estrongs/fs/impl/local/m:p	()Landroid/net/LocalSocket;
    //   11: astore 11
    //   13: aload 11
    //   15: ifnull -8 -> 7
    //   18: aload 11
    //   20: invokevirtual 411	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   23: astore 8
    //   25: aload 11
    //   27: invokevirtual 412	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   30: astore 10
    //   32: aload 10
    //   34: astore 9
    //   36: aload 9
    //   38: iconst_1
    //   39: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   42: aload 9
    //   44: aload_0
    //   45: invokestatic 414	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   48: aload 8
    //   50: invokestatic 416	com/estrongs/fs/impl/local/m:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   53: astore_0
    //   54: aload 8
    //   56: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   59: istore_2
    //   60: aload 8
    //   62: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   65: istore_3
    //   66: iload_2
    //   67: i2l
    //   68: lstore 4
    //   70: iload_3
    //   71: i2l
    //   72: lstore 6
    //   74: aload 8
    //   76: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   79: istore_2
    //   80: aload 8
    //   82: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   85: istore_3
    //   86: aload 8
    //   88: invokestatic 416	com/estrongs/fs/impl/local/m:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   91: astore 10
    //   93: aconst_null
    //   94: invokestatic 424	com/estrongs/fs/impl/local/x:a	(Landroid/content/Context;)Lcom/estrongs/fs/impl/local/x;
    //   97: aload_0
    //   98: lload 6
    //   100: lload 4
    //   102: bipush 32
    //   104: lshl
    //   105: ladd
    //   106: iload_2
    //   107: iload_3
    //   108: aload 10
    //   110: aload_1
    //   111: invokevirtual 427	com/estrongs/fs/impl/local/x:a	(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/Object;)Z
    //   114: pop
    //   115: goto -67 -> 48
    //   118: astore_0
    //   119: aload 8
    //   121: astore_0
    //   122: aload_0
    //   123: ifnull +7 -> 130
    //   126: aload_0
    //   127: invokevirtual 430	java/io/InputStream:close	()V
    //   130: aload 9
    //   132: ifnull +8 -> 140
    //   135: aload 9
    //   137: invokevirtual 431	java/io/OutputStream:close	()V
    //   140: aload 11
    //   142: invokevirtual 432	android/net/LocalSocket:close	()V
    //   145: return
    //   146: astore_0
    //   147: return
    //   148: astore_0
    //   149: aconst_null
    //   150: astore 9
    //   152: aconst_null
    //   153: astore 8
    //   155: aload 8
    //   157: ifnull +8 -> 165
    //   160: aload 8
    //   162: invokevirtual 430	java/io/InputStream:close	()V
    //   165: aload 9
    //   167: ifnull +8 -> 175
    //   170: aload 9
    //   172: invokevirtual 431	java/io/OutputStream:close	()V
    //   175: aload 11
    //   177: invokevirtual 432	android/net/LocalSocket:close	()V
    //   180: aload_0
    //   181: athrow
    //   182: astore_0
    //   183: return
    //   184: astore_0
    //   185: aconst_null
    //   186: astore 9
    //   188: goto -33 -> 155
    //   191: astore_0
    //   192: goto -37 -> 155
    //   195: astore_0
    //   196: aconst_null
    //   197: astore_0
    //   198: goto -76 -> 122
    //   201: astore_0
    //   202: aload 8
    //   204: astore_0
    //   205: goto -83 -> 122
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	208	0	paramString	String
    //   0	208	1	paramObject	Object
    //   59	48	2	n	int
    //   65	43	3	i1	int
    //   68	33	4	l1	long
    //   72	27	6	l2	long
    //   23	180	8	localInputStream	InputStream
    //   1	186	9	localObject1	Object
    //   30	79	10	localObject2	Object
    //   11	165	11	localLocalSocket	LocalSocket
    // Exception table:
    //   from	to	target	type
    //   36	48	118	java/io/IOException
    //   48	66	118	java/io/IOException
    //   74	115	118	java/io/IOException
    //   126	130	146	java/io/IOException
    //   135	140	146	java/io/IOException
    //   140	145	146	java/io/IOException
    //   18	25	148	finally
    //   160	165	182	java/io/IOException
    //   170	175	182	java/io/IOException
    //   175	180	182	java/io/IOException
    //   25	32	184	finally
    //   36	48	191	finally
    //   48	66	191	finally
    //   74	115	191	finally
    //   18	25	195	java/io/IOException
    //   25	32	201	java/io/IOException
  }
  
  public static boolean a(Context paramContext)
  {
    File localFile = new File(e);
    localFile.delete();
    try
    {
      int n = c();
      paramContext = paramContext.getResources().openRawResource(n);
      bk.a(paramContext, e, -1);
      paramContext.close();
      try
      {
        if (ac.a() >= 9)
        {
          paramContext = new ao(localFile);
          paramContext.a("setExecutable", new Class[] { Boolean.TYPE, Boolean.TYPE }, new Object[] { Boolean.valueOf(true), Boolean.valueOf(false) });
          paramContext.a("setReadable", new Class[] { Boolean.TYPE, Boolean.TYPE }, new Object[] { Boolean.valueOf(true), Boolean.valueOf(false) });
        }
        for (;;)
        {
          ad.a(FexApplication.a()).U(FexApplication.a().getResources().getResourceName(n));
          return true;
          a(e, "755", false);
        }
      }
      catch (Exception paramContext)
      {
        for (;;) {}
      }
      return false;
    }
    catch (Exception paramContext) {}
  }
  
  public static boolean a(Context paramContext, boolean paramBoolean)
  {
    boolean bool3 = false;
    boolean bool1;
    if ((paramContext == null) && (!paramBoolean)) {
      bool1 = k;
    }
    for (;;)
    {
      return bool1;
      bool1 = bool3;
      if (e == null) {
        continue;
      }
      if ((ad.a(paramContext).n()) && (ad.a(paramContext).k())) {}
      for (bool1 = true; (paramBoolean == true) && (!bool1); bool1 = false)
      {
        k = bool1;
        return false;
      }
      if (!paramBoolean)
      {
        if (!bool1)
        {
          k = bool1;
          return false;
        }
        return k;
      }
      if (h()) {}
      try
      {
        bool2 = a(paramContext);
        bool1 = bool3;
        if (!bool2) {
          continue;
        }
        paramContext = new boolean[1];
        bool1 = c(paramBoolean);
        if ((!bool1) && (!k))
        {
          paramContext[0] = c(paramBoolean);
          return paramContext[0];
        }
      }
      catch (Exception paramContext)
      {
        for (;;)
        {
          boolean bool2 = false;
          continue;
          paramContext[0] = bool1;
        }
      }
    }
  }
  
  /* Error */
  public static boolean a(String paramString, long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 8
    //   6: aconst_null
    //   7: astore 7
    //   9: aconst_null
    //   10: astore 4
    //   12: invokestatic 408	com/estrongs/fs/impl/local/m:p	()Landroid/net/LocalSocket;
    //   15: astore 9
    //   17: aload 9
    //   19: invokevirtual 412	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   22: astore 6
    //   24: aload 6
    //   26: astore 5
    //   28: aload 8
    //   30: astore 4
    //   32: aload 9
    //   34: invokevirtual 411	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   37: astore 8
    //   39: aload 6
    //   41: astore 5
    //   43: aload 8
    //   45: astore 4
    //   47: aload 8
    //   49: astore 7
    //   51: aload 6
    //   53: sipush 207
    //   56: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   59: aload 6
    //   61: astore 5
    //   63: aload 8
    //   65: astore 4
    //   67: aload 8
    //   69: astore 7
    //   71: aload 6
    //   73: aload_0
    //   74: invokestatic 414	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   77: aload 6
    //   79: astore 5
    //   81: aload 8
    //   83: astore 4
    //   85: aload 8
    //   87: astore 7
    //   89: aload 6
    //   91: lload_1
    //   92: invokestatic 520	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;J)V
    //   95: aload 6
    //   97: astore 5
    //   99: aload 8
    //   101: astore 4
    //   103: aload 8
    //   105: astore 7
    //   107: aload 8
    //   109: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   112: istore_3
    //   113: iload_3
    //   114: ifeq +30 -> 144
    //   117: aload 8
    //   119: ifnull +8 -> 127
    //   122: aload 8
    //   124: invokevirtual 430	java/io/InputStream:close	()V
    //   127: aload 6
    //   129: ifnull +8 -> 137
    //   132: aload 6
    //   134: invokevirtual 431	java/io/OutputStream:close	()V
    //   137: aload 9
    //   139: invokevirtual 432	android/net/LocalSocket:close	()V
    //   142: iconst_0
    //   143: ireturn
    //   144: aload 8
    //   146: ifnull +8 -> 154
    //   149: aload 8
    //   151: invokevirtual 430	java/io/InputStream:close	()V
    //   154: aload 6
    //   156: ifnull +8 -> 164
    //   159: aload 6
    //   161: invokevirtual 431	java/io/OutputStream:close	()V
    //   164: aload 9
    //   166: invokevirtual 432	android/net/LocalSocket:close	()V
    //   169: iconst_1
    //   170: ireturn
    //   171: astore_0
    //   172: iconst_1
    //   173: ireturn
    //   174: astore_0
    //   175: aconst_null
    //   176: astore 6
    //   178: aload 4
    //   180: astore 7
    //   182: aload 6
    //   184: astore 5
    //   186: aload 7
    //   188: astore 4
    //   190: aload_0
    //   191: invokevirtual 294	java/lang/Exception:printStackTrace	()V
    //   194: aload 7
    //   196: ifnull +8 -> 204
    //   199: aload 7
    //   201: invokevirtual 430	java/io/InputStream:close	()V
    //   204: aload 6
    //   206: ifnull +8 -> 214
    //   209: aload 6
    //   211: invokevirtual 431	java/io/OutputStream:close	()V
    //   214: aload 9
    //   216: invokevirtual 432	android/net/LocalSocket:close	()V
    //   219: iconst_0
    //   220: ireturn
    //   221: astore_0
    //   222: iconst_0
    //   223: ireturn
    //   224: astore_0
    //   225: aconst_null
    //   226: astore 6
    //   228: aload 5
    //   230: astore 4
    //   232: aload 6
    //   234: astore 5
    //   236: aload 4
    //   238: ifnull +8 -> 246
    //   241: aload 4
    //   243: invokevirtual 430	java/io/InputStream:close	()V
    //   246: aload 5
    //   248: ifnull +8 -> 256
    //   251: aload 5
    //   253: invokevirtual 431	java/io/OutputStream:close	()V
    //   256: aload 9
    //   258: invokevirtual 432	android/net/LocalSocket:close	()V
    //   261: aload_0
    //   262: athrow
    //   263: astore 4
    //   265: goto -4 -> 261
    //   268: astore_0
    //   269: goto -33 -> 236
    //   272: astore_0
    //   273: goto -91 -> 182
    //   276: astore_0
    //   277: iconst_0
    //   278: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	279	0	paramString	String
    //   0	279	1	paramLong	long
    //   112	2	3	n	int
    //   10	232	4	localObject1	Object
    //   263	1	4	localException	Exception
    //   1	251	5	localObject2	Object
    //   22	211	6	localOutputStream	OutputStream
    //   7	193	7	localObject3	Object
    //   4	146	8	localInputStream	InputStream
    //   15	242	9	localLocalSocket	LocalSocket
    // Exception table:
    //   from	to	target	type
    //   149	154	171	java/lang/Exception
    //   159	164	171	java/lang/Exception
    //   164	169	171	java/lang/Exception
    //   17	24	174	java/lang/Exception
    //   199	204	221	java/lang/Exception
    //   209	214	221	java/lang/Exception
    //   214	219	221	java/lang/Exception
    //   17	24	224	finally
    //   241	246	263	java/lang/Exception
    //   251	256	263	java/lang/Exception
    //   256	261	263	java/lang/Exception
    //   32	39	268	finally
    //   51	59	268	finally
    //   71	77	268	finally
    //   89	95	268	finally
    //   107	113	268	finally
    //   190	194	268	finally
    //   32	39	272	java/lang/Exception
    //   51	59	272	java/lang/Exception
    //   71	77	272	java/lang/Exception
    //   89	95	272	java/lang/Exception
    //   107	113	272	java/lang/Exception
    //   122	127	276	java/lang/Exception
    //   132	137	276	java/lang/Exception
    //   137	142	276	java/lang/Exception
  }
  
  public static boolean a(String paramString, r paramr)
  {
    if (paramString == null) {
      return false;
    }
    String[] arrayOfString = ap.k(paramString, "rw");
    r.a(paramr, paramString);
    c(paramr);
    if (arrayOfString != null) {
      ap.a(arrayOfString);
    }
    return r.b(paramr);
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null)) {}
    s locals;
    do
    {
      return false;
      paramString2 = "mv " + m(paramString1) + " " + m(paramString2);
      locals = a(true);
    } while (locals == null);
    paramString1 = ap.k(paramString1, "rw");
    p localp = new p();
    a = locals;
    b = paramString2;
    c = Integer.valueOf(4);
    localp.b();
    if (((Boolean)e).booleanValue()) {
      b(locals);
    }
    for (;;)
    {
      if (paramString1 != null) {
        ap.a(paramString1);
      }
      return ((Boolean)localp.c()).booleanValue();
      a(locals);
    }
  }
  
  public static boolean a(String paramString1, String paramString2, s params)
  {
    String str = paramString1;
    if (paramString1.endsWith("/")) {
      str = paramString1.substring(0, paramString1.length() - 1);
    }
    paramString1 = "chmod " + paramString2 + " \"" + str + "\"";
    paramString2 = new p();
    a = params;
    b = paramString1;
    c = Integer.valueOf(13);
    paramString2.b();
    return ((Boolean)paramString2.c()).booleanValue();
  }
  
  public static boolean a(String paramString1, String paramString2, boolean paramBoolean)
  {
    Object localObject = paramString1;
    if (paramString1.endsWith("/")) {
      localObject = paramString1.substring(0, paramString1.length() - 1);
    }
    paramString1 = "chmod " + paramString2 + " \"" + (String)localObject + "\"";
    paramString2 = a(paramBoolean);
    if (paramString2 == null) {
      return false;
    }
    localObject = new p();
    a = paramString2;
    b = paramString1;
    c = Integer.valueOf(13);
    ((p)localObject).b();
    if (((Boolean)e).booleanValue()) {
      b(paramString2);
    }
    for (;;)
    {
      return ((Boolean)((p)localObject).c()).booleanValue();
      a(paramString2);
    }
  }
  
  public static boolean a(String paramString, boolean paramBoolean)
  {
    return new boolean[] { a(paramString, paramBoolean, true) }[0];
  }
  
  /* Error */
  private static boolean a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 4
    //   9: aload_0
    //   10: ifnonnull +5 -> 15
    //   13: iconst_0
    //   14: ireturn
    //   15: iload_2
    //   16: ifeq +19 -> 35
    //   19: iconst_2
    //   20: istore_3
    //   21: aload_0
    //   22: iload_1
    //   23: invokestatic 573	com/estrongs/android/util/ap:b	(Ljava/lang/String;Z)Ljava/lang/String;
    //   26: astore 8
    //   28: aload 8
    //   30: ifnonnull +10 -> 40
    //   33: iconst_0
    //   34: ireturn
    //   35: iconst_3
    //   36: istore_3
    //   37: goto -16 -> 21
    //   40: invokestatic 408	com/estrongs/fs/impl/local/m:p	()Landroid/net/LocalSocket;
    //   43: astore 7
    //   45: aload 7
    //   47: ifnonnull +5 -> 52
    //   50: iconst_0
    //   51: ireturn
    //   52: aload 7
    //   54: invokevirtual 411	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   57: astore_0
    //   58: aload 6
    //   60: astore 4
    //   62: aload 7
    //   64: invokevirtual 412	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   67: astore 5
    //   69: aload 5
    //   71: astore 4
    //   73: aload 5
    //   75: iload_3
    //   76: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   79: aload 5
    //   81: astore 4
    //   83: aload 5
    //   85: aload 8
    //   87: invokestatic 414	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   90: aload 5
    //   92: astore 4
    //   94: aload_0
    //   95: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   98: istore_3
    //   99: iload_3
    //   100: ifne +31 -> 131
    //   103: aload_0
    //   104: ifnull +7 -> 111
    //   107: aload_0
    //   108: invokevirtual 430	java/io/InputStream:close	()V
    //   111: aload 5
    //   113: ifnull +8 -> 121
    //   116: aload 5
    //   118: invokevirtual 431	java/io/OutputStream:close	()V
    //   121: aload 7
    //   123: invokevirtual 432	android/net/LocalSocket:close	()V
    //   126: iconst_1
    //   127: ireturn
    //   128: astore_0
    //   129: iconst_0
    //   130: ireturn
    //   131: aload 5
    //   133: astore 4
    //   135: new 575	com/estrongs/fs/impl/local/NativeException
    //   138: dup
    //   139: iload_3
    //   140: invokestatic 579	com/estrongs/fs/impl/local/l:a	(I)Ljava/lang/String;
    //   143: invokespecial 580	com/estrongs/fs/impl/local/NativeException:<init>	(Ljava/lang/String;)V
    //   146: athrow
    //   147: astore 4
    //   149: aload_0
    //   150: astore 4
    //   152: aload 5
    //   154: astore_0
    //   155: aload 4
    //   157: ifnull +8 -> 165
    //   160: aload 4
    //   162: invokevirtual 430	java/io/InputStream:close	()V
    //   165: aload_0
    //   166: ifnull +7 -> 173
    //   169: aload_0
    //   170: invokevirtual 431	java/io/OutputStream:close	()V
    //   173: aload 7
    //   175: invokevirtual 432	android/net/LocalSocket:close	()V
    //   178: iconst_0
    //   179: ireturn
    //   180: astore_0
    //   181: iconst_0
    //   182: ireturn
    //   183: astore 6
    //   185: aconst_null
    //   186: astore_0
    //   187: aload 5
    //   189: astore 4
    //   191: aload 6
    //   193: astore 5
    //   195: aload_0
    //   196: ifnull +7 -> 203
    //   199: aload_0
    //   200: invokevirtual 430	java/io/InputStream:close	()V
    //   203: aload 4
    //   205: ifnull +8 -> 213
    //   208: aload 4
    //   210: invokevirtual 431	java/io/OutputStream:close	()V
    //   213: aload 7
    //   215: invokevirtual 432	android/net/LocalSocket:close	()V
    //   218: aload 5
    //   220: athrow
    //   221: astore_0
    //   222: iconst_0
    //   223: ireturn
    //   224: astore 5
    //   226: goto -31 -> 195
    //   229: astore_0
    //   230: aconst_null
    //   231: astore_0
    //   232: goto -77 -> 155
    //   235: astore 4
    //   237: aconst_null
    //   238: astore 5
    //   240: aload_0
    //   241: astore 4
    //   243: aload 5
    //   245: astore_0
    //   246: goto -91 -> 155
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	249	0	paramString	String
    //   0	249	1	paramBoolean1	boolean
    //   0	249	2	paramBoolean2	boolean
    //   20	120	3	n	int
    //   7	127	4	localObject1	Object
    //   147	1	4	localIOException1	IOException
    //   150	59	4	localObject2	Object
    //   235	1	4	localIOException2	IOException
    //   241	1	4	str1	String
    //   1	218	5	localObject3	Object
    //   224	1	5	localObject4	Object
    //   238	6	5	localObject5	Object
    //   4	55	6	localObject6	Object
    //   183	9	6	localObject7	Object
    //   43	171	7	localLocalSocket	LocalSocket
    //   26	60	8	str2	String
    // Exception table:
    //   from	to	target	type
    //   107	111	128	java/io/IOException
    //   116	121	128	java/io/IOException
    //   121	126	128	java/io/IOException
    //   73	79	147	java/io/IOException
    //   83	90	147	java/io/IOException
    //   94	99	147	java/io/IOException
    //   135	147	147	java/io/IOException
    //   160	165	180	java/io/IOException
    //   169	173	180	java/io/IOException
    //   173	178	180	java/io/IOException
    //   52	58	183	finally
    //   199	203	221	java/io/IOException
    //   208	213	221	java/io/IOException
    //   213	218	221	java/io/IOException
    //   62	69	224	finally
    //   73	79	224	finally
    //   83	90	224	finally
    //   94	99	224	finally
    //   135	147	224	finally
    //   52	58	229	java/io/IOException
    //   62	69	235	java/io/IOException
  }
  
  public static int b()
  {
    try
    {
      if (l != 0) {
        return l;
      }
      String str1 = Build.CPU_ABI;
      if (str1 != null)
      {
        str1 = str1.toLowerCase();
        if (str1.contains("arm"))
        {
          l = 1;
          return 1;
        }
      }
    }
    catch (Exception localException) {}
    for (;;)
    {
      l = a();
      return l;
      if ((localException.contains("x86")) || (localException.contains("386")) || (localException.contains("686")))
      {
        l = 2;
        return 2;
      }
      if (localException.contains("mips"))
      {
        l = 3;
        return 3;
      }
      RandomAccessFile localRandomAccessFile = new RandomAccessFile("/proc/cpuinfo", "r");
      for (String str2 = localRandomAccessFile.readLine(); str2 != null; str2 = localRandomAccessFile.readLine())
      {
        str2 = str2.toLowerCase();
        if (str2.contains("processor"))
        {
          if (str2.contains("arm"))
          {
            l = 1;
            return 1;
          }
          if ((str2.contains("x86")) || (str2.contains("386")) || (str2.contains("686")))
          {
            l = 2;
            return 2;
          }
          if (str2.contains("mips"))
          {
            l = 3;
            return 3;
          }
        }
        else if ((str2.contains("flags")) || (str2.contains("features")))
        {
          if (str2.contains("sse"))
          {
            l = 2;
            return 2;
          }
          if (str2.contains("thumb"))
          {
            l = 1;
            return 1;
          }
        }
        else if (str2.contains("pentium"))
        {
          l = 2;
          return 2;
        }
      }
    }
  }
  
  public static String b(int paramInt)
  {
    if (b.size() == 0) {
      q();
    }
    if (b.size() == 0) {
      return null;
    }
    int n = 0;
    while (n < b.size())
    {
      if (bgeta == paramInt) {
        return bgetb;
      }
      n += 1;
    }
    return null;
  }
  
  public static void b(Context paramContext)
  {
    if (ac.a() >= 21) {
      return;
    }
    cv localcv = new cv(paramContext);
    localcv.a(2131231718);
    localcv.b(2131232483);
    localcv.a(paramContext.getString(2131231270), null);
    localcv.c(false);
    localcv.c();
  }
  
  public static void b(s params)
  {
    if (params == null) {
      return;
    }
    if (d)
    {
      if (e) {
        try
        {
          synchronized (i)
          {
            i.add(params);
            return;
          }
        }
        catch (Exception localException1)
        {
          for (;;)
          {
            a(params);
          }
        }
      }
      try
      {
        synchronized (h)
        {
          h.add(params);
          return;
        }
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          a(params);
        }
      }
    }
    a(params);
  }
  
  private static void b(Object paramObject)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    r localr = (r)paramObject;
    LocalSocket localLocalSocket = p();
    if (localLocalSocket == null)
    {
      r.a(localr, -1, -1, -1);
      return;
    }
    try
    {
      localOutputStream = localLocalSocket.getOutputStream();
      paramObject = localObject2;
      try
      {
        localObject1 = localLocalSocket.getInputStream();
        paramObject = localObject1;
        a(localOutputStream, 202);
        paramObject = localObject1;
        a(localOutputStream, r.a(localr));
        paramObject = localObject1;
        if (c((InputStream)localObject1) == 0) {
          break label122;
        }
        paramObject = localObject1;
        r.a(localr, -1, -1, -1);
        return;
      }
      catch (Exception localException)
      {
        localObject1 = paramObject;
        paramObject = localException;
      }
    }
    catch (Exception paramObject)
    {
      for (;;)
      {
        OutputStream localOutputStream = null;
      }
    }
    ((Exception)paramObject).printStackTrace();
    if (localObject1 != null) {}
    try
    {
      ((InputStream)localObject1).close();
      if (localOutputStream != null) {
        localOutputStream.close();
      }
      localLocalSocket.close();
    }
    catch (Exception paramObject)
    {
      for (;;) {}
    }
    r.a(localr, -1, -1, -1);
    return;
    label122:
    paramObject = localObject1;
    r.a(localr, c((InputStream)localObject1), c((InputStream)localObject1), c((InputStream)localObject1));
  }
  
  public static boolean b(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramString.charAt(0) == '$')
    {
      bool1 = bool2;
      if (paramString.length() == "$-----ESTOOL-END-----$".length())
      {
        bool1 = bool2;
        if (paramString.equals("$-----ESTOOL-END-----$")) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  /* Error */
  private static boolean b(String paramString1, String paramString2, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 4
    //   9: invokestatic 408	com/estrongs/fs/impl/local/m:p	()Landroid/net/LocalSocket;
    //   12: astore 8
    //   14: aload 8
    //   16: ifnonnull +5 -> 21
    //   19: iconst_0
    //   20: ireturn
    //   21: aload 8
    //   23: invokevirtual 411	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   26: astore 7
    //   28: aload 7
    //   30: astore 4
    //   32: aload 6
    //   34: astore 5
    //   36: aload 8
    //   38: invokevirtual 412	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   41: astore 6
    //   43: aload 6
    //   45: astore 5
    //   47: aload 6
    //   49: bipush 6
    //   51: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   54: aload 6
    //   56: astore 5
    //   58: aload 6
    //   60: aload_0
    //   61: invokestatic 414	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   64: aload 6
    //   66: astore 5
    //   68: aload 6
    //   70: aload_1
    //   71: invokestatic 414	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   74: iload_2
    //   75: ifeq +56 -> 131
    //   78: iconst_1
    //   79: istore_3
    //   80: aload 6
    //   82: astore 5
    //   84: aload 6
    //   86: iload_3
    //   87: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   90: aload 6
    //   92: astore 5
    //   94: aload 4
    //   96: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   99: istore_3
    //   100: iload_3
    //   101: ifne +35 -> 136
    //   104: aload 4
    //   106: ifnull +8 -> 114
    //   109: aload 4
    //   111: invokevirtual 430	java/io/InputStream:close	()V
    //   114: aload 6
    //   116: ifnull +8 -> 124
    //   119: aload 6
    //   121: invokevirtual 431	java/io/OutputStream:close	()V
    //   124: aload 8
    //   126: invokevirtual 432	android/net/LocalSocket:close	()V
    //   129: iconst_1
    //   130: ireturn
    //   131: iconst_0
    //   132: istore_3
    //   133: goto -53 -> 80
    //   136: aload 6
    //   138: astore 5
    //   140: ldc_w 649
    //   143: new 121	java/lang/StringBuilder
    //   146: dup
    //   147: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   150: ldc_w 651
    //   153: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: iload_3
    //   157: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   160: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   163: invokestatic 113	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   166: aload 4
    //   168: ifnull +8 -> 176
    //   171: aload 4
    //   173: invokevirtual 430	java/io/InputStream:close	()V
    //   176: aload 6
    //   178: ifnull +8 -> 186
    //   181: aload 6
    //   183: invokevirtual 431	java/io/OutputStream:close	()V
    //   186: aload 8
    //   188: invokevirtual 432	android/net/LocalSocket:close	()V
    //   191: iconst_0
    //   192: ireturn
    //   193: astore_0
    //   194: iconst_0
    //   195: ireturn
    //   196: astore_0
    //   197: aconst_null
    //   198: astore_0
    //   199: aload 4
    //   201: astore_1
    //   202: aload_1
    //   203: ifnull +7 -> 210
    //   206: aload_1
    //   207: invokevirtual 430	java/io/InputStream:close	()V
    //   210: aload_0
    //   211: ifnull +7 -> 218
    //   214: aload_0
    //   215: invokevirtual 431	java/io/OutputStream:close	()V
    //   218: aload 8
    //   220: invokevirtual 432	android/net/LocalSocket:close	()V
    //   223: iconst_0
    //   224: ireturn
    //   225: astore_0
    //   226: iconst_0
    //   227: ireturn
    //   228: astore_0
    //   229: aconst_null
    //   230: astore 4
    //   232: aload 4
    //   234: ifnull +8 -> 242
    //   237: aload 4
    //   239: invokevirtual 430	java/io/InputStream:close	()V
    //   242: aload 5
    //   244: ifnull +8 -> 252
    //   247: aload 5
    //   249: invokevirtual 431	java/io/OutputStream:close	()V
    //   252: aload 8
    //   254: invokevirtual 432	android/net/LocalSocket:close	()V
    //   257: aload_0
    //   258: athrow
    //   259: astore_0
    //   260: iconst_0
    //   261: ireturn
    //   262: astore_0
    //   263: goto -31 -> 232
    //   266: astore_0
    //   267: aconst_null
    //   268: astore_0
    //   269: aload 4
    //   271: astore_1
    //   272: goto -70 -> 202
    //   275: astore_0
    //   276: aload 6
    //   278: astore_0
    //   279: aload 4
    //   281: astore_1
    //   282: goto -80 -> 202
    //   285: astore_0
    //   286: iconst_0
    //   287: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	288	0	paramString1	String
    //   0	288	1	paramString2	String
    //   0	288	2	paramBoolean	boolean
    //   79	78	3	n	int
    //   7	273	4	localObject1	Object
    //   1	247	5	localObject2	Object
    //   4	273	6	localOutputStream	OutputStream
    //   26	3	7	localInputStream	InputStream
    //   12	241	8	localLocalSocket	LocalSocket
    // Exception table:
    //   from	to	target	type
    //   171	176	193	java/io/IOException
    //   181	186	193	java/io/IOException
    //   186	191	193	java/io/IOException
    //   21	28	196	java/io/IOException
    //   206	210	225	java/io/IOException
    //   214	218	225	java/io/IOException
    //   218	223	225	java/io/IOException
    //   21	28	228	finally
    //   237	242	259	java/io/IOException
    //   247	252	259	java/io/IOException
    //   252	257	259	java/io/IOException
    //   36	43	262	finally
    //   47	54	262	finally
    //   58	64	262	finally
    //   68	74	262	finally
    //   84	90	262	finally
    //   94	100	262	finally
    //   140	166	262	finally
    //   36	43	266	java/io/IOException
    //   47	54	275	java/io/IOException
    //   58	64	275	java/io/IOException
    //   68	74	275	java/io/IOException
    //   84	90	275	java/io/IOException
    //   94	100	275	java/io/IOException
    //   140	166	275	java/io/IOException
    //   109	114	285	java/io/IOException
    //   119	124	285	java/io/IOException
    //   124	129	285	java/io/IOException
  }
  
  /* Error */
  public static boolean b(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 5
    //   6: aconst_null
    //   7: astore 4
    //   9: iconst_1
    //   10: istore_3
    //   11: getstatic 63	com/estrongs/fs/impl/local/m:c	Ljava/lang/Object;
    //   14: astore 8
    //   16: aload 8
    //   18: monitorenter
    //   19: aload_0
    //   20: ifnonnull +8 -> 28
    //   23: aload 8
    //   25: monitorexit
    //   26: iconst_0
    //   27: ireturn
    //   28: aload_0
    //   29: iconst_0
    //   30: invokestatic 573	com/estrongs/android/util/ap:b	(Ljava/lang/String;Z)Ljava/lang/String;
    //   33: astore 10
    //   35: aload 10
    //   37: ifnonnull +14 -> 51
    //   40: aload 8
    //   42: monitorexit
    //   43: iconst_0
    //   44: ireturn
    //   45: astore_0
    //   46: aload 8
    //   48: monitorexit
    //   49: aload_0
    //   50: athrow
    //   51: invokestatic 408	com/estrongs/fs/impl/local/m:p	()Landroid/net/LocalSocket;
    //   54: astore 9
    //   56: aload 9
    //   58: ifnonnull +8 -> 66
    //   61: aload 8
    //   63: monitorexit
    //   64: iconst_0
    //   65: ireturn
    //   66: aload 9
    //   68: invokevirtual 411	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   71: astore 7
    //   73: aload 7
    //   75: astore 4
    //   77: aload 5
    //   79: astore 6
    //   81: aload 9
    //   83: invokevirtual 412	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   86: astore 5
    //   88: aload 5
    //   90: astore 6
    //   92: aload 5
    //   94: bipush 16
    //   96: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   99: aload 5
    //   101: astore 6
    //   103: aload 5
    //   105: aload 10
    //   107: invokestatic 414	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   110: iload_1
    //   111: ifeq +171 -> 282
    //   114: iconst_1
    //   115: istore_2
    //   116: aload 5
    //   118: astore 6
    //   120: aload 5
    //   122: iload_2
    //   123: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   126: aload 5
    //   128: astore 6
    //   130: aload 4
    //   132: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   135: istore_2
    //   136: aload 5
    //   138: astore 6
    //   140: new 121	java/lang/StringBuilder
    //   143: dup
    //   144: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   147: ldc_w 656
    //   150: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: iload_2
    //   154: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   157: ldc_w 658
    //   160: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: invokestatic 463	com/estrongs/android/pop/ac:a	()I
    //   166: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   169: ldc_w 660
    //   172: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: bipush 14
    //   177: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   180: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   183: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   186: iload_2
    //   187: ifeq +346 -> 533
    //   190: aload 5
    //   192: astore 6
    //   194: invokestatic 463	com/estrongs/android/pop/ac:a	()I
    //   197: bipush 14
    //   199: if_icmplt +334 -> 533
    //   202: aload 5
    //   204: astore 6
    //   206: new 121	java/lang/StringBuilder
    //   209: dup
    //   210: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   213: ldc_w 662
    //   216: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: aload_0
    //   220: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: astore 7
    //   228: aload 5
    //   230: astore 6
    //   232: invokestatic 664	com/estrongs/android/util/bk:l	()Z
    //   235: ifeq +52 -> 287
    //   238: aload 5
    //   240: astore 6
    //   242: iconst_1
    //   243: iconst_1
    //   244: invokestatic 176	com/estrongs/fs/impl/local/m:a	(ZZ)Lcom/estrongs/fs/impl/local/s;
    //   247: astore_0
    //   248: aload_0
    //   249: ifnonnull +56 -> 305
    //   252: aload 4
    //   254: ifnull +8 -> 262
    //   257: aload 4
    //   259: invokevirtual 430	java/io/InputStream:close	()V
    //   262: aload 5
    //   264: ifnull +8 -> 272
    //   267: aload 5
    //   269: invokevirtual 431	java/io/OutputStream:close	()V
    //   272: aload 9
    //   274: invokevirtual 432	android/net/LocalSocket:close	()V
    //   277: aload 8
    //   279: monitorexit
    //   280: iconst_0
    //   281: ireturn
    //   282: iconst_0
    //   283: istore_2
    //   284: goto -168 -> 116
    //   287: aload 5
    //   289: astore 6
    //   291: iconst_1
    //   292: invokestatic 70	com/estrongs/fs/impl/local/m:a	(Z)Lcom/estrongs/fs/impl/local/s;
    //   295: astore_0
    //   296: goto -48 -> 248
    //   299: astore_0
    //   300: aload 8
    //   302: monitorexit
    //   303: iconst_0
    //   304: ireturn
    //   305: aload 5
    //   307: astore 6
    //   309: new 72	com/estrongs/fs/impl/local/p
    //   312: dup
    //   313: invokespecial 73	com/estrongs/fs/impl/local/p:<init>	()V
    //   316: astore 10
    //   318: aload 5
    //   320: astore 6
    //   322: aload 10
    //   324: aload_0
    //   325: putfield 75	com/estrongs/fs/impl/local/p:a	Ljava/lang/Object;
    //   328: aload 5
    //   330: astore 6
    //   332: aload 10
    //   334: aload 7
    //   336: putfield 79	com/estrongs/fs/impl/local/p:b	Ljava/lang/Object;
    //   339: aload 5
    //   341: astore 6
    //   343: aload 10
    //   345: bipush 16
    //   347: invokestatic 85	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   350: putfield 86	com/estrongs/fs/impl/local/p:c	Ljava/lang/Object;
    //   353: aload 5
    //   355: astore 6
    //   357: aload 10
    //   359: invokevirtual 88	com/estrongs/fs/impl/local/p:b	()V
    //   362: aload 5
    //   364: astore 6
    //   366: new 121	java/lang/StringBuilder
    //   369: dup
    //   370: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   373: ldc_w 666
    //   376: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   379: iload_2
    //   380: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   383: ldc_w 658
    //   386: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   389: invokestatic 463	com/estrongs/android/pop/ac:a	()I
    //   392: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   395: ldc_w 660
    //   398: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   401: bipush 14
    //   403: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   406: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   409: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   412: aload 5
    //   414: astore 6
    //   416: aload 10
    //   418: getfield 548	com/estrongs/fs/impl/local/p:e	Ljava/lang/Object;
    //   421: checkcast 93	java/lang/Boolean
    //   424: invokevirtual 97	java/lang/Boolean:booleanValue	()Z
    //   427: ifeq +57 -> 484
    //   430: aload 5
    //   432: astore 6
    //   434: aload_0
    //   435: invokestatic 100	com/estrongs/fs/impl/local/m:b	(Lcom/estrongs/fs/impl/local/s;)V
    //   438: aload 5
    //   440: astore 6
    //   442: aload 10
    //   444: invokevirtual 91	com/estrongs/fs/impl/local/p:c	()Ljava/lang/Object;
    //   447: checkcast 93	java/lang/Boolean
    //   450: invokevirtual 97	java/lang/Boolean:booleanValue	()Z
    //   453: istore_1
    //   454: aload 4
    //   456: ifnull +8 -> 464
    //   459: aload 4
    //   461: invokevirtual 430	java/io/InputStream:close	()V
    //   464: aload 5
    //   466: ifnull +8 -> 474
    //   469: aload 5
    //   471: invokevirtual 431	java/io/OutputStream:close	()V
    //   474: aload 9
    //   476: invokevirtual 432	android/net/LocalSocket:close	()V
    //   479: aload 8
    //   481: monitorexit
    //   482: iload_1
    //   483: ireturn
    //   484: aload 5
    //   486: astore 6
    //   488: aload_0
    //   489: invokestatic 115	com/estrongs/fs/impl/local/m:a	(Lcom/estrongs/fs/impl/local/s;)V
    //   492: goto -54 -> 438
    //   495: astore_0
    //   496: aload 5
    //   498: astore_0
    //   499: aload 4
    //   501: ifnull +8 -> 509
    //   504: aload 4
    //   506: invokevirtual 430	java/io/InputStream:close	()V
    //   509: aload_0
    //   510: ifnull +7 -> 517
    //   513: aload_0
    //   514: invokevirtual 431	java/io/OutputStream:close	()V
    //   517: aload 9
    //   519: invokevirtual 432	android/net/LocalSocket:close	()V
    //   522: aload 8
    //   524: monitorexit
    //   525: iconst_0
    //   526: ireturn
    //   527: astore_0
    //   528: aload 8
    //   530: monitorexit
    //   531: iconst_0
    //   532: ireturn
    //   533: iload_2
    //   534: ifne +100 -> 634
    //   537: iload_3
    //   538: istore_1
    //   539: aload 4
    //   541: ifnull +8 -> 549
    //   544: aload 4
    //   546: invokevirtual 430	java/io/InputStream:close	()V
    //   549: aload 5
    //   551: ifnull +8 -> 559
    //   554: aload 5
    //   556: invokevirtual 431	java/io/OutputStream:close	()V
    //   559: aload 9
    //   561: invokevirtual 432	android/net/LocalSocket:close	()V
    //   564: aload 8
    //   566: monitorexit
    //   567: iload_1
    //   568: ireturn
    //   569: astore_0
    //   570: aload 8
    //   572: monitorexit
    //   573: iconst_0
    //   574: ireturn
    //   575: astore_0
    //   576: aload 8
    //   578: monitorexit
    //   579: iconst_0
    //   580: ireturn
    //   581: astore_0
    //   582: aconst_null
    //   583: astore 4
    //   585: aload 4
    //   587: ifnull +8 -> 595
    //   590: aload 4
    //   592: invokevirtual 430	java/io/InputStream:close	()V
    //   595: aload 6
    //   597: ifnull +8 -> 605
    //   600: aload 6
    //   602: invokevirtual 431	java/io/OutputStream:close	()V
    //   605: aload 9
    //   607: invokevirtual 432	android/net/LocalSocket:close	()V
    //   610: aload_0
    //   611: athrow
    //   612: astore_0
    //   613: aload 8
    //   615: monitorexit
    //   616: iconst_0
    //   617: ireturn
    //   618: astore_0
    //   619: goto -34 -> 585
    //   622: astore_0
    //   623: aconst_null
    //   624: astore_0
    //   625: goto -126 -> 499
    //   628: astore_0
    //   629: aconst_null
    //   630: astore_0
    //   631: goto -132 -> 499
    //   634: iconst_0
    //   635: istore_1
    //   636: goto -97 -> 539
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	639	0	paramString	String
    //   0	639	1	paramBoolean	boolean
    //   115	419	2	n	int
    //   10	528	3	bool	boolean
    //   7	584	4	localObject1	Object
    //   4	551	5	localOutputStream	OutputStream
    //   1	600	6	localObject2	Object
    //   71	264	7	localObject3	Object
    //   14	600	8	localObject4	Object
    //   54	552	9	localLocalSocket	LocalSocket
    //   33	410	10	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   23	26	45	finally
    //   28	35	45	finally
    //   40	43	45	finally
    //   46	49	45	finally
    //   51	56	45	finally
    //   61	64	45	finally
    //   257	262	45	finally
    //   267	272	45	finally
    //   272	277	45	finally
    //   277	280	45	finally
    //   300	303	45	finally
    //   459	464	45	finally
    //   469	474	45	finally
    //   474	479	45	finally
    //   479	482	45	finally
    //   504	509	45	finally
    //   513	517	45	finally
    //   517	522	45	finally
    //   522	525	45	finally
    //   528	531	45	finally
    //   544	549	45	finally
    //   554	559	45	finally
    //   559	564	45	finally
    //   564	567	45	finally
    //   570	573	45	finally
    //   576	579	45	finally
    //   590	595	45	finally
    //   600	605	45	finally
    //   605	610	45	finally
    //   610	612	45	finally
    //   613	616	45	finally
    //   257	262	299	java/io/IOException
    //   267	272	299	java/io/IOException
    //   272	277	299	java/io/IOException
    //   92	99	495	java/io/IOException
    //   103	110	495	java/io/IOException
    //   120	126	495	java/io/IOException
    //   130	136	495	java/io/IOException
    //   140	186	495	java/io/IOException
    //   194	202	495	java/io/IOException
    //   206	228	495	java/io/IOException
    //   232	238	495	java/io/IOException
    //   242	248	495	java/io/IOException
    //   291	296	495	java/io/IOException
    //   309	318	495	java/io/IOException
    //   322	328	495	java/io/IOException
    //   332	339	495	java/io/IOException
    //   343	353	495	java/io/IOException
    //   357	362	495	java/io/IOException
    //   366	412	495	java/io/IOException
    //   416	430	495	java/io/IOException
    //   434	438	495	java/io/IOException
    //   442	454	495	java/io/IOException
    //   488	492	495	java/io/IOException
    //   459	464	527	java/io/IOException
    //   469	474	527	java/io/IOException
    //   474	479	527	java/io/IOException
    //   544	549	569	java/io/IOException
    //   554	559	569	java/io/IOException
    //   559	564	569	java/io/IOException
    //   504	509	575	java/io/IOException
    //   513	517	575	java/io/IOException
    //   517	522	575	java/io/IOException
    //   66	73	581	finally
    //   590	595	612	java/io/IOException
    //   600	605	612	java/io/IOException
    //   605	610	612	java/io/IOException
    //   81	88	618	finally
    //   92	99	618	finally
    //   103	110	618	finally
    //   120	126	618	finally
    //   130	136	618	finally
    //   140	186	618	finally
    //   194	202	618	finally
    //   206	228	618	finally
    //   232	238	618	finally
    //   242	248	618	finally
    //   291	296	618	finally
    //   309	318	618	finally
    //   322	328	618	finally
    //   332	339	618	finally
    //   343	353	618	finally
    //   357	362	618	finally
    //   366	412	618	finally
    //   416	430	618	finally
    //   434	438	618	finally
    //   442	454	618	finally
    //   488	492	618	finally
    //   66	73	622	java/io/IOException
    //   81	88	628	java/io/IOException
  }
  
  public static boolean b(boolean paramBoolean)
  {
    String[] arrayOfString = new String[6];
    arrayOfString[0] = "/system/xbin/su";
    arrayOfString[1] = "/system/sbin/su";
    arrayOfString[2] = "/system/bin/su";
    arrayOfString[3] = "/vendor/bin/su";
    arrayOfString[4] = "/sbin/su";
    arrayOfString[5] = "/su/bin";
    int n = 0;
    if (n < arrayOfString.length) {}
    for (;;)
    {
      int i1;
      try
      {
        if (new File(arrayOfString[n]).exists()) {
          if (paramBoolean)
          {
            if (ac.a() >= 18)
            {
              i1 = 0;
              if (i1 < arrayOfString.length)
              {
                if (!new File(new String[] { "/system/xbin/daemonsu", "/system/sbin/daemonsu", "/system/bin/daemonsu", "/vendor/bin/daemonsu", "/sbin/daemonsu", "/su/bin/daemonsu" }[i1]).exists()) {
                  break label177;
                }
                return true;
              }
            }
            else
            {
              boolean bool = c.c(arrayOfString[n]);
              return bool;
            }
          }
          else {
            return true;
          }
        }
      }
      catch (Exception localException)
      {
        n += 1;
      }
      break;
      return false;
      label177:
      i1 += 1;
    }
  }
  
  public static boolean b(String[] paramArrayOfString)
  {
    s locals = a(true);
    if (locals == null) {
      return false;
    }
    if (!d) {}
    for (int n = 1;; n = 0)
    {
      Object localObject = "";
      int i2 = 0;
      for (;;)
      {
        int i1 = n;
        try
        {
          if (i2 >= paramArrayOfString.length) {
            break label240;
          }
          i1 = n;
          String str;
          if (paramArrayOfString[(i2 + 2)].equals("rw"))
          {
            i1 = n;
            str = (String)localObject + "mount -o remount,rw " + paramArrayOfString[(i2 + 1)] + " " + paramArrayOfString[i2] + ";";
            i1 = n;
            localObject = str;
            if (ac.a() >= 21)
            {
              i1 = n;
              b(paramArrayOfString[(i2 + 1)], paramArrayOfString[i2], true);
              localObject = str;
            }
          }
          else
          {
            i1 = n;
            str = (String)localObject + "mount -o remount,ro " + paramArrayOfString[(i2 + 1)] + " " + paramArrayOfString[i2] + ";";
            i1 = n;
            localObject = str;
            if (ac.a() >= 21)
            {
              i1 = n;
              b(paramArrayOfString[(i2 + 1)], paramArrayOfString[i2], false);
              localObject = str;
            }
          }
        }
        finally
        {
          if (i1 == 0) {
            break label365;
          }
        }
        a(locals);
        for (;;)
        {
          throw paramArrayOfString;
          label240:
          i1 = n;
          i2 = ((String)localObject).length();
          if (i2 == 0)
          {
            if (n != 0) {
              a(locals);
            }
            for (;;)
            {
              return true;
              b(locals);
            }
          }
          i1 = n;
          paramArrayOfString = new p();
          i1 = n;
          a = locals;
          i1 = n;
          b = localObject;
          i1 = n;
          c = Integer.valueOf(6);
          i1 = n;
          paramArrayOfString.b();
          i1 = n;
          if (!((Boolean)e).booleanValue()) {
            n = 1;
          }
          i1 = n;
          boolean bool = ((Boolean)paramArrayOfString.c()).booleanValue();
          if (n != 0)
          {
            a(locals);
            return bool;
          }
          b(locals);
          return bool;
          label365:
          b(locals);
        }
        i2 += 3;
      }
    }
  }
  
  public static byte[] b(InputStream paramInputStream)
  {
    byte[] arrayOfByte = new byte[c(paramInputStream)];
    if (paramInputStream.read(arrayOfByte) == -1) {
      throw new IOException();
    }
    return arrayOfByte;
  }
  
  public static String[] b(String paramString1, String paramString2)
  {
    String[] arrayOfString1 = d(true);
    int i2 = arrayOfString1.length / 3;
    int n = 1;
    while (n < i2)
    {
      String[] arrayOfString2 = new String[3];
      arrayOfString2[0] = arrayOfString1[(n * 3)];
      arrayOfString2[1] = arrayOfString1[(n * 3 + 1)];
      arrayOfString2[2] = arrayOfString1[(n * 3 + 2)];
      int i1 = n;
      while ((i1 > 0) && (arrayOfString1[((i1 - 1) * 3)].compareTo(arrayOfString2[0]) < 0))
      {
        arrayOfString1[(i1 * 3)] = arrayOfString1[((i1 - 1) * 3)];
        arrayOfString1[(i1 * 3 + 1)] = arrayOfString1[((i1 - 1) * 3 + 1)];
        arrayOfString1[(i1 * 3 + 2)] = arrayOfString1[((i1 - 1) * 3 + 2)];
        i1 -= 1;
      }
      arrayOfString1[(i1 * 3)] = arrayOfString2[0];
      arrayOfString1[(i1 * 3 + 1)] = arrayOfString2[1];
      arrayOfString1[(i1 * 3 + 2)] = arrayOfString2[2];
      n += 1;
    }
    n = 0;
    while (n < arrayOfString1.length / 3)
    {
      if (((ap.i(arrayOfString1[(n * 3)], paramString1)) && (!arrayOfString1[(n * 3)].equals("/"))) || ((paramString1.equals("/")) && (arrayOfString1[(n * 3)].equals("/"))))
      {
        paramString1 = new String[3];
        paramString1[0] = arrayOfString1[(n * 3)];
        paramString1[1] = arrayOfString1[(n * 3 + 1)];
        paramString1[2] = paramString2;
        if (!b(paramString1)) {
          break;
        }
        paramString1[2] = arrayOfString1[(n * 3 + 2)];
        return paramString1;
      }
      n += 1;
    }
    return null;
  }
  
  public static int c()
  {
    int i1 = 2131099650;
    int i2 = b();
    int n;
    if (ac.a() >= 20)
    {
      n = 1;
      if (i2 != 1) {
        break label38;
      }
      if (n != 0) {
        i1 = 2131099651;
      }
    }
    label38:
    do
    {
      return i1;
      n = 0;
      break;
      if (i2 == 2)
      {
        if (n != 0) {
          return 2131099653;
        }
        return 2131099652;
      }
    } while (i2 != 3);
    return 2131099650;
  }
  
  public static int c(InputStream paramInputStream)
  {
    byte[] arrayOfByte = new byte[4];
    if (paramInputStream.read(arrayOfByte) == -1) {
      throw new IOException();
    }
    int n = arrayOfByte[0];
    int i1 = arrayOfByte[1];
    int i2 = arrayOfByte[2];
    return arrayOfByte[3] & 0xFF | (n & 0xFF) << 24 | (i1 & 0xFF) << 16 | (i2 & 0xFF) << 8;
  }
  
  private static void c(Object paramObject)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    r localr = (r)paramObject;
    LocalSocket localLocalSocket = p();
    if (localLocalSocket == null)
    {
      r.a(localr, false);
      return;
    }
    try
    {
      localOutputStream = localLocalSocket.getOutputStream();
      paramObject = localObject2;
      try
      {
        localObject1 = localLocalSocket.getInputStream();
        paramObject = localObject1;
        a(localOutputStream, 203);
        paramObject = localObject1;
        a(localOutputStream, r.a(localr));
        paramObject = localObject1;
        a(localOutputStream, a);
        paramObject = localObject1;
        a(localOutputStream, b);
        paramObject = localObject1;
        a(localOutputStream, c);
        paramObject = localObject1;
        if (c((InputStream)localObject1) == 0) {
          break label149;
        }
        paramObject = localObject1;
        r.a(localr, false);
        return;
      }
      catch (Exception localException)
      {
        localObject1 = paramObject;
        paramObject = localException;
      }
    }
    catch (Exception paramObject)
    {
      for (;;)
      {
        OutputStream localOutputStream = null;
      }
    }
    ((Exception)paramObject).printStackTrace();
    if (localObject1 != null) {}
    try
    {
      ((InputStream)localObject1).close();
      if (localOutputStream != null) {
        localOutputStream.close();
      }
      localLocalSocket.close();
    }
    catch (Exception paramObject)
    {
      for (;;) {}
    }
    r.a(localr, false);
    return;
    label149:
    paramObject = localObject1;
    r.a(localr, true);
  }
  
  /* Error */
  private static boolean c(s params)
  {
    // Byte code:
    //   0: new 121	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   7: ldc_w 546
    //   10: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   13: sipush 23486
    //   16: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   19: ldc_w 546
    //   22: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: invokestatic 736	com/estrongs/fs/impl/local/m:o	()Ljava/lang/String;
    //   28: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: astore_1
    //   35: aload_0
    //   36: getfield 245	com/estrongs/fs/impl/local/s:b	Ljava/io/BufferedWriter;
    //   39: new 121	java/lang/StringBuilder
    //   42: dup
    //   43: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   46: getstatic 41	com/estrongs/fs/impl/local/m:e	Ljava/lang/String;
    //   49: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: aload_1
    //   53: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: ldc_w 351
    //   59: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: invokevirtual 250	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   68: aload_0
    //   69: getfield 245	com/estrongs/fs/impl/local/s:b	Ljava/io/BufferedWriter;
    //   72: invokevirtual 253	java/io/BufferedWriter:flush	()V
    //   75: ldc2_w 737
    //   78: invokestatic 265	java/lang/Thread:sleep	(J)V
    //   81: iconst_1
    //   82: ireturn
    //   83: astore_0
    //   84: ldc_w 740
    //   87: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   90: aload_0
    //   91: invokevirtual 297	java/lang/Exception:toString	()Ljava/lang/String;
    //   94: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   97: iconst_0
    //   98: ireturn
    //   99: astore_0
    //   100: goto -19 -> 81
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	params	s
    //   34	19	1	str	String
    // Exception table:
    //   from	to	target	type
    //   35	75	83	java/lang/Exception
    //   75	81	99	java/lang/Exception
  }
  
  public static boolean c(String paramString)
  {
    return a(paramString, false, false);
  }
  
  /* Error */
  public static boolean c(boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 4
    //   9: aload 4
    //   11: astore_2
    //   12: aload 5
    //   14: astore_3
    //   15: aload 6
    //   17: astore_1
    //   18: invokestatic 408	com/estrongs/fs/impl/local/m:p	()Landroid/net/LocalSocket;
    //   21: astore 7
    //   23: aload 7
    //   25: ifnull +49 -> 74
    //   28: aload 4
    //   30: astore_2
    //   31: aload 6
    //   33: astore_1
    //   34: aload 7
    //   36: invokevirtual 432	android/net/LocalSocket:close	()V
    //   39: aload 4
    //   41: astore_2
    //   42: aload 5
    //   44: astore_3
    //   45: aload 6
    //   47: astore_1
    //   48: iconst_1
    //   49: putstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   52: iconst_0
    //   53: ifeq +15 -> 68
    //   56: getstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   59: ifeq +9 -> 68
    //   62: aconst_null
    //   63: putstatic 54	com/estrongs/fs/impl/local/m:j	Lcom/estrongs/fs/impl/local/s;
    //   66: iconst_1
    //   67: ireturn
    //   68: aconst_null
    //   69: invokestatic 115	com/estrongs/fs/impl/local/m:a	(Lcom/estrongs/fs/impl/local/s;)V
    //   72: iconst_1
    //   73: ireturn
    //   74: aload 4
    //   76: astore_2
    //   77: aload 5
    //   79: astore_3
    //   80: aload 6
    //   82: astore_1
    //   83: invokestatic 744	com/estrongs/fs/impl/local/m:g	()Z
    //   86: ifne +54 -> 140
    //   89: aload 4
    //   91: astore_2
    //   92: aload 5
    //   94: astore_3
    //   95: aload 6
    //   97: astore_1
    //   98: ldc_w 746
    //   101: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   104: aload 4
    //   106: astore_2
    //   107: aload 5
    //   109: astore_3
    //   110: aload 6
    //   112: astore_1
    //   113: iconst_0
    //   114: putstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   117: iconst_0
    //   118: ifeq +15 -> 133
    //   121: getstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   124: ifeq +9 -> 133
    //   127: aconst_null
    //   128: putstatic 54	com/estrongs/fs/impl/local/m:j	Lcom/estrongs/fs/impl/local/s;
    //   131: iconst_0
    //   132: ireturn
    //   133: aconst_null
    //   134: invokestatic 115	com/estrongs/fs/impl/local/m:a	(Lcom/estrongs/fs/impl/local/s;)V
    //   137: goto -6 -> 131
    //   140: aload 4
    //   142: astore_2
    //   143: aload 5
    //   145: astore_3
    //   146: aload 6
    //   148: astore_1
    //   149: iconst_1
    //   150: invokestatic 70	com/estrongs/fs/impl/local/m:a	(Z)Lcom/estrongs/fs/impl/local/s;
    //   153: astore 4
    //   155: aload 4
    //   157: ifnull +561 -> 718
    //   160: aload 4
    //   162: astore_2
    //   163: aload 4
    //   165: astore_3
    //   166: aload 4
    //   168: astore_1
    //   169: iconst_1
    //   170: putstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   173: aload 4
    //   175: astore_2
    //   176: aload 4
    //   178: astore_3
    //   179: aload 4
    //   181: astore_1
    //   182: new 435	java/io/File
    //   185: dup
    //   186: getstatic 41	com/estrongs/fs/impl/local/m:e	Ljava/lang/String;
    //   189: invokespecial 437	java/io/File:<init>	(Ljava/lang/String;)V
    //   192: astore 5
    //   194: aload 4
    //   196: astore_2
    //   197: aload 4
    //   199: astore_3
    //   200: aload 4
    //   202: astore_1
    //   203: invokestatic 463	com/estrongs/android/pop/ac:a	()I
    //   206: bipush 9
    //   208: if_icmplt +127 -> 335
    //   211: aload 4
    //   213: astore_2
    //   214: aload 4
    //   216: astore_3
    //   217: aload 4
    //   219: astore_1
    //   220: new 465	com/estrongs/android/util/ao
    //   223: dup
    //   224: aload 5
    //   226: invokespecial 467	com/estrongs/android/util/ao:<init>	(Ljava/lang/Object;)V
    //   229: astore 5
    //   231: aload 4
    //   233: astore_2
    //   234: aload 4
    //   236: astore_3
    //   237: aload 4
    //   239: astore_1
    //   240: aload 5
    //   242: ldc_w 469
    //   245: iconst_2
    //   246: anewarray 471	java/lang/Class
    //   249: dup
    //   250: iconst_0
    //   251: getstatic 475	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   254: aastore
    //   255: dup
    //   256: iconst_1
    //   257: getstatic 475	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   260: aastore
    //   261: iconst_2
    //   262: anewarray 4	java/lang/Object
    //   265: dup
    //   266: iconst_0
    //   267: iconst_1
    //   268: invokestatic 478	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   271: aastore
    //   272: dup
    //   273: iconst_1
    //   274: iconst_0
    //   275: invokestatic 478	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   278: aastore
    //   279: invokevirtual 481	com/estrongs/android/util/ao:a	(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   282: pop
    //   283: aload 4
    //   285: astore_2
    //   286: aload 4
    //   288: astore_3
    //   289: aload 4
    //   291: astore_1
    //   292: aload 5
    //   294: ldc_w 483
    //   297: iconst_2
    //   298: anewarray 471	java/lang/Class
    //   301: dup
    //   302: iconst_0
    //   303: getstatic 475	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   306: aastore
    //   307: dup
    //   308: iconst_1
    //   309: getstatic 475	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   312: aastore
    //   313: iconst_2
    //   314: anewarray 4	java/lang/Object
    //   317: dup
    //   318: iconst_0
    //   319: iconst_1
    //   320: invokestatic 478	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   323: aastore
    //   324: dup
    //   325: iconst_1
    //   326: iconst_0
    //   327: invokestatic 478	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   330: aastore
    //   331: invokevirtual 481	com/estrongs/android/util/ao:a	(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   334: pop
    //   335: aload 4
    //   337: astore_2
    //   338: aload 4
    //   340: astore_3
    //   341: aload 4
    //   343: astore_1
    //   344: getstatic 41	com/estrongs/fs/impl/local/m:e	Ljava/lang/String;
    //   347: ldc_w 748
    //   350: aload 4
    //   352: invokestatic 750	com/estrongs/fs/impl/local/m:a	(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/impl/local/s;)Z
    //   355: ifeq +165 -> 520
    //   358: aload 4
    //   360: astore_2
    //   361: aload 4
    //   363: astore_3
    //   364: aload 4
    //   366: astore_1
    //   367: ldc_w 752
    //   370: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   373: aload 4
    //   375: astore_2
    //   376: aload 4
    //   378: astore_3
    //   379: aload 4
    //   381: astore_1
    //   382: aload 4
    //   384: invokestatic 754	com/estrongs/fs/impl/local/m:c	(Lcom/estrongs/fs/impl/local/s;)Z
    //   387: ifne +219 -> 606
    //   390: aload 4
    //   392: astore_2
    //   393: aload 4
    //   395: astore_3
    //   396: aload 4
    //   398: astore_1
    //   399: ldc_w 756
    //   402: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   405: aload 4
    //   407: astore_2
    //   408: aload 4
    //   410: astore_3
    //   411: aload 4
    //   413: astore_1
    //   414: iconst_0
    //   415: putstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   418: aload 4
    //   420: astore_2
    //   421: aload 4
    //   423: astore_3
    //   424: aload 4
    //   426: astore_1
    //   427: ldc_w 758
    //   430: new 121	java/lang/StringBuilder
    //   433: dup
    //   434: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   437: ldc_w 760
    //   440: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   443: getstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   446: invokevirtual 763	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   449: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   452: invokestatic 113	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   455: aload 4
    //   457: astore_2
    //   458: aload 4
    //   460: astore_3
    //   461: aload 4
    //   463: astore_1
    //   464: new 121	java/lang/StringBuilder
    //   467: dup
    //   468: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   471: ldc_w 760
    //   474: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   477: getstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   480: invokevirtual 763	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   483: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   486: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   489: aload 4
    //   491: astore_2
    //   492: aload 4
    //   494: astore_3
    //   495: aload 4
    //   497: astore_1
    //   498: getstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   501: istore_0
    //   502: aload 4
    //   504: ifnull +207 -> 711
    //   507: getstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   510: ifeq +201 -> 711
    //   513: aload 4
    //   515: putstatic 54	com/estrongs/fs/impl/local/m:j	Lcom/estrongs/fs/impl/local/s;
    //   518: iload_0
    //   519: ireturn
    //   520: aload 4
    //   522: astore_2
    //   523: aload 4
    //   525: astore_3
    //   526: aload 4
    //   528: astore_1
    //   529: ldc_w 765
    //   532: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   535: goto -162 -> 373
    //   538: astore_3
    //   539: aload_2
    //   540: astore_1
    //   541: aload_3
    //   542: invokevirtual 766	java/lang/SecurityException:printStackTrace	()V
    //   545: aload_2
    //   546: astore_1
    //   547: iconst_0
    //   548: putstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   551: aload_2
    //   552: astore_1
    //   553: ldc_w 768
    //   556: new 121	java/lang/StringBuilder
    //   559: dup
    //   560: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   563: ldc_w 770
    //   566: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   569: aload_3
    //   570: invokevirtual 773	java/lang/SecurityException:getMessage	()Ljava/lang/String;
    //   573: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   576: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   579: invokestatic 113	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   582: aload_2
    //   583: astore_1
    //   584: ldc_w 775
    //   587: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   590: aload_2
    //   591: ifnull +181 -> 772
    //   594: getstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   597: ifeq +175 -> 772
    //   600: aload_2
    //   601: putstatic 54	com/estrongs/fs/impl/local/m:j	Lcom/estrongs/fs/impl/local/s;
    //   604: iconst_0
    //   605: ireturn
    //   606: aload 4
    //   608: astore_2
    //   609: aload 4
    //   611: astore_3
    //   612: aload 4
    //   614: astore_1
    //   615: ldc_w 777
    //   618: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   621: aload 4
    //   623: astore_2
    //   624: aload 4
    //   626: astore_3
    //   627: aload 4
    //   629: astore_1
    //   630: invokestatic 408	com/estrongs/fs/impl/local/m:p	()Landroid/net/LocalSocket;
    //   633: astore 5
    //   635: aload 5
    //   637: ifnonnull +56 -> 693
    //   640: aload 4
    //   642: astore_2
    //   643: aload 4
    //   645: astore_3
    //   646: aload 4
    //   648: astore_1
    //   649: iconst_0
    //   650: putstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   653: goto -235 -> 418
    //   656: astore_2
    //   657: aload_3
    //   658: astore_1
    //   659: aload_2
    //   660: invokevirtual 294	java/lang/Exception:printStackTrace	()V
    //   663: aload_3
    //   664: astore_1
    //   665: iconst_0
    //   666: putstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   669: aload_3
    //   670: astore_1
    //   671: ldc_w 779
    //   674: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   677: aload_3
    //   678: ifnull +101 -> 779
    //   681: getstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   684: ifeq +95 -> 779
    //   687: aload_3
    //   688: putstatic 54	com/estrongs/fs/impl/local/m:j	Lcom/estrongs/fs/impl/local/s;
    //   691: iconst_0
    //   692: ireturn
    //   693: aload 4
    //   695: astore_2
    //   696: aload 4
    //   698: astore_1
    //   699: aload 5
    //   701: invokevirtual 432	android/net/LocalSocket:close	()V
    //   704: goto -286 -> 418
    //   707: astore_1
    //   708: goto -290 -> 418
    //   711: aload 4
    //   713: invokestatic 115	com/estrongs/fs/impl/local/m:a	(Lcom/estrongs/fs/impl/local/s;)V
    //   716: iload_0
    //   717: ireturn
    //   718: aload 4
    //   720: astore_2
    //   721: aload 4
    //   723: astore_3
    //   724: aload 4
    //   726: astore_1
    //   727: ldc_w 781
    //   730: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   733: aload 4
    //   735: astore_2
    //   736: aload 4
    //   738: astore_3
    //   739: aload 4
    //   741: astore_1
    //   742: iconst_0
    //   743: putstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   746: aload 4
    //   748: ifnull +16 -> 764
    //   751: getstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   754: ifeq +10 -> 764
    //   757: aload 4
    //   759: putstatic 54	com/estrongs/fs/impl/local/m:j	Lcom/estrongs/fs/impl/local/s;
    //   762: iconst_0
    //   763: ireturn
    //   764: aload 4
    //   766: invokestatic 115	com/estrongs/fs/impl/local/m:a	(Lcom/estrongs/fs/impl/local/s;)V
    //   769: goto -7 -> 762
    //   772: aload_2
    //   773: invokestatic 115	com/estrongs/fs/impl/local/m:a	(Lcom/estrongs/fs/impl/local/s;)V
    //   776: goto -172 -> 604
    //   779: aload_3
    //   780: invokestatic 115	com/estrongs/fs/impl/local/m:a	(Lcom/estrongs/fs/impl/local/s;)V
    //   783: goto -92 -> 691
    //   786: astore_2
    //   787: aload_1
    //   788: ifnull +15 -> 803
    //   791: getstatic 56	com/estrongs/fs/impl/local/m:k	Z
    //   794: ifeq +9 -> 803
    //   797: aload_1
    //   798: putstatic 54	com/estrongs/fs/impl/local/m:j	Lcom/estrongs/fs/impl/local/s;
    //   801: aload_2
    //   802: athrow
    //   803: aload_1
    //   804: invokestatic 115	com/estrongs/fs/impl/local/m:a	(Lcom/estrongs/fs/impl/local/s;)V
    //   807: goto -6 -> 801
    //   810: astore_1
    //   811: goto -772 -> 39
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	814	0	paramBoolean	boolean
    //   17	682	1	localObject1	Object
    //   707	1	1	localException1	Exception
    //   726	78	1	locals1	s
    //   810	1	1	localException2	Exception
    //   11	632	2	locals2	s
    //   656	4	2	localException3	Exception
    //   695	78	2	locals3	s
    //   786	16	2	localObject2	Object
    //   14	512	3	localObject3	Object
    //   538	32	3	localSecurityException	SecurityException
    //   611	169	3	locals4	s
    //   7	758	4	locals5	s
    //   1	699	5	localObject4	Object
    //   4	143	6	localObject5	Object
    //   21	14	7	localLocalSocket	LocalSocket
    // Exception table:
    //   from	to	target	type
    //   18	23	538	java/lang/SecurityException
    //   34	39	538	java/lang/SecurityException
    //   48	52	538	java/lang/SecurityException
    //   83	89	538	java/lang/SecurityException
    //   98	104	538	java/lang/SecurityException
    //   113	117	538	java/lang/SecurityException
    //   149	155	538	java/lang/SecurityException
    //   169	173	538	java/lang/SecurityException
    //   182	194	538	java/lang/SecurityException
    //   203	211	538	java/lang/SecurityException
    //   220	231	538	java/lang/SecurityException
    //   240	283	538	java/lang/SecurityException
    //   292	335	538	java/lang/SecurityException
    //   344	358	538	java/lang/SecurityException
    //   367	373	538	java/lang/SecurityException
    //   382	390	538	java/lang/SecurityException
    //   399	405	538	java/lang/SecurityException
    //   414	418	538	java/lang/SecurityException
    //   427	455	538	java/lang/SecurityException
    //   464	489	538	java/lang/SecurityException
    //   498	502	538	java/lang/SecurityException
    //   529	535	538	java/lang/SecurityException
    //   615	621	538	java/lang/SecurityException
    //   630	635	538	java/lang/SecurityException
    //   649	653	538	java/lang/SecurityException
    //   699	704	538	java/lang/SecurityException
    //   727	733	538	java/lang/SecurityException
    //   742	746	538	java/lang/SecurityException
    //   18	23	656	java/lang/Exception
    //   48	52	656	java/lang/Exception
    //   83	89	656	java/lang/Exception
    //   98	104	656	java/lang/Exception
    //   113	117	656	java/lang/Exception
    //   149	155	656	java/lang/Exception
    //   169	173	656	java/lang/Exception
    //   182	194	656	java/lang/Exception
    //   203	211	656	java/lang/Exception
    //   220	231	656	java/lang/Exception
    //   240	283	656	java/lang/Exception
    //   292	335	656	java/lang/Exception
    //   344	358	656	java/lang/Exception
    //   367	373	656	java/lang/Exception
    //   382	390	656	java/lang/Exception
    //   399	405	656	java/lang/Exception
    //   414	418	656	java/lang/Exception
    //   427	455	656	java/lang/Exception
    //   464	489	656	java/lang/Exception
    //   498	502	656	java/lang/Exception
    //   529	535	656	java/lang/Exception
    //   615	621	656	java/lang/Exception
    //   630	635	656	java/lang/Exception
    //   649	653	656	java/lang/Exception
    //   727	733	656	java/lang/Exception
    //   742	746	656	java/lang/Exception
    //   699	704	707	java/lang/Exception
    //   18	23	786	finally
    //   34	39	786	finally
    //   48	52	786	finally
    //   83	89	786	finally
    //   98	104	786	finally
    //   113	117	786	finally
    //   149	155	786	finally
    //   169	173	786	finally
    //   182	194	786	finally
    //   203	211	786	finally
    //   220	231	786	finally
    //   240	283	786	finally
    //   292	335	786	finally
    //   344	358	786	finally
    //   367	373	786	finally
    //   382	390	786	finally
    //   399	405	786	finally
    //   414	418	786	finally
    //   427	455	786	finally
    //   464	489	786	finally
    //   498	502	786	finally
    //   529	535	786	finally
    //   541	545	786	finally
    //   547	551	786	finally
    //   553	582	786	finally
    //   584	590	786	finally
    //   615	621	786	finally
    //   630	635	786	finally
    //   649	653	786	finally
    //   659	663	786	finally
    //   665	669	786	finally
    //   671	677	786	finally
    //   699	704	786	finally
    //   727	733	786	finally
    //   742	746	786	finally
    //   34	39	810	java/lang/Exception
  }
  
  private static long d(InputStream paramInputStream)
  {
    byte[] arrayOfByte = new byte[8];
    if (paramInputStream.read(arrayOfByte) == -1) {
      throw new IOException();
    }
    long l1 = arrayOfByte[0] & 0xFF;
    long l2 = arrayOfByte[1] & 0xFF;
    long l3 = arrayOfByte[2] & 0xFF;
    long l4 = arrayOfByte[3] & 0xFF;
    long l5 = arrayOfByte[4] & 0xFF;
    long l6 = arrayOfByte[5] & 0xFF;
    long l7 = arrayOfByte[6] & 0xFF;
    return arrayOfByte[7] & 0xFF | l1 << 56 | l2 << 48 | l3 << 40 | l4 << 32 | l5 << 24 | l6 << 16 | l7 << 8;
  }
  
  /* Error */
  public static com.estrongs.fs.c d(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aload_0
    //   7: invokestatic 786	com/estrongs/android/util/ap:bF	(Ljava/lang/String;)Ljava/lang/String;
    //   10: astore 11
    //   12: aload 11
    //   14: ifnonnull +5 -> 19
    //   17: aconst_null
    //   18: areturn
    //   19: invokestatic 408	com/estrongs/fs/impl/local/m:p	()Landroid/net/LocalSocket;
    //   22: astore 10
    //   24: aload 10
    //   26: ifnonnull +5 -> 31
    //   29: aconst_null
    //   30: areturn
    //   31: aload 10
    //   33: invokevirtual 411	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   36: astore 8
    //   38: aload 10
    //   40: invokevirtual 412	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   43: astore 9
    //   45: aload 9
    //   47: bipush 9
    //   49: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   52: aload 9
    //   54: aload 11
    //   56: invokestatic 414	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   59: aload 8
    //   61: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   64: istore_1
    //   65: iload_1
    //   66: ifeq +33 -> 99
    //   69: aload 8
    //   71: ifnull +8 -> 79
    //   74: aload 8
    //   76: invokevirtual 430	java/io/InputStream:close	()V
    //   79: aload 9
    //   81: ifnull +8 -> 89
    //   84: aload 9
    //   86: invokevirtual 431	java/io/OutputStream:close	()V
    //   89: aload 10
    //   91: invokevirtual 432	android/net/LocalSocket:close	()V
    //   94: aconst_null
    //   95: areturn
    //   96: astore_0
    //   97: aconst_null
    //   98: areturn
    //   99: aload 8
    //   101: invokestatic 416	com/estrongs/fs/impl/local/m:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   104: astore 12
    //   106: aload 8
    //   108: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   111: istore_1
    //   112: aload 8
    //   114: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   117: istore_2
    //   118: iload_1
    //   119: i2l
    //   120: lstore_3
    //   121: iload_2
    //   122: i2l
    //   123: lstore 5
    //   125: aload 8
    //   127: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   130: istore_1
    //   131: aload 8
    //   133: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   136: istore_2
    //   137: aload 8
    //   139: invokestatic 416	com/estrongs/fs/impl/local/m:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   142: astore 13
    //   144: new 788	com/estrongs/fs/c
    //   147: dup
    //   148: ldc_w 343
    //   151: invokespecial 789	com/estrongs/fs/c:<init>	(Ljava/lang/String;)V
    //   154: astore 11
    //   156: aload 11
    //   158: aload 13
    //   160: putfield 791	com/estrongs/fs/c:o	Ljava/lang/String;
    //   163: aload 12
    //   165: iconst_0
    //   166: invokevirtual 645	java/lang/String:charAt	(I)C
    //   169: bipush 100
    //   171: if_icmpeq +436 -> 607
    //   174: aload 12
    //   176: iconst_0
    //   177: invokevirtual 645	java/lang/String:charAt	(I)C
    //   180: bipush 101
    //   182: if_icmpne +221 -> 403
    //   185: goto +422 -> 607
    //   188: aload 11
    //   190: iload 7
    //   192: putfield 792	com/estrongs/fs/c:d	Z
    //   195: aload 11
    //   197: aload_0
    //   198: putfield 793	com/estrongs/fs/c:b	Ljava/lang/String;
    //   201: aload 11
    //   203: getfield 792	com/estrongs/fs/c:d	Z
    //   206: ifeq +203 -> 409
    //   209: aload 11
    //   211: lconst_0
    //   212: putfield 796	com/estrongs/fs/c:e	J
    //   215: aload 11
    //   217: iload_1
    //   218: i2l
    //   219: putfield 798	com/estrongs/fs/c:j	J
    //   222: aload 11
    //   224: aload 11
    //   226: getfield 798	com/estrongs/fs/c:j	J
    //   229: ldc2_w 258
    //   232: lmul
    //   233: putfield 798	com/estrongs/fs/c:j	J
    //   236: aload 11
    //   238: iload_2
    //   239: putfield 800	com/estrongs/fs/c:q	I
    //   242: aload 11
    //   244: aload 12
    //   246: iconst_1
    //   247: bipush 10
    //   249: invokevirtual 560	java/lang/String:substring	(II)Ljava/lang/String;
    //   252: putfield 802	com/estrongs/fs/c:p	Ljava/lang/String;
    //   255: aload 11
    //   257: getfield 791	com/estrongs/fs/c:o	Ljava/lang/String;
    //   260: iconst_0
    //   261: invokevirtual 645	java/lang/String:charAt	(I)C
    //   264: bipush 46
    //   266: if_icmpne +189 -> 455
    //   269: iconst_1
    //   270: istore 7
    //   272: aload 11
    //   274: iload 7
    //   276: putfield 803	com/estrongs/fs/c:m	Z
    //   279: aload 11
    //   281: getfield 793	com/estrongs/fs/c:b	Ljava/lang/String;
    //   284: invokestatic 806	com/estrongs/android/util/ap:bC	(Ljava/lang/String;)Z
    //   287: ifeq +186 -> 473
    //   290: aload 11
    //   292: getfield 802	com/estrongs/fs/c:p	Ljava/lang/String;
    //   295: iconst_3
    //   296: invokevirtual 645	java/lang/String:charAt	(I)C
    //   299: bipush 114
    //   301: if_icmpne +160 -> 461
    //   304: iconst_1
    //   305: istore 7
    //   307: aload 11
    //   309: iload 7
    //   311: putfield 807	com/estrongs/fs/c:k	Z
    //   314: aload 11
    //   316: getfield 802	com/estrongs/fs/c:p	Ljava/lang/String;
    //   319: iconst_4
    //   320: invokevirtual 645	java/lang/String:charAt	(I)C
    //   323: bipush 119
    //   325: if_icmpne +142 -> 467
    //   328: iconst_1
    //   329: istore 7
    //   331: aload 11
    //   333: iload 7
    //   335: putfield 809	com/estrongs/fs/c:l	Z
    //   338: aload 12
    //   340: iconst_0
    //   341: invokevirtual 645	java/lang/String:charAt	(I)C
    //   344: bipush 108
    //   346: if_icmpeq +14 -> 360
    //   349: aload 12
    //   351: iconst_0
    //   352: invokevirtual 645	java/lang/String:charAt	(I)C
    //   355: bipush 101
    //   357: if_icmpne +9 -> 366
    //   360: aload 11
    //   362: iconst_1
    //   363: putfield 811	com/estrongs/fs/c:n	Z
    //   366: aload 8
    //   368: ifnull +8 -> 376
    //   371: aload 8
    //   373: invokevirtual 430	java/io/InputStream:close	()V
    //   376: aload 9
    //   378: ifnull +8 -> 386
    //   381: aload 9
    //   383: invokevirtual 431	java/io/OutputStream:close	()V
    //   386: aload 10
    //   388: invokevirtual 432	android/net/LocalSocket:close	()V
    //   391: iconst_1
    //   392: anewarray 788	com/estrongs/fs/c
    //   395: dup
    //   396: iconst_0
    //   397: aload 11
    //   399: aastore
    //   400: iconst_0
    //   401: aaload
    //   402: areturn
    //   403: iconst_0
    //   404: istore 7
    //   406: goto -218 -> 188
    //   409: aload 11
    //   411: lload 5
    //   413: lload_3
    //   414: bipush 32
    //   416: lshl
    //   417: ladd
    //   418: putfield 796	com/estrongs/fs/c:e	J
    //   421: goto -206 -> 215
    //   424: astore_0
    //   425: aload 8
    //   427: ifnull +8 -> 435
    //   430: aload 8
    //   432: invokevirtual 430	java/io/InputStream:close	()V
    //   435: aload 9
    //   437: ifnull +8 -> 445
    //   440: aload 9
    //   442: invokevirtual 431	java/io/OutputStream:close	()V
    //   445: aload 10
    //   447: invokevirtual 432	android/net/LocalSocket:close	()V
    //   450: aconst_null
    //   451: areturn
    //   452: astore_0
    //   453: aconst_null
    //   454: areturn
    //   455: iconst_0
    //   456: istore 7
    //   458: goto -186 -> 272
    //   461: iconst_0
    //   462: istore 7
    //   464: goto -157 -> 307
    //   467: iconst_0
    //   468: istore 7
    //   470: goto -139 -> 331
    //   473: aload 11
    //   475: getfield 802	com/estrongs/fs/c:p	Ljava/lang/String;
    //   478: iconst_0
    //   479: invokevirtual 645	java/lang/String:charAt	(I)C
    //   482: bipush 114
    //   484: if_icmpne +68 -> 552
    //   487: iconst_1
    //   488: istore 7
    //   490: aload 11
    //   492: iload 7
    //   494: putfield 807	com/estrongs/fs/c:k	Z
    //   497: aload 11
    //   499: getfield 802	com/estrongs/fs/c:p	Ljava/lang/String;
    //   502: iconst_1
    //   503: invokevirtual 645	java/lang/String:charAt	(I)C
    //   506: bipush 119
    //   508: if_icmpne +50 -> 558
    //   511: iconst_1
    //   512: istore 7
    //   514: aload 11
    //   516: iload 7
    //   518: putfield 809	com/estrongs/fs/c:l	Z
    //   521: goto -183 -> 338
    //   524: astore_0
    //   525: aload 8
    //   527: ifnull +8 -> 535
    //   530: aload 8
    //   532: invokevirtual 430	java/io/InputStream:close	()V
    //   535: aload 9
    //   537: ifnull +8 -> 545
    //   540: aload 9
    //   542: invokevirtual 431	java/io/OutputStream:close	()V
    //   545: aload 10
    //   547: invokevirtual 432	android/net/LocalSocket:close	()V
    //   550: aload_0
    //   551: athrow
    //   552: iconst_0
    //   553: istore 7
    //   555: goto -65 -> 490
    //   558: iconst_0
    //   559: istore 7
    //   561: goto -47 -> 514
    //   564: astore 8
    //   566: goto -16 -> 550
    //   569: astore_0
    //   570: aconst_null
    //   571: astore 8
    //   573: aconst_null
    //   574: astore 9
    //   576: goto -51 -> 525
    //   579: astore_0
    //   580: aconst_null
    //   581: astore 9
    //   583: goto -58 -> 525
    //   586: astore_0
    //   587: aconst_null
    //   588: astore 8
    //   590: aconst_null
    //   591: astore 9
    //   593: goto -168 -> 425
    //   596: astore_0
    //   597: aconst_null
    //   598: astore 9
    //   600: goto -175 -> 425
    //   603: astore_0
    //   604: goto -213 -> 391
    //   607: iconst_1
    //   608: istore 7
    //   610: goto -422 -> 188
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	613	0	paramString	String
    //   64	154	1	n	int
    //   117	122	2	i1	int
    //   120	294	3	l1	long
    //   123	289	5	l2	long
    //   190	419	7	bool	boolean
    //   36	495	8	localInputStream	InputStream
    //   564	1	8	localIOException	IOException
    //   571	18	8	localObject1	Object
    //   43	556	9	localOutputStream	OutputStream
    //   22	524	10	localLocalSocket	LocalSocket
    //   10	505	11	localObject2	Object
    //   104	246	12	str1	String
    //   142	17	13	str2	String
    // Exception table:
    //   from	to	target	type
    //   74	79	96	java/io/IOException
    //   84	89	96	java/io/IOException
    //   89	94	96	java/io/IOException
    //   45	65	424	java/io/IOException
    //   99	118	424	java/io/IOException
    //   125	185	424	java/io/IOException
    //   188	215	424	java/io/IOException
    //   215	269	424	java/io/IOException
    //   272	304	424	java/io/IOException
    //   307	328	424	java/io/IOException
    //   331	338	424	java/io/IOException
    //   338	360	424	java/io/IOException
    //   360	366	424	java/io/IOException
    //   409	421	424	java/io/IOException
    //   473	487	424	java/io/IOException
    //   490	511	424	java/io/IOException
    //   514	521	424	java/io/IOException
    //   430	435	452	java/io/IOException
    //   440	445	452	java/io/IOException
    //   445	450	452	java/io/IOException
    //   45	65	524	finally
    //   99	118	524	finally
    //   125	185	524	finally
    //   188	215	524	finally
    //   215	269	524	finally
    //   272	304	524	finally
    //   307	328	524	finally
    //   331	338	524	finally
    //   338	360	524	finally
    //   360	366	524	finally
    //   409	421	524	finally
    //   473	487	524	finally
    //   490	511	524	finally
    //   514	521	524	finally
    //   530	535	564	java/io/IOException
    //   540	545	564	java/io/IOException
    //   545	550	564	java/io/IOException
    //   31	38	569	finally
    //   38	45	579	finally
    //   31	38	586	java/io/IOException
    //   38	45	596	java/io/IOException
    //   371	376	603	java/io/IOException
    //   381	386	603	java/io/IOException
    //   386	391	603	java/io/IOException
  }
  
  public static String d()
  {
    return e;
  }
  
  private static void d(Object paramObject)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    q localq = (q)paramObject;
    LocalSocket localLocalSocket = p();
    if (localLocalSocket == null)
    {
      localq.a(false);
      return;
    }
    try
    {
      localOutputStream = localLocalSocket.getOutputStream();
      paramObject = localObject2;
      try
      {
        localObject1 = localLocalSocket.getInputStream();
        paramObject = localObject1;
        a(localOutputStream, 200);
        paramObject = localObject1;
        a(localOutputStream, q.a(localq));
        paramObject = localObject1;
        if (c((InputStream)localObject1) == 0) {
          break label116;
        }
        paramObject = localObject1;
        localq.a(false);
        return;
      }
      catch (Exception localException)
      {
        localObject1 = paramObject;
        paramObject = localException;
      }
    }
    catch (Exception paramObject)
    {
      for (;;)
      {
        OutputStream localOutputStream = null;
      }
    }
    ((Exception)paramObject).printStackTrace();
    if (localObject1 != null) {}
    try
    {
      ((InputStream)localObject1).close();
      if (localOutputStream != null) {
        localOutputStream.close();
      }
      localLocalSocket.close();
    }
    catch (Exception paramObject)
    {
      for (;;) {}
    }
    localq.a(false);
    return;
    label116:
    paramObject = localObject1;
    q.a(localq, localLocalSocket);
    paramObject = localObject1;
    localq.a(true);
  }
  
  public static String[] d(boolean paramBoolean)
  {
    Object localObject1 = null;
    Object localObject3;
    Object localObject4;
    int n;
    if (ac.a() >= 21)
    {
      localObject3 = r();
      if (localObject3 == null) {
        return null;
      }
      localObject4 = ((String)localObject3).split("\n");
      n = 0;
      label31:
      if (n < localObject4.length)
      {
        localObject3 = p.a(localObject4[n], Boolean.valueOf(paramBoolean));
        if (localObject3 == null) {
          break label308;
        }
        if (localObject1 == null) {
          localObject1 = localObject3;
        }
      }
    }
    label205:
    label308:
    for (;;)
    {
      n += 1;
      break label31;
      localObject1 = (String)localObject1 + " " + (String)localObject3;
      continue;
      return ((String)localObject1).split("\\s+");
      localObject3 = a(false);
      if (localObject3 == null) {
        break;
      }
      if (!d) {
        n = 1;
      }
      try
      {
        localObject4 = new p();
        a = localObject3;
        b = "mount";
        c = Integer.valueOf(5);
        if (paramBoolean) {}
        for (localObject1 = Boolean.valueOf(paramBoolean);; localObject1 = null)
        {
          f = localObject1;
          ((p)localObject4).b();
          paramBoolean = ((Boolean)e).booleanValue();
          if (paramBoolean) {
            break label205;
          }
          a((s)localObject3);
          return null;
          n = 0;
          break;
        }
        paramBoolean = ((Boolean)((p)localObject4).c()).booleanValue();
        if (!paramBoolean)
        {
          if (n != 0)
          {
            a((s)localObject3);
            return null;
          }
          b((s)localObject3);
          return null;
        }
        localObject1 = (String)d;
        if (localObject1 == null)
        {
          if (n != 0)
          {
            a((s)localObject3);
            return null;
          }
          b((s)localObject3);
          return null;
        }
        localObject1 = ((String)localObject1).split("\\s+");
        if (n != 0)
        {
          a((s)localObject3);
          return (String[])localObject1;
        }
        b((s)localObject3);
        return (String[])localObject1;
      }
      finally
      {
        if (n != 0) {
          a((s)localObject3);
        }
        for (;;)
        {
          throw ((Throwable)localObject2);
          b((s)localObject3);
        }
      }
    }
  }
  
  /* Error */
  private static LocalSocket e(boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: ldc 2
    //   4: monitorenter
    //   5: new 840	android/net/LocalSocketAddress
    //   8: dup
    //   9: invokestatic 736	com/estrongs/fs/impl/local/m:o	()Ljava/lang/String;
    //   12: getstatic 846	android/net/LocalSocketAddress$Namespace:ABSTRACT	Landroid/net/LocalSocketAddress$Namespace;
    //   15: invokespecial 849	android/net/LocalSocketAddress:<init>	(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V
    //   18: astore 4
    //   20: new 410	android/net/LocalSocket
    //   23: dup
    //   24: invokespecial 850	android/net/LocalSocket:<init>	()V
    //   27: astore_2
    //   28: aload_2
    //   29: aload 4
    //   31: invokevirtual 854	android/net/LocalSocket:connect	(Landroid/net/LocalSocketAddress;)V
    //   34: aload_2
    //   35: ifnull +192 -> 227
    //   38: ldc_w 856
    //   41: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   44: aload_2
    //   45: invokevirtual 412	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   48: astore 5
    //   50: aload_2
    //   51: invokevirtual 411	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   54: astore 6
    //   56: aload 5
    //   58: bipush 80
    //   60: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   63: aload 6
    //   65: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   68: istore_1
    //   69: iload_1
    //   70: bipush 39
    //   72: if_icmpeq +86 -> 158
    //   75: aload_2
    //   76: invokevirtual 432	android/net/LocalSocket:close	()V
    //   79: new 410	android/net/LocalSocket
    //   82: dup
    //   83: invokespecial 850	android/net/LocalSocket:<init>	()V
    //   86: astore_2
    //   87: aload_2
    //   88: aload 4
    //   90: invokevirtual 854	android/net/LocalSocket:connect	(Landroid/net/LocalSocketAddress;)V
    //   93: aload_2
    //   94: invokevirtual 412	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   97: bipush 100
    //   99: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   102: aload_2
    //   103: invokevirtual 432	android/net/LocalSocket:close	()V
    //   106: invokestatic 488	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   109: invokestatic 515	com/estrongs/fs/impl/local/m:a	(Landroid/content/Context;)Z
    //   112: pop
    //   113: ldc_w 858
    //   116: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   119: aload_3
    //   120: astore_2
    //   121: ldc 2
    //   123: monitorexit
    //   124: aload_2
    //   125: areturn
    //   126: astore_2
    //   127: new 121	java/lang/StringBuilder
    //   130: dup
    //   131: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   134: ldc_w 860
    //   137: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: aload_2
    //   141: invokevirtual 297	java/lang/Exception:toString	()Ljava/lang/String;
    //   144: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   153: aconst_null
    //   154: astore_2
    //   155: goto -121 -> 34
    //   158: aload 5
    //   160: sipush 208
    //   163: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   166: aload_2
    //   167: invokevirtual 863	java/lang/Object:hashCode	()I
    //   170: invokestatic 869	java/lang/Math:abs	(I)I
    //   173: istore_1
    //   174: getstatic 873	com/estrongs/android/nativetool/NativeAuth:a	Z
    //   177: istore_0
    //   178: iload_0
    //   179: ifne +36 -> 215
    //   182: iload_1
    //   183: invokestatic 877	com/estrongs/android/nativetool/NativeAuth:putAuth	(I)V
    //   186: aload 5
    //   188: iload_1
    //   189: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   192: aload 6
    //   194: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   197: pop
    //   198: ldc_w 879
    //   201: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   204: goto -83 -> 121
    //   207: astore 4
    //   209: invokestatic 881	com/estrongs/android/nativetool/NativeAuth:a	()V
    //   212: goto -26 -> 186
    //   215: invokestatic 881	com/estrongs/android/nativetool/NativeAuth:a	()V
    //   218: goto -32 -> 186
    //   221: astore_2
    //   222: ldc 2
    //   224: monitorexit
    //   225: aload_2
    //   226: athrow
    //   227: aload_3
    //   228: astore_2
    //   229: iload_0
    //   230: ifeq -109 -> 121
    //   233: invokestatic 513	com/estrongs/fs/impl/local/m:h	()Z
    //   236: ifeq +14 -> 250
    //   239: aload_3
    //   240: astore_2
    //   241: invokestatic 488	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   244: invokestatic 515	com/estrongs/fs/impl/local/m:a	(Landroid/content/Context;)Z
    //   247: ifeq -126 -> 121
    //   250: aload_3
    //   251: astore_2
    //   252: iconst_1
    //   253: invokestatic 518	com/estrongs/fs/impl/local/m:c	(Z)Z
    //   256: ifeq -135 -> 121
    //   259: iconst_0
    //   260: invokestatic 883	com/estrongs/fs/impl/local/m:e	(Z)Landroid/net/LocalSocket;
    //   263: astore_2
    //   264: goto -143 -> 121
    //   267: astore_2
    //   268: aload_3
    //   269: astore_2
    //   270: goto -149 -> 121
    //   273: astore_2
    //   274: goto -168 -> 106
    //   277: astore_2
    //   278: aload_3
    //   279: astore_2
    //   280: goto -159 -> 121
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	283	0	paramBoolean	boolean
    //   68	121	1	n	int
    //   27	98	2	localObject1	Object
    //   126	15	2	localException1	Exception
    //   154	13	2	localObject2	Object
    //   221	5	2	localObject3	Object
    //   228	36	2	localObject4	Object
    //   267	1	2	localException2	Exception
    //   269	1	2	localObject5	Object
    //   273	1	2	localException3	Exception
    //   277	1	2	localException4	Exception
    //   279	1	2	localObject6	Object
    //   1	278	3	localObject7	Object
    //   18	71	4	localLocalSocketAddress	android.net.LocalSocketAddress
    //   207	1	4	localThrowable	Throwable
    //   48	139	5	localOutputStream	OutputStream
    //   54	139	6	localInputStream	InputStream
    // Exception table:
    //   from	to	target	type
    //   28	34	126	java/lang/Exception
    //   182	186	207	java/lang/Throwable
    //   5	28	221	finally
    //   28	34	221	finally
    //   38	69	221	finally
    //   75	106	221	finally
    //   106	119	221	finally
    //   127	153	221	finally
    //   158	178	221	finally
    //   182	186	221	finally
    //   186	204	221	finally
    //   209	212	221	finally
    //   215	218	221	finally
    //   233	239	221	finally
    //   241	250	221	finally
    //   252	264	221	finally
    //   233	239	267	java/lang/Exception
    //   241	250	267	java/lang/Exception
    //   252	264	267	java/lang/Exception
    //   75	106	273	java/lang/Exception
    //   38	69	277	java/lang/Exception
    //   106	119	277	java/lang/Exception
    //   158	178	277	java/lang/Exception
    //   182	186	277	java/lang/Exception
    //   186	204	277	java/lang/Exception
    //   209	212	277	java/lang/Exception
    //   215	218	277	java/lang/Exception
  }
  
  public static s e()
  {
    return a(false);
  }
  
  /* Error */
  public static OutputStream e(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aload_0
    //   7: invokestatic 786	com/estrongs/android/util/ap:bF	(Ljava/lang/String;)Ljava/lang/String;
    //   10: astore 5
    //   12: aload 5
    //   14: ifnull -10 -> 4
    //   17: invokestatic 408	com/estrongs/fs/impl/local/m:p	()Landroid/net/LocalSocket;
    //   20: astore 7
    //   22: aload 7
    //   24: ifnull -20 -> 4
    //   27: aload 7
    //   29: invokevirtual 412	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   32: astore_0
    //   33: aload 7
    //   35: invokevirtual 411	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   38: astore 4
    //   40: aload_0
    //   41: astore_3
    //   42: aload 4
    //   44: astore_2
    //   45: aload_0
    //   46: bipush 10
    //   48: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   51: aload_0
    //   52: astore_3
    //   53: aload 4
    //   55: astore_2
    //   56: aload_0
    //   57: aload 5
    //   59: invokestatic 414	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   62: aload_0
    //   63: astore_3
    //   64: aload 4
    //   66: astore_2
    //   67: aload 4
    //   69: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   72: istore_1
    //   73: iload_1
    //   74: ifeq +39 -> 113
    //   77: iconst_0
    //   78: ifne -74 -> 4
    //   81: aload 4
    //   83: ifnull +8 -> 91
    //   86: aload 4
    //   88: invokevirtual 430	java/io/InputStream:close	()V
    //   91: aload_0
    //   92: ifnull +7 -> 99
    //   95: aload_0
    //   96: invokevirtual 431	java/io/OutputStream:close	()V
    //   99: aload 7
    //   101: invokevirtual 432	android/net/LocalSocket:close	()V
    //   104: aconst_null
    //   105: areturn
    //   106: astore_0
    //   107: aload_0
    //   108: invokevirtual 886	java/io/IOException:printStackTrace	()V
    //   111: aconst_null
    //   112: areturn
    //   113: aload_0
    //   114: astore_3
    //   115: aload 4
    //   117: astore_2
    //   118: new 888	com/estrongs/fs/impl/local/u
    //   121: dup
    //   122: aload 7
    //   124: aload 4
    //   126: aload_0
    //   127: invokespecial 891	com/estrongs/fs/impl/local/u:<init>	(Landroid/net/LocalSocket;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   130: astore 5
    //   132: aload 5
    //   134: ifnonnull +26 -> 160
    //   137: aload 4
    //   139: ifnull +8 -> 147
    //   142: aload 4
    //   144: invokevirtual 430	java/io/InputStream:close	()V
    //   147: aload_0
    //   148: ifnull +7 -> 155
    //   151: aload_0
    //   152: invokevirtual 431	java/io/OutputStream:close	()V
    //   155: aload 7
    //   157: invokevirtual 432	android/net/LocalSocket:close	()V
    //   160: aload 5
    //   162: areturn
    //   163: astore_0
    //   164: aload_0
    //   165: invokevirtual 886	java/io/IOException:printStackTrace	()V
    //   168: aconst_null
    //   169: areturn
    //   170: astore 5
    //   172: aconst_null
    //   173: astore 6
    //   175: aconst_null
    //   176: astore_0
    //   177: aload 6
    //   179: astore_3
    //   180: aload_0
    //   181: astore_2
    //   182: aload 5
    //   184: invokevirtual 886	java/io/IOException:printStackTrace	()V
    //   187: iconst_0
    //   188: ifne -184 -> 4
    //   191: aload_0
    //   192: ifnull +7 -> 199
    //   195: aload_0
    //   196: invokevirtual 430	java/io/InputStream:close	()V
    //   199: aload 6
    //   201: ifnull +8 -> 209
    //   204: aload 6
    //   206: invokevirtual 431	java/io/OutputStream:close	()V
    //   209: aload 7
    //   211: invokevirtual 432	android/net/LocalSocket:close	()V
    //   214: aconst_null
    //   215: areturn
    //   216: astore_0
    //   217: aload_0
    //   218: invokevirtual 886	java/io/IOException:printStackTrace	()V
    //   221: aconst_null
    //   222: areturn
    //   223: astore 4
    //   225: aconst_null
    //   226: astore_0
    //   227: aconst_null
    //   228: astore_2
    //   229: iconst_0
    //   230: ifne +24 -> 254
    //   233: aload_2
    //   234: ifnull +7 -> 241
    //   237: aload_2
    //   238: invokevirtual 430	java/io/InputStream:close	()V
    //   241: aload_0
    //   242: ifnull +7 -> 249
    //   245: aload_0
    //   246: invokevirtual 431	java/io/OutputStream:close	()V
    //   249: aload 7
    //   251: invokevirtual 432	android/net/LocalSocket:close	()V
    //   254: aload 4
    //   256: athrow
    //   257: astore_0
    //   258: aload_0
    //   259: invokevirtual 886	java/io/IOException:printStackTrace	()V
    //   262: aconst_null
    //   263: areturn
    //   264: astore 4
    //   266: aconst_null
    //   267: astore_2
    //   268: goto -39 -> 229
    //   271: astore 4
    //   273: aload_3
    //   274: astore_0
    //   275: goto -46 -> 229
    //   278: astore 5
    //   280: aconst_null
    //   281: astore_2
    //   282: aload_0
    //   283: astore 6
    //   285: aload_2
    //   286: astore_0
    //   287: goto -110 -> 177
    //   290: astore 5
    //   292: aload_0
    //   293: astore 6
    //   295: aload 4
    //   297: astore_0
    //   298: goto -121 -> 177
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	301	0	paramString	String
    //   72	2	1	n	int
    //   44	242	2	localObject1	Object
    //   41	233	3	localObject2	Object
    //   38	105	4	localInputStream	InputStream
    //   223	32	4	localObject3	Object
    //   264	1	4	localObject4	Object
    //   271	25	4	localObject5	Object
    //   10	151	5	localObject6	Object
    //   170	13	5	localIOException1	IOException
    //   278	1	5	localIOException2	IOException
    //   290	1	5	localIOException3	IOException
    //   173	121	6	str	String
    //   20	230	7	localLocalSocket	LocalSocket
    // Exception table:
    //   from	to	target	type
    //   86	91	106	java/io/IOException
    //   95	99	106	java/io/IOException
    //   99	104	106	java/io/IOException
    //   142	147	163	java/io/IOException
    //   151	155	163	java/io/IOException
    //   155	160	163	java/io/IOException
    //   27	33	170	java/io/IOException
    //   195	199	216	java/io/IOException
    //   204	209	216	java/io/IOException
    //   209	214	216	java/io/IOException
    //   27	33	223	finally
    //   237	241	257	java/io/IOException
    //   245	249	257	java/io/IOException
    //   249	254	257	java/io/IOException
    //   33	40	264	finally
    //   45	51	271	finally
    //   56	62	271	finally
    //   67	73	271	finally
    //   118	132	271	finally
    //   182	187	271	finally
    //   33	40	278	java/io/IOException
    //   45	51	290	java/io/IOException
    //   56	62	290	java/io/IOException
    //   67	73	290	java/io/IOException
    //   118	132	290	java/io/IOException
  }
  
  private static void e(Object paramObject)
  {
    paramObject = (q)paramObject;
    if ((paramObject == null) || (q.b((q)paramObject)))
    {
      ((q)paramObject).a(-1);
      return;
    }
    InputStream localInputStream;
    int i1;
    try
    {
      OutputStream localOutputStream = q.c((q)paramObject).getOutputStream();
      localInputStream = q.c((q)paramObject).getInputStream();
      a(localOutputStream, 11);
      a(localOutputStream, q.d((q)paramObject));
      i1 = c(localInputStream);
      if (i1 < 0)
      {
        ((q)paramObject).a(i1);
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      a(paramObject);
      ((q)paramObject).a(-1);
      return;
    }
    int n = i1;
    for (;;)
    {
      int i2;
      if (n > 0)
      {
        i2 = localInputStream.read(q.e((q)paramObject), q.f((q)paramObject) + i1 - n, n);
        if (i2 > 0) {}
      }
      else
      {
        if (n != 0) {
          throw new IOException("Cannot finish reading data.");
        }
        ((q)paramObject).a(i1);
        return;
      }
      n -= i2;
    }
  }
  
  public static r f(String paramString)
  {
    r localr = new r(paramString, null);
    if (paramString == null) {
      return localr;
    }
    b(localr);
    return localr;
  }
  
  public static void f()
  {
    k = false;
  }
  
  private static void f(Object paramObject)
  {
    paramObject = (q)paramObject;
    if ((paramObject == null) || (q.b((q)paramObject)))
    {
      ((q)paramObject).a(-1L);
      return;
    }
    try
    {
      OutputStream localOutputStream = q.c((q)paramObject).getOutputStream();
      InputStream localInputStream = q.c((q)paramObject).getInputStream();
      a(localOutputStream, 201);
      a(localOutputStream, q.g((q)paramObject));
      a(localOutputStream, q.h((q)paramObject));
      ((q)paramObject).a(d(localInputStream));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      a(paramObject);
      ((q)paramObject).a(-1L);
    }
  }
  
  public static int g(String paramString)
  {
    if (a.size() == 0) {
      q();
    }
    int n = 0;
    while (n < a.size())
    {
      if (agetb.equals(paramString)) {
        return ageta;
      }
      n += 1;
    }
    return -1;
  }
  
  private static void g(Object paramObject)
  {
    paramObject = (q)paramObject;
    if ((paramObject == null) || (q.b((q)paramObject))) {
      return;
    }
    try
    {
      q.a((q)paramObject, true);
      OutputStream localOutputStream = q.c((q)paramObject).getOutputStream();
      InputStream localInputStream = q.c((q)paramObject).getInputStream();
      if (localInputStream != null) {
        localInputStream.close();
      }
      if (localOutputStream != null) {
        localOutputStream.close();
      }
      q.c((q)paramObject).close();
      return;
    }
    catch (Exception paramObject)
    {
      ((Exception)paramObject).printStackTrace();
    }
  }
  
  public static boolean g()
  {
    return b(false);
  }
  
  public static int h(String paramString)
  {
    if (b.size() == 0) {
      q();
    }
    int n = 0;
    while (n < b.size())
    {
      if (bgetb.equals(paramString)) {
        return bgeta;
      }
      n += 1;
    }
    return -1;
  }
  
  /* Error */
  public static boolean h()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: getstatic 60	com/estrongs/fs/impl/local/m:m	Z
    //   5: ifeq +9 -> 14
    //   8: iconst_0
    //   9: putstatic 60	com/estrongs/fs/impl/local/m:m	Z
    //   12: iconst_1
    //   13: ireturn
    //   14: new 435	java/io/File
    //   17: dup
    //   18: getstatic 41	com/estrongs/fs/impl/local/m:e	Ljava/lang/String;
    //   21: invokespecial 437	java/io/File:<init>	(Ljava/lang/String;)V
    //   24: astore 11
    //   26: aload 11
    //   28: invokevirtual 681	java/io/File:exists	()Z
    //   31: ifeq -19 -> 12
    //   34: invokestatic 442	com/estrongs/fs/impl/local/m:c	()I
    //   37: istore_0
    //   38: aload 11
    //   40: invokevirtual 936	java/io/File:length	()J
    //   43: lstore 9
    //   45: lconst_0
    //   46: lstore 5
    //   48: aconst_null
    //   49: astore 14
    //   51: aconst_null
    //   52: astore 13
    //   54: aload 13
    //   56: astore 11
    //   58: lload 5
    //   60: lstore_3
    //   61: aload 14
    //   63: astore 12
    //   65: invokestatic 488	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   68: invokevirtual 494	com/estrongs/android/pop/FexApplication:getResources	()Landroid/content/res/Resources;
    //   71: astore 15
    //   73: aload 13
    //   75: astore 11
    //   77: lload 5
    //   79: lstore_3
    //   80: aload 14
    //   82: astore 12
    //   84: aload 15
    //   86: iload_0
    //   87: invokevirtual 454	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   90: astore 13
    //   92: aload 13
    //   94: astore 11
    //   96: lload 5
    //   98: lstore_3
    //   99: aload 13
    //   101: astore 12
    //   103: aload 13
    //   105: invokevirtual 282	java/io/InputStream:available	()I
    //   108: i2l
    //   109: lstore 5
    //   111: lload 9
    //   113: lload 5
    //   115: lcmp
    //   116: ifne +101 -> 217
    //   119: aload 13
    //   121: astore 11
    //   123: lload 5
    //   125: lstore_3
    //   126: aload 13
    //   128: astore 12
    //   130: invokestatic 488	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   133: invokestatic 493	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   136: astore 14
    //   138: aload 13
    //   140: astore 11
    //   142: lload 5
    //   144: lstore_3
    //   145: aload 13
    //   147: astore 12
    //   149: aload 15
    //   151: iload_0
    //   152: invokevirtual 497	android/content/res/Resources:getResourceName	(I)Ljava/lang/String;
    //   155: astore 15
    //   157: aload 13
    //   159: astore 11
    //   161: lload 5
    //   163: lstore_3
    //   164: aload 13
    //   166: astore 12
    //   168: aload 14
    //   170: invokevirtual 939	com/estrongs/android/pop/ad:ba	()Ljava/lang/String;
    //   173: astore 14
    //   175: aload 14
    //   177: ifnull +26 -> 203
    //   180: aload 13
    //   182: astore 11
    //   184: lload 5
    //   186: lstore_3
    //   187: aload 13
    //   189: astore 12
    //   191: aload 14
    //   193: aload 15
    //   195: invokevirtual 274	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   198: istore_2
    //   199: iload_2
    //   200: ifne +5 -> 205
    //   203: iconst_1
    //   204: istore_1
    //   205: aload 13
    //   207: ifnull +8 -> 215
    //   210: aload 13
    //   212: invokevirtual 430	java/io/InputStream:close	()V
    //   215: iload_1
    //   216: ireturn
    //   217: lload 5
    //   219: lstore 7
    //   221: aload 13
    //   223: ifnull +12 -> 235
    //   226: aload 13
    //   228: invokevirtual 430	java/io/InputStream:close	()V
    //   231: lload 5
    //   233: lstore 7
    //   235: lload 9
    //   237: lload 7
    //   239: lcmp
    //   240: ifne -228 -> 12
    //   243: iconst_0
    //   244: ireturn
    //   245: astore 12
    //   247: lload_3
    //   248: lstore 7
    //   250: aload 11
    //   252: ifnull -17 -> 235
    //   255: aload 11
    //   257: invokevirtual 430	java/io/InputStream:close	()V
    //   260: lload_3
    //   261: lstore 7
    //   263: goto -28 -> 235
    //   266: astore 11
    //   268: lload_3
    //   269: lstore 7
    //   271: goto -36 -> 235
    //   274: astore 11
    //   276: aload 12
    //   278: ifnull +8 -> 286
    //   281: aload 12
    //   283: invokevirtual 430	java/io/InputStream:close	()V
    //   286: aload 11
    //   288: athrow
    //   289: astore 11
    //   291: goto -76 -> 215
    //   294: astore 11
    //   296: lload 5
    //   298: lstore 7
    //   300: goto -65 -> 235
    //   303: astore 12
    //   305: goto -19 -> 286
    // Local variable table:
    //   start	length	slot	name	signature
    //   37	115	0	n	int
    //   1	215	1	bool1	boolean
    //   198	2	2	bool2	boolean
    //   60	209	3	l1	long
    //   46	251	5	l2	long
    //   219	80	7	l3	long
    //   43	193	9	l4	long
    //   24	232	11	localObject1	Object
    //   266	1	11	localIOException1	IOException
    //   274	13	11	localObject2	Object
    //   289	1	11	localIOException2	IOException
    //   294	1	11	localIOException3	IOException
    //   63	127	12	localObject3	Object
    //   245	37	12	localException	Exception
    //   303	1	12	localIOException4	IOException
    //   52	175	13	localInputStream	InputStream
    //   49	143	14	localObject4	Object
    //   71	123	15	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   65	73	245	java/lang/Exception
    //   84	92	245	java/lang/Exception
    //   103	111	245	java/lang/Exception
    //   130	138	245	java/lang/Exception
    //   149	157	245	java/lang/Exception
    //   168	175	245	java/lang/Exception
    //   191	199	245	java/lang/Exception
    //   255	260	266	java/io/IOException
    //   65	73	274	finally
    //   84	92	274	finally
    //   103	111	274	finally
    //   130	138	274	finally
    //   149	157	274	finally
    //   168	175	274	finally
    //   191	199	274	finally
    //   210	215	289	java/io/IOException
    //   226	231	294	java/io/IOException
    //   281	286	303	java/io/IOException
  }
  
  public static Object i(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      paramString = new q(paramString);
      d(paramString);
    } while (!q.i(paramString));
    return paramString;
  }
  
  public static String i()
  {
    return s();
  }
  
  /* Error */
  public static InputStream j(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: aload_0
    //   7: invokestatic 786	com/estrongs/android/util/ap:bF	(Ljava/lang/String;)Ljava/lang/String;
    //   10: astore_3
    //   11: aload_3
    //   12: ifnull -8 -> 4
    //   15: invokestatic 408	com/estrongs/fs/impl/local/m:p	()Landroid/net/LocalSocket;
    //   18: astore 4
    //   20: aload 4
    //   22: ifnull -18 -> 4
    //   25: aload 4
    //   27: invokevirtual 412	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   30: astore_0
    //   31: aload 4
    //   33: invokevirtual 411	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   36: astore_2
    //   37: aload_0
    //   38: bipush 11
    //   40: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   43: aload_0
    //   44: aload_3
    //   45: invokestatic 414	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   48: aload_2
    //   49: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   52: istore_1
    //   53: iload_1
    //   54: ifeq +33 -> 87
    //   57: iconst_0
    //   58: ifne -54 -> 4
    //   61: aload_2
    //   62: ifnull +7 -> 69
    //   65: aload_2
    //   66: invokevirtual 430	java/io/InputStream:close	()V
    //   69: aload_0
    //   70: ifnull +7 -> 77
    //   73: aload_0
    //   74: invokevirtual 431	java/io/OutputStream:close	()V
    //   77: aload 4
    //   79: invokevirtual 432	android/net/LocalSocket:close	()V
    //   82: aconst_null
    //   83: areturn
    //   84: astore_0
    //   85: aconst_null
    //   86: areturn
    //   87: new 951	com/estrongs/fs/impl/local/t
    //   90: dup
    //   91: aload 4
    //   93: aload_2
    //   94: aload_0
    //   95: invokespecial 952	com/estrongs/fs/impl/local/t:<init>	(Landroid/net/LocalSocket;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   98: astore_3
    //   99: aload_3
    //   100: ifnonnull +24 -> 124
    //   103: aload_2
    //   104: ifnull +7 -> 111
    //   107: aload_2
    //   108: invokevirtual 430	java/io/InputStream:close	()V
    //   111: aload_0
    //   112: ifnull +7 -> 119
    //   115: aload_0
    //   116: invokevirtual 431	java/io/OutputStream:close	()V
    //   119: aload 4
    //   121: invokevirtual 432	android/net/LocalSocket:close	()V
    //   124: aload_3
    //   125: areturn
    //   126: astore_0
    //   127: aconst_null
    //   128: astore_0
    //   129: aconst_null
    //   130: astore_2
    //   131: iconst_0
    //   132: ifne -128 -> 4
    //   135: aload_2
    //   136: ifnull +7 -> 143
    //   139: aload_2
    //   140: invokevirtual 430	java/io/InputStream:close	()V
    //   143: aload_0
    //   144: ifnull +7 -> 151
    //   147: aload_0
    //   148: invokevirtual 431	java/io/OutputStream:close	()V
    //   151: aload 4
    //   153: invokevirtual 432	android/net/LocalSocket:close	()V
    //   156: aconst_null
    //   157: areturn
    //   158: astore_0
    //   159: aconst_null
    //   160: areturn
    //   161: astore_3
    //   162: aconst_null
    //   163: astore_0
    //   164: aconst_null
    //   165: astore_2
    //   166: iconst_0
    //   167: ifne +24 -> 191
    //   170: aload_2
    //   171: ifnull +7 -> 178
    //   174: aload_2
    //   175: invokevirtual 430	java/io/InputStream:close	()V
    //   178: aload_0
    //   179: ifnull +7 -> 186
    //   182: aload_0
    //   183: invokevirtual 431	java/io/OutputStream:close	()V
    //   186: aload 4
    //   188: invokevirtual 432	android/net/LocalSocket:close	()V
    //   191: aload_3
    //   192: athrow
    //   193: astore_0
    //   194: aconst_null
    //   195: areturn
    //   196: astore_3
    //   197: aconst_null
    //   198: astore_2
    //   199: goto -33 -> 166
    //   202: astore_3
    //   203: goto -37 -> 166
    //   206: astore_2
    //   207: aconst_null
    //   208: astore_2
    //   209: goto -78 -> 131
    //   212: astore_3
    //   213: goto -82 -> 131
    //   216: astore_0
    //   217: aconst_null
    //   218: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	219	0	paramString	String
    //   52	2	1	n	int
    //   36	163	2	localInputStream	InputStream
    //   206	1	2	localIOException1	IOException
    //   208	1	2	localObject1	Object
    //   10	115	3	localObject2	Object
    //   161	31	3	localObject3	Object
    //   196	1	3	localObject4	Object
    //   202	1	3	localObject5	Object
    //   212	1	3	localIOException2	IOException
    //   18	169	4	localLocalSocket	LocalSocket
    // Exception table:
    //   from	to	target	type
    //   65	69	84	java/io/IOException
    //   73	77	84	java/io/IOException
    //   77	82	84	java/io/IOException
    //   25	31	126	java/io/IOException
    //   139	143	158	java/io/IOException
    //   147	151	158	java/io/IOException
    //   151	156	158	java/io/IOException
    //   25	31	161	finally
    //   174	178	193	java/io/IOException
    //   182	186	193	java/io/IOException
    //   186	191	193	java/io/IOException
    //   31	37	196	finally
    //   37	53	202	finally
    //   87	99	202	finally
    //   31	37	206	java/io/IOException
    //   37	53	212	java/io/IOException
    //   87	99	212	java/io/IOException
    //   107	111	216	java/io/IOException
    //   115	119	216	java/io/IOException
    //   119	124	216	java/io/IOException
  }
  
  public static String[] j()
  {
    if (a.size() == 0) {
      q();
    }
    if (a.size() == 0) {
      return null;
    }
    String[] arrayOfString = new String[a.size()];
    int n = 0;
    while (n < a.size())
    {
      arrayOfString[n] = agetb;
      n += 1;
    }
    return arrayOfString;
  }
  
  public static String[] k()
  {
    if (b.size() == 0) {
      q();
    }
    if (b.size() == 0) {
      return null;
    }
    String[] arrayOfString = new String[b.size()];
    int n = 0;
    while (n < b.size())
    {
      arrayOfString[n] = bgetb;
      n += 1;
    }
    return arrayOfString;
  }
  
  public static String[] k(String paramString)
  {
    String[] arrayOfString = paramString.split("\n");
    paramString = arrayOfString;
    if (arrayOfString.length % 3 != 0) {
      paramString = null;
    }
    return paramString;
  }
  
  /* Error */
  public static boolean l(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: aconst_null
    //   7: astore_3
    //   8: iconst_1
    //   9: istore_2
    //   10: getstatic 63	com/estrongs/fs/impl/local/m:c	Ljava/lang/Object;
    //   13: astore 7
    //   15: aload 7
    //   17: monitorenter
    //   18: aload_0
    //   19: ifnonnull +8 -> 27
    //   22: aload 7
    //   24: monitorexit
    //   25: iconst_0
    //   26: ireturn
    //   27: invokestatic 408	com/estrongs/fs/impl/local/m:p	()Landroid/net/LocalSocket;
    //   30: astore 8
    //   32: aload 8
    //   34: ifnonnull +14 -> 48
    //   37: aload 7
    //   39: monitorexit
    //   40: iconst_0
    //   41: ireturn
    //   42: astore_0
    //   43: aload 7
    //   45: monitorexit
    //   46: aload_0
    //   47: athrow
    //   48: aload 8
    //   50: invokevirtual 411	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   53: astore 6
    //   55: aload 6
    //   57: astore_3
    //   58: aload 4
    //   60: astore 5
    //   62: aload 8
    //   64: invokevirtual 412	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   67: astore 4
    //   69: aload 4
    //   71: astore 5
    //   73: aload 4
    //   75: bipush 17
    //   77: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   80: aload 4
    //   82: astore 5
    //   84: aload 4
    //   86: aload_0
    //   87: invokestatic 414	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   90: aload 4
    //   92: astore 5
    //   94: aload_3
    //   95: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   98: istore_1
    //   99: aload 4
    //   101: astore 5
    //   103: new 121	java/lang/StringBuilder
    //   106: dup
    //   107: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   110: ldc_w 955
    //   113: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: iload_1
    //   117: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   120: ldc_w 658
    //   123: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokestatic 463	com/estrongs/android/pop/ac:a	()I
    //   129: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   132: ldc_w 660
    //   135: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: bipush 14
    //   140: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   143: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   149: iload_1
    //   150: ifeq +335 -> 485
    //   153: aload 4
    //   155: astore 5
    //   157: invokestatic 463	com/estrongs/android/pop/ac:a	()I
    //   160: bipush 14
    //   162: if_icmplt +323 -> 485
    //   165: aload 4
    //   167: astore 5
    //   169: new 121	java/lang/StringBuilder
    //   172: dup
    //   173: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   176: ldc_w 957
    //   179: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: aload_0
    //   183: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   189: astore 6
    //   191: aload 4
    //   193: astore 5
    //   195: invokestatic 664	com/estrongs/android/util/bk:l	()Z
    //   198: ifeq +45 -> 243
    //   201: aload 4
    //   203: astore 5
    //   205: iconst_1
    //   206: iconst_1
    //   207: invokestatic 176	com/estrongs/fs/impl/local/m:a	(ZZ)Lcom/estrongs/fs/impl/local/s;
    //   210: astore_0
    //   211: aload_0
    //   212: ifnonnull +49 -> 261
    //   215: aload_3
    //   216: ifnull +7 -> 223
    //   219: aload_3
    //   220: invokevirtual 430	java/io/InputStream:close	()V
    //   223: aload 4
    //   225: ifnull +8 -> 233
    //   228: aload 4
    //   230: invokevirtual 431	java/io/OutputStream:close	()V
    //   233: aload 8
    //   235: invokevirtual 432	android/net/LocalSocket:close	()V
    //   238: aload 7
    //   240: monitorexit
    //   241: iconst_0
    //   242: ireturn
    //   243: aload 4
    //   245: astore 5
    //   247: iconst_1
    //   248: invokestatic 70	com/estrongs/fs/impl/local/m:a	(Z)Lcom/estrongs/fs/impl/local/s;
    //   251: astore_0
    //   252: goto -41 -> 211
    //   255: astore_0
    //   256: aload 7
    //   258: monitorexit
    //   259: iconst_0
    //   260: ireturn
    //   261: aload 4
    //   263: astore 5
    //   265: new 72	com/estrongs/fs/impl/local/p
    //   268: dup
    //   269: invokespecial 73	com/estrongs/fs/impl/local/p:<init>	()V
    //   272: astore 9
    //   274: aload 4
    //   276: astore 5
    //   278: aload 9
    //   280: aload_0
    //   281: putfield 75	com/estrongs/fs/impl/local/p:a	Ljava/lang/Object;
    //   284: aload 4
    //   286: astore 5
    //   288: aload 9
    //   290: aload 6
    //   292: putfield 79	com/estrongs/fs/impl/local/p:b	Ljava/lang/Object;
    //   295: aload 4
    //   297: astore 5
    //   299: aload 9
    //   301: bipush 17
    //   303: invokestatic 85	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   306: putfield 86	com/estrongs/fs/impl/local/p:c	Ljava/lang/Object;
    //   309: aload 4
    //   311: astore 5
    //   313: aload 9
    //   315: invokevirtual 88	com/estrongs/fs/impl/local/p:b	()V
    //   318: aload 4
    //   320: astore 5
    //   322: aload 9
    //   324: getfield 548	com/estrongs/fs/impl/local/p:e	Ljava/lang/Object;
    //   327: checkcast 93	java/lang/Boolean
    //   330: invokevirtual 97	java/lang/Boolean:booleanValue	()Z
    //   333: ifeq +105 -> 438
    //   336: aload 4
    //   338: astore 5
    //   340: aload_0
    //   341: invokestatic 100	com/estrongs/fs/impl/local/m:b	(Lcom/estrongs/fs/impl/local/s;)V
    //   344: aload 4
    //   346: astore 5
    //   348: new 121	java/lang/StringBuilder
    //   351: dup
    //   352: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   355: ldc_w 959
    //   358: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: iload_1
    //   362: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   365: ldc_w 658
    //   368: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: invokestatic 463	com/estrongs/android/pop/ac:a	()I
    //   374: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   377: ldc_w 660
    //   380: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: bipush 14
    //   385: invokevirtual 654	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   388: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   391: invokestatic 194	com/estrongs/android/util/x:a	(Ljava/lang/String;)V
    //   394: aload 4
    //   396: astore 5
    //   398: aload 9
    //   400: invokevirtual 91	com/estrongs/fs/impl/local/p:c	()Ljava/lang/Object;
    //   403: checkcast 93	java/lang/Boolean
    //   406: invokevirtual 97	java/lang/Boolean:booleanValue	()Z
    //   409: istore_2
    //   410: aload_3
    //   411: ifnull +7 -> 418
    //   414: aload_3
    //   415: invokevirtual 430	java/io/InputStream:close	()V
    //   418: aload 4
    //   420: ifnull +8 -> 428
    //   423: aload 4
    //   425: invokevirtual 431	java/io/OutputStream:close	()V
    //   428: aload 8
    //   430: invokevirtual 432	android/net/LocalSocket:close	()V
    //   433: aload 7
    //   435: monitorexit
    //   436: iload_2
    //   437: ireturn
    //   438: aload 4
    //   440: astore 5
    //   442: aload_0
    //   443: invokestatic 115	com/estrongs/fs/impl/local/m:a	(Lcom/estrongs/fs/impl/local/s;)V
    //   446: goto -102 -> 344
    //   449: astore_0
    //   450: aload 4
    //   452: astore_0
    //   453: aload_3
    //   454: ifnull +7 -> 461
    //   457: aload_3
    //   458: invokevirtual 430	java/io/InputStream:close	()V
    //   461: aload_0
    //   462: ifnull +7 -> 469
    //   465: aload_0
    //   466: invokevirtual 431	java/io/OutputStream:close	()V
    //   469: aload 8
    //   471: invokevirtual 432	android/net/LocalSocket:close	()V
    //   474: aload 7
    //   476: monitorexit
    //   477: iconst_0
    //   478: ireturn
    //   479: astore_0
    //   480: aload 7
    //   482: monitorexit
    //   483: iconst_0
    //   484: ireturn
    //   485: iload_1
    //   486: ifne +93 -> 579
    //   489: aload_3
    //   490: ifnull +7 -> 497
    //   493: aload_3
    //   494: invokevirtual 430	java/io/InputStream:close	()V
    //   497: aload 4
    //   499: ifnull +8 -> 507
    //   502: aload 4
    //   504: invokevirtual 431	java/io/OutputStream:close	()V
    //   507: aload 8
    //   509: invokevirtual 432	android/net/LocalSocket:close	()V
    //   512: aload 7
    //   514: monitorexit
    //   515: iload_2
    //   516: ireturn
    //   517: astore_0
    //   518: aload 7
    //   520: monitorexit
    //   521: iconst_0
    //   522: ireturn
    //   523: astore_0
    //   524: aload 7
    //   526: monitorexit
    //   527: iconst_0
    //   528: ireturn
    //   529: astore_0
    //   530: aconst_null
    //   531: astore_3
    //   532: aload_3
    //   533: ifnull +7 -> 540
    //   536: aload_3
    //   537: invokevirtual 430	java/io/InputStream:close	()V
    //   540: aload 5
    //   542: ifnull +8 -> 550
    //   545: aload 5
    //   547: invokevirtual 431	java/io/OutputStream:close	()V
    //   550: aload 8
    //   552: invokevirtual 432	android/net/LocalSocket:close	()V
    //   555: aload_0
    //   556: athrow
    //   557: astore_0
    //   558: aload 7
    //   560: monitorexit
    //   561: iconst_0
    //   562: ireturn
    //   563: astore_0
    //   564: goto -32 -> 532
    //   567: astore_0
    //   568: aconst_null
    //   569: astore_0
    //   570: goto -117 -> 453
    //   573: astore_0
    //   574: aconst_null
    //   575: astore_0
    //   576: goto -123 -> 453
    //   579: iconst_0
    //   580: istore_2
    //   581: goto -92 -> 489
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	584	0	paramString	String
    //   98	388	1	n	int
    //   9	572	2	bool	boolean
    //   7	530	3	localObject1	Object
    //   4	499	4	localOutputStream	OutputStream
    //   1	545	5	localObject2	Object
    //   53	238	6	localObject3	Object
    //   13	546	7	localObject4	Object
    //   30	521	8	localLocalSocket	LocalSocket
    //   272	127	9	localp	p
    // Exception table:
    //   from	to	target	type
    //   22	25	42	finally
    //   27	32	42	finally
    //   37	40	42	finally
    //   43	46	42	finally
    //   219	223	42	finally
    //   228	233	42	finally
    //   233	238	42	finally
    //   238	241	42	finally
    //   256	259	42	finally
    //   414	418	42	finally
    //   423	428	42	finally
    //   428	433	42	finally
    //   433	436	42	finally
    //   457	461	42	finally
    //   465	469	42	finally
    //   469	474	42	finally
    //   474	477	42	finally
    //   480	483	42	finally
    //   493	497	42	finally
    //   502	507	42	finally
    //   507	512	42	finally
    //   512	515	42	finally
    //   518	521	42	finally
    //   524	527	42	finally
    //   536	540	42	finally
    //   545	550	42	finally
    //   550	555	42	finally
    //   555	557	42	finally
    //   558	561	42	finally
    //   219	223	255	java/io/IOException
    //   228	233	255	java/io/IOException
    //   233	238	255	java/io/IOException
    //   73	80	449	java/io/IOException
    //   84	90	449	java/io/IOException
    //   94	99	449	java/io/IOException
    //   103	149	449	java/io/IOException
    //   157	165	449	java/io/IOException
    //   169	191	449	java/io/IOException
    //   195	201	449	java/io/IOException
    //   205	211	449	java/io/IOException
    //   247	252	449	java/io/IOException
    //   265	274	449	java/io/IOException
    //   278	284	449	java/io/IOException
    //   288	295	449	java/io/IOException
    //   299	309	449	java/io/IOException
    //   313	318	449	java/io/IOException
    //   322	336	449	java/io/IOException
    //   340	344	449	java/io/IOException
    //   348	394	449	java/io/IOException
    //   398	410	449	java/io/IOException
    //   442	446	449	java/io/IOException
    //   414	418	479	java/io/IOException
    //   423	428	479	java/io/IOException
    //   428	433	479	java/io/IOException
    //   493	497	517	java/io/IOException
    //   502	507	517	java/io/IOException
    //   507	512	517	java/io/IOException
    //   457	461	523	java/io/IOException
    //   465	469	523	java/io/IOException
    //   469	474	523	java/io/IOException
    //   48	55	529	finally
    //   536	540	557	java/io/IOException
    //   545	550	557	java/io/IOException
    //   550	555	557	java/io/IOException
    //   62	69	563	finally
    //   73	80	563	finally
    //   84	90	563	finally
    //   94	99	563	finally
    //   103	149	563	finally
    //   157	165	563	finally
    //   169	191	563	finally
    //   195	201	563	finally
    //   205	211	563	finally
    //   247	252	563	finally
    //   265	274	563	finally
    //   278	284	563	finally
    //   288	295	563	finally
    //   299	309	563	finally
    //   313	318	563	finally
    //   322	336	563	finally
    //   340	344	563	finally
    //   348	394	563	finally
    //   398	410	563	finally
    //   442	446	563	finally
    //   48	55	567	java/io/IOException
    //   62	69	573	java/io/IOException
  }
  
  public static String[] l()
  {
    return d(false);
  }
  
  private static String m(String paramString)
  {
    return "\"" + paramString + "\"";
  }
  
  public static boolean m()
  {
    try
    {
      boolean bool = new File(e).exists();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public static void n()
  {
    m = true;
  }
  
  private static String o()
  {
    return ap.bB(ap.bB(e)) + "files/comm/su_port";
  }
  
  private static LocalSocket p()
  {
    try
    {
      LocalSocket localLocalSocket = e(false);
      return localLocalSocket;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  private static boolean q()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: invokestatic 408	com/estrongs/fs/impl/local/m:p	()Landroid/net/LocalSocket;
    //   5: astore 5
    //   7: aload 5
    //   9: ifnonnull +7 -> 16
    //   12: iconst_0
    //   13: istore_2
    //   14: iload_2
    //   15: ireturn
    //   16: aload 5
    //   18: invokevirtual 412	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   21: astore 4
    //   23: aload 5
    //   25: invokevirtual 411	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   28: astore 6
    //   30: aload 4
    //   32: sipush 204
    //   35: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   38: aload 4
    //   40: sipush 5000
    //   43: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   46: sipush 1024
    //   49: newarray <illegal type>
    //   51: astore 7
    //   53: ldc_w 343
    //   56: astore 4
    //   58: aload 6
    //   60: aload 7
    //   62: invokevirtual 709	java/io/InputStream:read	([B)I
    //   65: istore_0
    //   66: iload_0
    //   67: ifgt +66 -> 133
    //   70: getstatic 37	com/estrongs/fs/impl/local/m:a	Ljava/util/List;
    //   73: invokeinterface 967 1 0
    //   78: getstatic 39	com/estrongs/fs/impl/local/m:b	Ljava/util/List;
    //   81: invokeinterface 967 1 0
    //   86: aload 4
    //   88: ldc_w 351
    //   91: invokevirtual 826	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   94: astore 4
    //   96: iconst_0
    //   97: istore_0
    //   98: iload_0
    //   99: aload 4
    //   101: arraylength
    //   102: if_icmpge +179 -> 281
    //   105: aload 4
    //   107: iload_0
    //   108: aaload
    //   109: ldc_w 969
    //   112: invokevirtual 826	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   115: astore 5
    //   117: aload 5
    //   119: arraylength
    //   120: istore_1
    //   121: iload_1
    //   122: iconst_4
    //   123: if_icmpeq +67 -> 190
    //   126: iload_0
    //   127: iconst_1
    //   128: iadd
    //   129: istore_0
    //   130: goto -32 -> 98
    //   133: new 104	java/lang/String
    //   136: dup
    //   137: aload 7
    //   139: iconst_0
    //   140: iload_0
    //   141: invokespecial 972	java/lang/String:<init>	([BII)V
    //   144: astore 5
    //   146: new 121	java/lang/StringBuilder
    //   149: dup
    //   150: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   153: aload 4
    //   155: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: aload 5
    //   160: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: astore 5
    //   168: aload 5
    //   170: astore 4
    //   172: goto -114 -> 58
    //   175: astore 5
    //   177: ldc_w 343
    //   180: astore 4
    //   182: aload 5
    //   184: invokevirtual 294	java/lang/Exception:printStackTrace	()V
    //   187: goto -117 -> 70
    //   190: new 329	com/estrongs/fs/impl/local/v
    //   193: dup
    //   194: aconst_null
    //   195: invokespecial 975	com/estrongs/fs/impl/local/v:<init>	(Lcom/estrongs/fs/impl/local/n;)V
    //   198: astore 6
    //   200: aload 6
    //   202: aload 5
    //   204: iconst_0
    //   205: aaload
    //   206: invokevirtual 978	java/lang/String:trim	()Ljava/lang/String;
    //   209: putfield 333	com/estrongs/fs/impl/local/v:b	Ljava/lang/String;
    //   212: aload 6
    //   214: aload 5
    //   216: iconst_1
    //   217: aaload
    //   218: invokevirtual 978	java/lang/String:trim	()Ljava/lang/String;
    //   221: invokestatic 981	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   224: putfield 331	com/estrongs/fs/impl/local/v:a	I
    //   227: getstatic 39	com/estrongs/fs/impl/local/m:b	Ljava/util/List;
    //   230: aload 6
    //   232: invokeinterface 982 2 0
    //   237: pop
    //   238: aload 6
    //   240: aload 5
    //   242: iconst_2
    //   243: aaload
    //   244: invokevirtual 978	java/lang/String:trim	()Ljava/lang/String;
    //   247: putfield 333	com/estrongs/fs/impl/local/v:b	Ljava/lang/String;
    //   250: aload 6
    //   252: aload 5
    //   254: iconst_3
    //   255: aaload
    //   256: invokevirtual 978	java/lang/String:trim	()Ljava/lang/String;
    //   259: invokestatic 981	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   262: putfield 331	com/estrongs/fs/impl/local/v:a	I
    //   265: getstatic 37	com/estrongs/fs/impl/local/m:a	Ljava/util/List;
    //   268: aload 6
    //   270: invokeinterface 982 2 0
    //   275: pop
    //   276: goto -150 -> 126
    //   279: astore 4
    //   281: getstatic 37	com/estrongs/fs/impl/local/m:a	Ljava/util/List;
    //   284: invokeinterface 320 1 0
    //   289: iconst_2
    //   290: if_icmpge +5 -> 295
    //   293: iconst_0
    //   294: ireturn
    //   295: new 984	com/estrongs/fs/impl/local/o
    //   298: dup
    //   299: invokespecial 985	com/estrongs/fs/impl/local/o:<init>	()V
    //   302: astore 4
    //   304: getstatic 37	com/estrongs/fs/impl/local/m:a	Ljava/util/List;
    //   307: invokeinterface 989 1 0
    //   312: astore 5
    //   314: aload 5
    //   316: aload 4
    //   318: invokestatic 995	java/util/Arrays:sort	([Ljava/lang/Object;Ljava/util/Comparator;)V
    //   321: getstatic 37	com/estrongs/fs/impl/local/m:a	Ljava/util/List;
    //   324: invokeinterface 967 1 0
    //   329: getstatic 37	com/estrongs/fs/impl/local/m:a	Ljava/util/List;
    //   332: aload 5
    //   334: iconst_0
    //   335: aaload
    //   336: checkcast 329	com/estrongs/fs/impl/local/v
    //   339: invokeinterface 982 2 0
    //   344: pop
    //   345: iconst_1
    //   346: istore_0
    //   347: iload_0
    //   348: aload 5
    //   350: arraylength
    //   351: if_icmpge +77 -> 428
    //   354: getstatic 37	com/estrongs/fs/impl/local/m:a	Ljava/util/List;
    //   357: invokeinterface 320 1 0
    //   362: istore_1
    //   363: getstatic 37	com/estrongs/fs/impl/local/m:a	Ljava/util/List;
    //   366: invokeinterface 320 1 0
    //   371: iconst_1
    //   372: if_icmplt +49 -> 421
    //   375: aload 5
    //   377: iload_0
    //   378: aaload
    //   379: checkcast 329	com/estrongs/fs/impl/local/v
    //   382: getfield 331	com/estrongs/fs/impl/local/v:a	I
    //   385: getstatic 37	com/estrongs/fs/impl/local/m:a	Ljava/util/List;
    //   388: iload_1
    //   389: iconst_1
    //   390: isub
    //   391: invokeinterface 327 2 0
    //   396: checkcast 329	com/estrongs/fs/impl/local/v
    //   399: getfield 331	com/estrongs/fs/impl/local/v:a	I
    //   402: if_icmpeq +19 -> 421
    //   405: getstatic 37	com/estrongs/fs/impl/local/m:a	Ljava/util/List;
    //   408: aload 5
    //   410: iload_0
    //   411: aaload
    //   412: checkcast 329	com/estrongs/fs/impl/local/v
    //   415: invokeinterface 982 2 0
    //   420: pop
    //   421: iload_0
    //   422: iconst_1
    //   423: iadd
    //   424: istore_0
    //   425: goto -78 -> 347
    //   428: getstatic 39	com/estrongs/fs/impl/local/m:b	Ljava/util/List;
    //   431: invokeinterface 989 1 0
    //   436: astore 5
    //   438: aload 5
    //   440: aload 4
    //   442: invokestatic 995	java/util/Arrays:sort	([Ljava/lang/Object;Ljava/util/Comparator;)V
    //   445: getstatic 39	com/estrongs/fs/impl/local/m:b	Ljava/util/List;
    //   448: invokeinterface 967 1 0
    //   453: getstatic 39	com/estrongs/fs/impl/local/m:b	Ljava/util/List;
    //   456: aload 5
    //   458: iconst_0
    //   459: aaload
    //   460: checkcast 329	com/estrongs/fs/impl/local/v
    //   463: invokeinterface 982 2 0
    //   468: pop
    //   469: iconst_1
    //   470: istore_0
    //   471: iload_3
    //   472: istore_2
    //   473: iload_0
    //   474: aload 5
    //   476: arraylength
    //   477: if_icmpge -463 -> 14
    //   480: getstatic 39	com/estrongs/fs/impl/local/m:b	Ljava/util/List;
    //   483: invokeinterface 320 1 0
    //   488: istore_1
    //   489: iload_1
    //   490: iconst_1
    //   491: if_icmplt +49 -> 540
    //   494: aload 5
    //   496: iload_0
    //   497: aaload
    //   498: checkcast 329	com/estrongs/fs/impl/local/v
    //   501: getfield 331	com/estrongs/fs/impl/local/v:a	I
    //   504: getstatic 39	com/estrongs/fs/impl/local/m:b	Ljava/util/List;
    //   507: iload_1
    //   508: iconst_1
    //   509: isub
    //   510: invokeinterface 327 2 0
    //   515: checkcast 329	com/estrongs/fs/impl/local/v
    //   518: getfield 331	com/estrongs/fs/impl/local/v:a	I
    //   521: if_icmpeq +19 -> 540
    //   524: getstatic 39	com/estrongs/fs/impl/local/m:b	Ljava/util/List;
    //   527: aload 5
    //   529: iload_0
    //   530: aaload
    //   531: checkcast 329	com/estrongs/fs/impl/local/v
    //   534: invokeinterface 982 2 0
    //   539: pop
    //   540: iload_0
    //   541: iconst_1
    //   542: iadd
    //   543: istore_0
    //   544: goto -73 -> 471
    //   547: astore 5
    //   549: goto -367 -> 182
    // Local variable table:
    //   start	length	slot	name	signature
    //   65	479	0	n	int
    //   120	390	1	i1	int
    //   13	460	2	bool1	boolean
    //   1	471	3	bool2	boolean
    //   21	160	4	localObject1	Object
    //   279	1	4	localException1	Exception
    //   302	139	4	localo	o
    //   5	164	5	localObject2	Object
    //   175	78	5	localException2	Exception
    //   312	216	5	arrayOfObject	Object[]
    //   547	1	5	localException3	Exception
    //   28	241	6	localObject3	Object
    //   51	87	7	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   16	53	175	java/lang/Exception
    //   86	96	279	java/lang/Exception
    //   98	121	279	java/lang/Exception
    //   190	276	279	java/lang/Exception
    //   58	66	547	java/lang/Exception
    //   133	168	547	java/lang/Exception
  }
  
  /* Error */
  private static String r()
  {
    // Byte code:
    //   0: invokestatic 408	com/estrongs/fs/impl/local/m:p	()Landroid/net/LocalSocket;
    //   3: astore 4
    //   5: aload 4
    //   7: ifnonnull +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: aload 4
    //   14: invokevirtual 411	android/net/LocalSocket:getInputStream	()Ljava/io/InputStream;
    //   17: astore_1
    //   18: aload 4
    //   20: invokevirtual 412	android/net/LocalSocket:getOutputStream	()Ljava/io/OutputStream;
    //   23: astore_2
    //   24: aload_2
    //   25: iconst_5
    //   26: invokestatic 369	com/estrongs/fs/impl/local/m:a	(Ljava/io/OutputStream;I)V
    //   29: aload_1
    //   30: invokestatic 419	com/estrongs/fs/impl/local/m:c	(Ljava/io/InputStream;)I
    //   33: istore_0
    //   34: iload_0
    //   35: ifeq +29 -> 64
    //   38: aload_1
    //   39: ifnull +7 -> 46
    //   42: aload_1
    //   43: invokevirtual 430	java/io/InputStream:close	()V
    //   46: aload_2
    //   47: ifnull +7 -> 54
    //   50: aload_2
    //   51: invokevirtual 431	java/io/OutputStream:close	()V
    //   54: aload 4
    //   56: invokevirtual 432	android/net/LocalSocket:close	()V
    //   59: aconst_null
    //   60: areturn
    //   61: astore_1
    //   62: aconst_null
    //   63: areturn
    //   64: aload_1
    //   65: invokestatic 416	com/estrongs/fs/impl/local/m:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   68: astore_3
    //   69: aload_3
    //   70: ifnull +38 -> 108
    //   73: aload_3
    //   74: invokevirtual 556	java/lang/String:length	()I
    //   77: istore_0
    //   78: iload_0
    //   79: ifne +29 -> 108
    //   82: aload_1
    //   83: ifnull +7 -> 90
    //   86: aload_1
    //   87: invokevirtual 430	java/io/InputStream:close	()V
    //   90: aload_2
    //   91: ifnull +7 -> 98
    //   94: aload_2
    //   95: invokevirtual 431	java/io/OutputStream:close	()V
    //   98: aload 4
    //   100: invokevirtual 432	android/net/LocalSocket:close	()V
    //   103: aconst_null
    //   104: areturn
    //   105: astore_1
    //   106: aconst_null
    //   107: areturn
    //   108: aload_1
    //   109: ifnull +7 -> 116
    //   112: aload_1
    //   113: invokevirtual 430	java/io/InputStream:close	()V
    //   116: aload_2
    //   117: ifnull +7 -> 124
    //   120: aload_2
    //   121: invokevirtual 431	java/io/OutputStream:close	()V
    //   124: aload 4
    //   126: invokevirtual 432	android/net/LocalSocket:close	()V
    //   129: aload_3
    //   130: areturn
    //   131: astore_1
    //   132: aconst_null
    //   133: astore_1
    //   134: aconst_null
    //   135: astore_2
    //   136: aload_2
    //   137: ifnull +7 -> 144
    //   140: aload_2
    //   141: invokevirtual 430	java/io/InputStream:close	()V
    //   144: aload_1
    //   145: ifnull +7 -> 152
    //   148: aload_1
    //   149: invokevirtual 431	java/io/OutputStream:close	()V
    //   152: aload 4
    //   154: invokevirtual 432	android/net/LocalSocket:close	()V
    //   157: aconst_null
    //   158: areturn
    //   159: astore_1
    //   160: aconst_null
    //   161: areturn
    //   162: astore_3
    //   163: aconst_null
    //   164: astore_2
    //   165: aconst_null
    //   166: astore_1
    //   167: aload_1
    //   168: ifnull +7 -> 175
    //   171: aload_1
    //   172: invokevirtual 430	java/io/InputStream:close	()V
    //   175: aload_2
    //   176: ifnull +7 -> 183
    //   179: aload_2
    //   180: invokevirtual 431	java/io/OutputStream:close	()V
    //   183: aload 4
    //   185: invokevirtual 432	android/net/LocalSocket:close	()V
    //   188: aload_3
    //   189: athrow
    //   190: astore_1
    //   191: aconst_null
    //   192: areturn
    //   193: astore_3
    //   194: aconst_null
    //   195: astore_2
    //   196: goto -29 -> 167
    //   199: astore_3
    //   200: goto -33 -> 167
    //   203: astore_2
    //   204: aconst_null
    //   205: astore_3
    //   206: aload_1
    //   207: astore_2
    //   208: aload_3
    //   209: astore_1
    //   210: goto -74 -> 136
    //   213: astore_3
    //   214: aload_1
    //   215: astore_3
    //   216: aload_2
    //   217: astore_1
    //   218: aload_3
    //   219: astore_2
    //   220: goto -84 -> 136
    //   223: astore_1
    //   224: aconst_null
    //   225: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   33	46	0	n	int
    //   17	26	1	localInputStream	InputStream
    //   61	26	1	localIOException1	IOException
    //   105	8	1	localIOException2	IOException
    //   131	1	1	localIOException3	IOException
    //   133	16	1	localObject1	Object
    //   159	1	1	localIOException4	IOException
    //   166	6	1	localObject2	Object
    //   190	17	1	localIOException5	IOException
    //   209	9	1	localObject3	Object
    //   223	1	1	localIOException6	IOException
    //   23	173	2	localOutputStream	OutputStream
    //   203	1	2	localIOException7	IOException
    //   207	13	2	localObject4	Object
    //   68	62	3	str	String
    //   162	27	3	localObject5	Object
    //   193	1	3	localObject6	Object
    //   199	1	3	localObject7	Object
    //   205	4	3	localObject8	Object
    //   213	1	3	localIOException8	IOException
    //   215	4	3	localObject9	Object
    //   3	181	4	localLocalSocket	LocalSocket
    // Exception table:
    //   from	to	target	type
    //   42	46	61	java/io/IOException
    //   50	54	61	java/io/IOException
    //   54	59	61	java/io/IOException
    //   86	90	105	java/io/IOException
    //   94	98	105	java/io/IOException
    //   98	103	105	java/io/IOException
    //   12	18	131	java/io/IOException
    //   140	144	159	java/io/IOException
    //   148	152	159	java/io/IOException
    //   152	157	159	java/io/IOException
    //   12	18	162	finally
    //   171	175	190	java/io/IOException
    //   179	183	190	java/io/IOException
    //   183	188	190	java/io/IOException
    //   18	24	193	finally
    //   24	34	199	finally
    //   64	69	199	finally
    //   73	78	199	finally
    //   18	24	203	java/io/IOException
    //   24	34	213	java/io/IOException
    //   64	69	213	java/io/IOException
    //   73	78	213	java/io/IOException
    //   112	116	223	java/io/IOException
    //   120	124	223	java/io/IOException
    //   124	129	223	java/io/IOException
  }
  
  private static String s()
  {
    Object localObject = j.k("/sdcard");
    double d1 = (float)(localObject[0] * localObject[2]) / 1024.0F;
    long l1 = localObject[1];
    double d2 = (float)(localObject[2] * l1) / 1024.0F;
    localObject = NumberFormat.getInstance();
    ((NumberFormat)localObject).setMaximumFractionDigits(0);
    return "T: " + ((NumberFormat)localObject).format(d1 / 1024.0D) + "M" + " A: " + ((NumberFormat)localObject).format(d2 / 1024.0D) + "M";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */