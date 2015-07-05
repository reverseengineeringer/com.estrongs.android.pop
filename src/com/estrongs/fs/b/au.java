package com.estrongs.fs.b;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import com.estrongs.a.a;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.a.a.p;
import com.estrongs.android.ui.dialog.jw;
import java.lang.reflect.Array;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.ArrayList;
import java.util.Enumeration;

public class au
  extends a
{
  private static final String a = au.class.getSimpleName();
  private static int b = 64;
  private static int c = 256;
  private static String[][] d = (String[][])Array.newInstance(String.class, new int[] { c / b, b });
  private byte[] e;
  private long f;
  private Context g;
  private ArrayList<String> h = new ArrayList();
  
  private au(Context paramContext)
  {
    canRestart = false;
    e = a(paramContext);
    g = paramContext;
    setDescription(paramContext.getString(2131427446));
  }
  
  public static au a(Activity paramActivity, p paramp, l paraml, boolean paramBoolean)
  {
    au localau = new au(paramActivity);
    localau.addTaskStatusChangeListener(paramp);
    localau.addProgressListener(paraml);
    if (paramBoolean)
    {
      new jw(paramActivity, paramActivity.getString(2131427446), localau).show();
      localau.execute();
      return localau;
    }
    localau.execute();
    return localau;
  }
  
  public static void a(byte[] paramArrayOfByte, String paramString)
  {
    arrayOfString = d;
    if (paramArrayOfByte[3] >= 0) {}
    for (int i = paramArrayOfByte[3];; i = c + paramArrayOfByte[3]) {
      try
      {
        d[(i / b)][(i % b)] = b(paramArrayOfByte, paramString);
        return;
      }
      finally {}
    }
  }
  
  @SuppressLint({"NewApi"})
  public static byte[] a(Context paramContext)
  {
    int m = Build.VERSION.SDK_INT;
    paramContext = (WifiManager)paramContext.getSystemService("wifi");
    if (paramContext != null)
    {
      paramContext = paramContext.getConnectionInfo();
      if (paramContext != null)
      {
        int n = paramContext.getIpAddress();
        if (n != 0)
        {
          int i = (byte)(n >> 24);
          int j = (byte)(n >> 16);
          int k = (byte)(n >> 8);
          return new byte[] { (byte)(n >> 0), k, j, i };
        }
      }
    }
    try
    {
      Object localObject2;
      do
      {
        paramContext = NetworkInterface.getNetworkInterfaces();
        Object localObject1;
        while (!((Enumeration)localObject1).hasMoreElements())
        {
          do
          {
            do
            {
              if (!paramContext.hasMoreElements()) {
                break;
              }
              localObject1 = (NetworkInterface)paramContext.nextElement();
              localObject2 = ((NetworkInterface)localObject1).getName().toUpperCase();
            } while ((((String)localObject2).equalsIgnoreCase("lo")) || (((String)localObject2).startsWith("RMNET")) || (((String)localObject2).startsWith("USB")) || (((String)localObject2).startsWith("PPP")));
            if (m < 9) {
              break;
            }
            localObject2 = ((NetworkInterface)localObject1).getHardwareAddress();
          } while ((localObject2 == null) || (localObject2.length != 6) || (!((NetworkInterface)localObject1).isUp()));
          localObject1 = ((NetworkInterface)localObject1).getInetAddresses();
        }
        localObject2 = (InetAddress)((Enumeration)localObject1).nextElement();
      } while ((((InetAddress)localObject2).isLoopbackAddress()) || ((localObject2 instanceof Inet6Address)));
      paramContext = ((InetAddress)localObject2).getAddress();
      return paramContext;
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  private static String b(byte[] paramArrayOfByte, String paramString)
  {
    int i;
    int j;
    label20:
    int k;
    if (paramArrayOfByte[0] >= 0)
    {
      i = paramArrayOfByte[0];
      if (paramArrayOfByte[1] < 0) {
        break label111;
      }
      j = paramArrayOfByte[1];
      if (paramArrayOfByte[2] < 0) {
        break label122;
      }
      k = paramArrayOfByte[2];
      label31:
      if (paramArrayOfByte[3] < 0) {
        break label134;
      }
    }
    label111:
    label122:
    label134:
    for (int m = paramArrayOfByte[3];; m = c + paramArrayOfByte[3])
    {
      return "" + i + "." + j + "." + k + "." + m + ":" + paramString;
      i = c + paramArrayOfByte[0];
      break;
      j = c + paramArrayOfByte[1];
      break label20;
      k = c + paramArrayOfByte[2];
      break label31;
    }
  }
  
  public static String[] b(Context paramContext)
  {
    Object localObject2 = null;
    int n = 0;
    paramContext = a(paramContext);
    String[][] arrayOfString = d;
    int i;
    int k;
    int m;
    Object localObject1;
    if (paramContext != null)
    {
      if (paramContext[0] >= 0)
      {
        i = paramContext[0];
        break label535;
      }
      for (;;)
      {
        label104:
        label162:
        label203:
        label214:
        label225:
        label245:
        try
        {
          String str = "" + i + "." + j + "." + k;
          localObject1 = str + "." + m;
          i = 0;
          if (i >= c) {
            break;
          }
          if ((d[(i / b)][(i % b)] == null) || (d[(i / b)][(i % b)].startsWith(str))) {
            break label580;
          }
          paramContext = (Context)localObject1;
          localObject1 = localObject2;
        }
        finally {}
        if (i < c)
        {
          d[(i / b)][(i % b)] = null;
          i += 1;
          continue;
          i = c + paramContext[0];
          break label535;
          j = c + paramContext[1];
          break label545;
          k = c + paramContext[2];
          break label555;
          m = c + paramContext[3];
        }
        else
        {
          return new String[0];
          if (j < c)
          {
            k = i;
            if (d[(j / b)][(j % b)] == null) {
              break label594;
            }
            k = d[(j / b)][(j % b)].indexOf(":");
            if (k >= 0) {}
            for (localObject1 = d[(j / b)][(j % b)].substring(0, k);; localObject1 = d[(j / b)][(j % b)])
            {
              k = i;
              if (((String)localObject1).equals(paramContext)) {
                break;
              }
              k = i + 1;
              break;
            }
          }
          localObject2 = new String[i];
          i = 0;
        }
      }
    }
    for (int j = 0;; j = k)
    {
      if (i < c)
      {
        k = j;
        if (d[(i / b)][(i % b)] != null)
        {
          k = d[(i / b)][(i % b)].indexOf(":");
          if (k >= 0) {}
          for (localObject1 = d[(i / b)][(i % b)].substring(0, k);; localObject1 = d[(i / b)][(i % b)])
          {
            k = j;
            if (((String)localObject1).equals(paramContext)) {
              break;
            }
            localObject2[j] = d[(i / b)][(i % b)];
            k = j + 1;
            break;
          }
        }
      }
      else
      {
        return (String[])localObject2;
        localObject2 = localObject1;
        localObject1 = paramContext;
        paramContext = (Context)localObject2;
        break label569;
        localObject2 = null;
        localObject1 = paramContext;
        paramContext = (Context)localObject2;
        break label569;
        label535:
        if (paramContext[1] < 0) {
          break label203;
        }
        j = paramContext[1];
        label545:
        if (paramContext[2] < 0) {
          break label214;
        }
        k = paramContext[2];
        label555:
        if (paramContext[3] < 0) {
          break label225;
        }
        m = paramContext[3];
        break;
        label569:
        if (localObject1 == null)
        {
          i = n;
          break label162;
          label580:
          i += 1;
          break label104;
        }
        j = 0;
        i = 0;
        break label245;
        label594:
        j += 1;
        i = k;
        break label245;
      }
      i += 1;
    }
  }
  
  public boolean canPause()
  {
    return false;
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    switch (paramInt)
    {
    default: 
      super.handleMessage(paramInt, paramVarArgs);
      return;
    }
    m localm = processData;
    f += ((Long)paramVarArgs[0]).longValue();
    processData.a = ((String)paramVarArgs[1]);
    onProgress(processData);
  }
  
  /* Error */
  public boolean task()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 64	com/estrongs/fs/b/au:e	[B
    //   4: ifnonnull +5 -> 9
    //   7: iconst_0
    //   8: ireturn
    //   9: invokestatic 260	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   12: astore 10
    //   14: new 262	com/estrongs/android/pop/zeroconf/w
    //   17: dup
    //   18: invokestatic 267	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   21: iconst_1
    //   22: invokespecial 270	com/estrongs/android/pop/zeroconf/w:<init>	(Landroid/content/Context;I)V
    //   25: astore 8
    //   27: aload 8
    //   29: new 272	com/estrongs/fs/b/av
    //   32: dup
    //   33: aload_0
    //   34: invokespecial 275	com/estrongs/fs/b/av:<init>	(Lcom/estrongs/fs/b/au;)V
    //   37: invokevirtual 278	com/estrongs/android/pop/zeroconf/w:a	(Lcom/estrongs/android/pop/zeroconf/v;)V
    //   40: new 52	java/util/ArrayList
    //   43: dup
    //   44: invokespecial 53	java/util/ArrayList:<init>	()V
    //   47: astore 9
    //   49: aload 9
    //   51: getstatic 279	com/estrongs/android/pop/zeroconf/w:a	Ljava/lang/String;
    //   54: invokevirtual 282	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   57: pop
    //   58: aload 8
    //   60: aload 9
    //   62: iconst_0
    //   63: invokevirtual 285	com/estrongs/android/pop/zeroconf/w:a	(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    //   66: pop
    //   67: iconst_0
    //   68: istore_1
    //   69: aload 10
    //   71: ifnull +55 -> 126
    //   74: aload 10
    //   76: invokevirtual 288	com/estrongs/a/a:taskStopped	()Z
    //   79: istore 7
    //   81: iload 7
    //   83: ifeq +43 -> 126
    //   86: aload 8
    //   88: ifnull -81 -> 7
    //   91: aload 8
    //   93: invokevirtual 290	com/estrongs/android/pop/zeroconf/w:b	()V
    //   96: iconst_0
    //   97: ireturn
    //   98: astore 9
    //   100: aconst_null
    //   101: astore 8
    //   103: aload 9
    //   105: invokevirtual 293	java/lang/Exception:printStackTrace	()V
    //   108: aload 8
    //   110: ifnull +377 -> 487
    //   113: aload 8
    //   115: invokevirtual 290	com/estrongs/android/pop/zeroconf/w:b	()V
    //   118: aconst_null
    //   119: astore 8
    //   121: iconst_0
    //   122: istore_1
    //   123: goto -54 -> 69
    //   126: aload_0
    //   127: getfield 64	com/estrongs/fs/b/au:e	[B
    //   130: iconst_0
    //   131: baload
    //   132: iflt +180 -> 312
    //   135: aload_0
    //   136: getfield 64	com/estrongs/fs/b/au:e	[B
    //   139: iconst_0
    //   140: baload
    //   141: istore_2
    //   142: aload_0
    //   143: getfield 64	com/estrongs/fs/b/au:e	[B
    //   146: iconst_1
    //   147: baload
    //   148: iflt +178 -> 326
    //   151: aload_0
    //   152: getfield 64	com/estrongs/fs/b/au:e	[B
    //   155: iconst_1
    //   156: baload
    //   157: istore_3
    //   158: aload_0
    //   159: getfield 64	com/estrongs/fs/b/au:e	[B
    //   162: iconst_2
    //   163: baload
    //   164: iflt +176 -> 340
    //   167: aload_0
    //   168: getfield 64	com/estrongs/fs/b/au:e	[B
    //   171: iconst_2
    //   172: baload
    //   173: istore 4
    //   175: aload 10
    //   177: iconst_2
    //   178: iconst_2
    //   179: anewarray 295	java/lang/Object
    //   182: dup
    //   183: iconst_0
    //   184: lconst_1
    //   185: invokestatic 299	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   188: aastore
    //   189: dup
    //   190: iconst_1
    //   191: aload_0
    //   192: getfield 66	com/estrongs/fs/b/au:g	Landroid/content/Context;
    //   195: ldc_w 300
    //   198: invokevirtual 73	android/content/Context:getString	(I)Ljava/lang/String;
    //   201: aastore
    //   202: invokevirtual 303	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   205: getstatic 45	com/estrongs/fs/b/au:d	[[Ljava/lang/String;
    //   208: astore 9
    //   210: aload 9
    //   212: monitorenter
    //   213: aload_0
    //   214: lconst_0
    //   215: putfield 197	com/estrongs/fs/b/au:f	J
    //   218: aload 9
    //   220: monitorexit
    //   221: iconst_0
    //   222: istore 5
    //   224: iload 5
    //   226: getstatic 32	com/estrongs/fs/b/au:b	I
    //   229: if_icmpge +170 -> 399
    //   232: getstatic 32	com/estrongs/fs/b/au:b	I
    //   235: iload_1
    //   236: imul
    //   237: iload 5
    //   239: iadd
    //   240: istore 6
    //   242: new 305	com/estrongs/fs/b/ax
    //   245: dup
    //   246: aload_0
    //   247: new 199	java/lang/StringBuilder
    //   250: dup
    //   251: invokespecial 200	java/lang/StringBuilder:<init>	()V
    //   254: ldc -54
    //   256: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: iload_2
    //   260: invokevirtual 209	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   263: ldc -45
    //   265: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: iload_3
    //   269: invokevirtual 209	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   272: ldc -45
    //   274: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: iload 4
    //   279: invokevirtual 209	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   282: ldc -45
    //   284: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: iload 6
    //   289: invokevirtual 209	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   292: invokevirtual 216	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   295: iload 6
    //   297: invokespecial 308	com/estrongs/fs/b/ax:<init>	(Lcom/estrongs/fs/b/au;Ljava/lang/String;I)V
    //   300: invokevirtual 311	com/estrongs/fs/b/ax:start	()V
    //   303: iload 5
    //   305: iconst_1
    //   306: iadd
    //   307: istore 5
    //   309: goto -85 -> 224
    //   312: getstatic 34	com/estrongs/fs/b/au:c	I
    //   315: aload_0
    //   316: getfield 64	com/estrongs/fs/b/au:e	[B
    //   319: iconst_0
    //   320: baload
    //   321: iadd
    //   322: istore_2
    //   323: goto -181 -> 142
    //   326: getstatic 34	com/estrongs/fs/b/au:c	I
    //   329: aload_0
    //   330: getfield 64	com/estrongs/fs/b/au:e	[B
    //   333: iconst_1
    //   334: baload
    //   335: iadd
    //   336: istore_3
    //   337: goto -179 -> 158
    //   340: getstatic 34	com/estrongs/fs/b/au:c	I
    //   343: istore 4
    //   345: aload_0
    //   346: getfield 64	com/estrongs/fs/b/au:e	[B
    //   349: iconst_2
    //   350: baload
    //   351: istore 5
    //   353: iload 4
    //   355: iload 5
    //   357: iadd
    //   358: istore 4
    //   360: goto -185 -> 175
    //   363: astore 10
    //   365: aload 9
    //   367: monitorexit
    //   368: aload 10
    //   370: athrow
    //   371: astore 9
    //   373: aload 9
    //   375: invokevirtual 293	java/lang/Exception:printStackTrace	()V
    //   378: aload 8
    //   380: ifnull -373 -> 7
    //   383: aload 8
    //   385: invokevirtual 290	com/estrongs/android/pop/zeroconf/w:b	()V
    //   388: iconst_0
    //   389: ireturn
    //   390: aload 9
    //   392: monitorexit
    //   393: ldc2_w 312
    //   396: invokestatic 319	java/lang/Thread:sleep	(J)V
    //   399: getstatic 45	com/estrongs/fs/b/au:d	[[Ljava/lang/String;
    //   402: astore 9
    //   404: aload 9
    //   406: monitorenter
    //   407: aload_0
    //   408: getfield 197	com/estrongs/fs/b/au:f	J
    //   411: getstatic 32	com/estrongs/fs/b/au:b	I
    //   414: i2l
    //   415: lcmp
    //   416: ifne -26 -> 390
    //   419: aload 9
    //   421: monitorexit
    //   422: iload_1
    //   423: iconst_1
    //   424: iadd
    //   425: istore_1
    //   426: getstatic 34	com/estrongs/fs/b/au:c	I
    //   429: getstatic 32	com/estrongs/fs/b/au:b	I
    //   432: idiv
    //   433: istore_2
    //   434: iload_1
    //   435: iload_2
    //   436: if_icmplt +38 -> 474
    //   439: aload 8
    //   441: ifnull +8 -> 449
    //   444: aload 8
    //   446: invokevirtual 290	com/estrongs/android/pop/zeroconf/w:b	()V
    //   449: iconst_1
    //   450: ireturn
    //   451: astore 10
    //   453: aload 9
    //   455: monitorexit
    //   456: aload 10
    //   458: athrow
    //   459: astore 9
    //   461: aload 8
    //   463: ifnull +8 -> 471
    //   466: aload 8
    //   468: invokevirtual 290	com/estrongs/android/pop/zeroconf/w:b	()V
    //   471: aload 9
    //   473: athrow
    //   474: goto -405 -> 69
    //   477: astore 9
    //   479: goto -80 -> 399
    //   482: astore 9
    //   484: goto -381 -> 103
    //   487: iconst_0
    //   488: istore_1
    //   489: goto -420 -> 69
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	492	0	this	au
    //   68	421	1	i	int
    //   141	296	2	j	int
    //   157	180	3	k	int
    //   173	186	4	m	int
    //   222	136	5	n	int
    //   240	56	6	i1	int
    //   79	3	7	bool	boolean
    //   25	442	8	localw	com.estrongs.android.pop.zeroconf.w
    //   47	14	9	localArrayList	ArrayList
    //   98	6	9	localException1	Exception
    //   208	158	9	arrayOfString1	String[][]
    //   371	20	9	localException2	Exception
    //   402	52	9	arrayOfString2	String[][]
    //   459	13	9	localObject1	Object
    //   477	1	9	localInterruptedException	InterruptedException
    //   482	1	9	localException3	Exception
    //   12	164	10	locala	a
    //   363	6	10	localObject2	Object
    //   451	6	10	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   14	27	98	java/lang/Exception
    //   213	221	363	finally
    //   365	368	363	finally
    //   74	81	371	java/lang/Exception
    //   126	142	371	java/lang/Exception
    //   142	158	371	java/lang/Exception
    //   158	175	371	java/lang/Exception
    //   175	213	371	java/lang/Exception
    //   224	303	371	java/lang/Exception
    //   312	323	371	java/lang/Exception
    //   326	337	371	java/lang/Exception
    //   340	353	371	java/lang/Exception
    //   368	371	371	java/lang/Exception
    //   393	399	371	java/lang/Exception
    //   399	407	371	java/lang/Exception
    //   426	434	371	java/lang/Exception
    //   456	459	371	java/lang/Exception
    //   390	393	451	finally
    //   407	422	451	finally
    //   453	456	451	finally
    //   74	81	459	finally
    //   126	142	459	finally
    //   142	158	459	finally
    //   158	175	459	finally
    //   175	213	459	finally
    //   224	303	459	finally
    //   312	323	459	finally
    //   326	337	459	finally
    //   340	353	459	finally
    //   368	371	459	finally
    //   373	378	459	finally
    //   393	399	459	finally
    //   399	407	459	finally
    //   426	434	459	finally
    //   456	459	459	finally
    //   393	399	477	java/lang/InterruptedException
    //   27	67	482	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */