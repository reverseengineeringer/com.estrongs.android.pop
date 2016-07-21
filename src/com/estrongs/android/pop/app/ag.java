package com.estrongs.android.pop.app;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.app.c.k;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.notification.ChromeCastPlayerNotificationHelper;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import com.estrongs.chromecast.CastDeviceInfo;
import com.estrongs.chromecast.CastDeviceListener;
import com.estrongs.chromecast.ChromeCast;
import com.estrongs.chromecast.ChromeCastConnectionListener;
import com.estrongs.chromecast.ChromeCastImpl;
import com.estrongs.chromecast.RemoteMediaPlayerListener;
import com.estrongs.fs.d;
import com.estrongs.fs.util.j;
import java.io.File;
import java.net.InetAddress;
import java.util.List;

public class ag
{
  public static final String a = com.estrongs.android.pop.a.j + "/tmp";
  public static final String b = com.estrongs.android.pop.a.j + "/" + "com.estrongs.chromecast" + ".apk";
  private static boolean c = false;
  private static final String d = ag.class.getSimpleName();
  private static String f = null;
  private static ag g = null;
  private ChromeCast e;
  private boolean h = false;
  private boolean i = false;
  private String j = null;
  private ah k = null;
  private k l = null;
  
  /* Error */
  private com.estrongs.chromecast.MediaMetaData a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_1
    //   6: ifnonnull +5 -> 11
    //   9: aconst_null
    //   10: areturn
    //   11: new 82	java/io/File
    //   14: dup
    //   15: getstatic 54	com/estrongs/android/pop/app/ag:a	Ljava/lang/String;
    //   18: invokespecial 85	java/io/File:<init>	(Ljava/lang/String;)V
    //   21: invokestatic 90	com/estrongs/fs/util/j:a	(Ljava/io/File;)Z
    //   24: pop
    //   25: new 36	java/lang/StringBuilder
    //   28: dup
    //   29: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   32: getstatic 54	com/estrongs/android/pop/app/ag:a	Ljava/lang/String;
    //   35: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: ldc 92
    //   40: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokestatic 95	com/estrongs/fs/util/j:i	(Ljava/lang/String;)Ljava/io/File;
    //   49: pop
    //   50: new 36	java/lang/StringBuilder
    //   53: dup
    //   54: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   57: getstatic 54	com/estrongs/android/pop/app/ag:a	Ljava/lang/String;
    //   60: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: ldc 56
    //   65: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: aload_2
    //   69: invokestatic 101	com/estrongs/android/util/ap:bS	(Ljava/lang/String;)Ljava/lang/String;
    //   72: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: ldc 103
    //   77: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   83: astore 5
    //   85: aload_1
    //   86: invokestatic 107	com/estrongs/android/util/ap:bl	(Ljava/lang/String;)Z
    //   89: ifeq +95 -> 184
    //   92: aload_1
    //   93: invokestatic 111	com/estrongs/android/util/bg:g	(Ljava/lang/String;)Z
    //   96: ifeq +72 -> 168
    //   99: aload_0
    //   100: getfield 77	com/estrongs/android/pop/app/ag:l	Lcom/estrongs/android/pop/app/c/k;
    //   103: invokevirtual 116	com/estrongs/android/pop/app/c/k:g	()Lcom/estrongs/android/pop/app/c/i;
    //   106: invokestatic 121	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   109: invokevirtual 126	com/estrongs/android/pop/app/c/i:a	(Landroid/content/Context;)Landroid/graphics/Bitmap;
    //   112: astore_1
    //   113: aload_1
    //   114: ifnull +186 -> 300
    //   117: new 128	java/io/FileOutputStream
    //   120: dup
    //   121: aload 5
    //   123: invokespecial 129	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   126: astore_2
    //   127: aload_1
    //   128: getstatic 135	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   131: bipush 80
    //   133: aload_2
    //   134: invokevirtual 141	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   137: pop
    //   138: new 143	com/estrongs/chromecast/MediaMetaData
    //   141: dup
    //   142: invokespecial 144	com/estrongs/chromecast/MediaMetaData:<init>	()V
    //   145: astore_1
    //   146: aload_1
    //   147: aload 5
    //   149: invokestatic 149	com/estrongs/android/g/a:a	()I
    //   152: iconst_1
    //   153: iconst_1
    //   154: invokestatic 152	com/estrongs/android/util/ap:a	(Ljava/lang/String;IZZ)Ljava/lang/String;
    //   157: putfield 155	com/estrongs/chromecast/MediaMetaData:imageUrl	Ljava/lang/String;
    //   160: aload_1
    //   161: astore_3
    //   162: aload_2
    //   163: invokestatic 158	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   166: aload_1
    //   167: areturn
    //   168: aload_1
    //   169: invokestatic 160	com/estrongs/android/util/bg:h	(Ljava/lang/String;)Z
    //   172: ifeq +133 -> 305
    //   175: aload_1
    //   176: iconst_1
    //   177: invokestatic 166	android/media/ThumbnailUtils:createVideoThumbnail	(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    //   180: astore_1
    //   181: goto -68 -> 113
    //   184: invokestatic 171	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   187: aload_1
    //   188: invokevirtual 174	com/estrongs/fs/a/b:h	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   191: astore_1
    //   192: aload_1
    //   193: ifnull +112 -> 305
    //   196: aload_1
    //   197: invokestatic 179	com/estrongs/android/h/f:a	(Lcom/estrongs/fs/h;)Z
    //   200: ifeq +105 -> 305
    //   203: aload_1
    //   204: invokestatic 182	com/estrongs/android/h/f:d	(Lcom/estrongs/fs/h;)Landroid/graphics/drawable/Drawable;
    //   207: astore_1
    //   208: aload_1
    //   209: ifnull +96 -> 305
    //   212: aload_1
    //   213: instanceof 184
    //   216: ifeq +89 -> 305
    //   219: aload_1
    //   220: checkcast 184	android/graphics/drawable/BitmapDrawable
    //   223: invokevirtual 188	android/graphics/drawable/BitmapDrawable:getBitmap	()Landroid/graphics/Bitmap;
    //   226: astore_1
    //   227: goto -114 -> 113
    //   230: astore_1
    //   231: aconst_null
    //   232: astore_1
    //   233: aload 4
    //   235: astore_2
    //   236: aload_1
    //   237: astore_3
    //   238: aload_2
    //   239: invokestatic 158	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   242: goto -76 -> 166
    //   245: astore_2
    //   246: aload_3
    //   247: astore_1
    //   248: aload_2
    //   249: invokevirtual 191	java/lang/Exception:printStackTrace	()V
    //   252: goto -86 -> 166
    //   255: astore_1
    //   256: aconst_null
    //   257: astore_2
    //   258: aload_2
    //   259: invokestatic 158	com/estrongs/fs/util/j:a	(Ljava/io/OutputStream;)V
    //   262: aload_1
    //   263: athrow
    //   264: astore_2
    //   265: aload_3
    //   266: astore_1
    //   267: goto -19 -> 248
    //   270: astore_2
    //   271: aconst_null
    //   272: astore_1
    //   273: goto -25 -> 248
    //   276: astore_1
    //   277: goto -19 -> 258
    //   280: astore 4
    //   282: aload_1
    //   283: astore_3
    //   284: aload 4
    //   286: astore_1
    //   287: goto -29 -> 258
    //   290: astore_1
    //   291: aconst_null
    //   292: astore_1
    //   293: goto -57 -> 236
    //   296: astore_3
    //   297: goto -61 -> 236
    //   300: aconst_null
    //   301: astore_1
    //   302: goto -136 -> 166
    //   305: aconst_null
    //   306: astore_1
    //   307: goto -194 -> 113
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	310	0	this	ag
    //   0	310	1	paramString1	String
    //   0	310	2	paramString2	String
    //   1	283	3	str1	String
    //   296	1	3	localException	Exception
    //   3	231	4	localObject1	Object
    //   280	5	4	localObject2	Object
    //   83	65	5	str2	String
    // Exception table:
    //   from	to	target	type
    //   117	127	230	java/lang/Exception
    //   162	166	245	java/lang/Exception
    //   238	242	245	java/lang/Exception
    //   117	127	255	finally
    //   258	264	264	java/lang/Exception
    //   11	113	270	java/lang/Exception
    //   168	181	270	java/lang/Exception
    //   184	192	270	java/lang/Exception
    //   196	208	270	java/lang/Exception
    //   212	227	270	java/lang/Exception
    //   127	146	276	finally
    //   146	160	280	finally
    //   127	146	290	java/lang/Exception
    //   146	160	296	java/lang/Exception
  }
  
  public static boolean a()
  {
    return (!z.at) && (ac.a() >= 14) && (!bk.p());
  }
  
  public static boolean b()
  {
    return a();
  }
  
  public static ag g()
  {
    if (g == null) {
      g = new ag();
    }
    return g;
  }
  
  public void a(long paramLong)
  {
    try
    {
      if (e != null) {
        e.mediaSeek(paramLong);
      }
      return;
    }
    catch (Exception localException)
    {
      ak.a(FexApplication.a(), 2131231901, 1);
    }
  }
  
  public void a(CastDeviceInfo paramCastDeviceInfo)
  {
    try
    {
      if (e != null) {
        e.selectDevice(paramCastDeviceInfo);
      }
      return;
    }
    catch (Exception paramCastDeviceInfo)
    {
      paramCastDeviceInfo.printStackTrace();
    }
  }
  
  public void a(CastDeviceListener paramCastDeviceListener)
  {
    if (e != null) {
      e.addDeviceListener(paramCastDeviceListener);
    }
  }
  
  public void a(ChromeCastConnectionListener paramChromeCastConnectionListener)
  {
    if (e != null) {
      e.addConnectionListener(paramChromeCastConnectionListener);
    }
  }
  
  public void a(RemoteMediaPlayerListener paramRemoteMediaPlayerListener)
  {
    if (e != null) {
      e.addMediaPlayerListener(paramRemoteMediaPlayerListener);
    }
  }
  
  public void a(Double paramDouble)
  {
    try
    {
      if (e != null) {
        e.setVolume(paramDouble.doubleValue());
      }
      return;
    }
    catch (Exception paramDouble)
    {
      paramDouble.printStackTrace();
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, k paramk)
  {
    try
    {
      if (!e.isConnected())
      {
        l.e(d, "loadMedia failed not connected");
        return;
      }
      ChromeCastPlayerNotificationHelper.a().j();
      if (e == null) {
        return;
      }
      String str = y().getIpAddress().getHostAddress();
      if ((j != null) && (str != null) && (!j.equalsIgnoreCase(str))) {
        com.estrongs.android.g.f.f(j);
      }
      j = str;
      if ((k != null) && (k.e != null)) {
        k.e.recycle();
      }
      k = new ah();
      k.c = paramString3;
      k.b = paramString2;
      k.d = paramString4;
      k.a = paramString1;
      if ((ap.bl(paramString1)) && (!paramString1.startsWith("file"))) {
        k.a = Uri.fromFile(new File(paramString1)).toString();
      }
      l = paramk;
      e.loadMedia(paramString2, paramString3, paramString4, a(paramString1, paramString3));
      paramString2 = d.a().j(paramString1);
      com.estrongs.android.g.f.a(j, paramString2);
      if ((paramString2 != null) && (com.estrongs.android.h.f.a(paramString2)))
      {
        paramString1 = com.estrongs.android.h.f.d(paramString2);
        if ((paramString1 == null) || (!(paramString1 instanceof BitmapDrawable))) {
          return;
        }
        k.e = ((BitmapDrawable)paramString1).getBitmap();
        return;
      }
    }
    catch (Exception paramString1)
    {
      paramString1.printStackTrace();
      ak.a(FexApplication.a(), 2131231901, 1);
      return;
    }
    paramString2 = null;
    if (bg.h(paramString1)) {
      paramString2 = BitmapFactory.decodeResource(FexApplication.a().getResources(), 2130837662);
    }
    for (;;)
    {
      k.e = paramString2;
      return;
      if (bg.g(paramString1)) {
        paramString2 = BitmapFactory.decodeResource(FexApplication.a().getResources(), 2130838165);
      }
    }
  }
  
  public void b(CastDeviceListener paramCastDeviceListener)
  {
    if (e != null) {
      e.removeDeviceListener(paramCastDeviceListener);
    }
  }
  
  public void b(ChromeCastConnectionListener paramChromeCastConnectionListener)
  {
    if (e != null) {
      e.removeConnectionListener(paramChromeCastConnectionListener);
    }
  }
  
  public void b(RemoteMediaPlayerListener paramRemoteMediaPlayerListener)
  {
    if (e != null) {
      e.removeMediaPlayerListener(paramRemoteMediaPlayerListener);
    }
  }
  
  public boolean c()
  {
    return h;
  }
  
  public boolean d()
  {
    return i;
  }
  
  public boolean e()
  {
    long l1 = System.currentTimeMillis();
    if (i) {}
    for (;;)
    {
      return true;
      try
      {
        if (b())
        {
          e = new ChromeCastImpl(FexApplication.a());
          i = true;
          if (!c) {
            continue;
          }
          l.b(d, "load time " + (System.currentTimeMillis() - l1));
          return true;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return false;
  }
  
  public boolean f()
  {
    boolean bool = true;
    try
    {
      long l1 = System.currentTimeMillis();
      if (h) {
        return true;
      }
      if (e != null)
      {
        int m = e.init();
        if (m == -1)
        {
          ak.a(FexApplication.a(), 2131231150, 1);
          return false;
        }
        if (m < 0)
        {
          ak.a(FexApplication.a(), 2131231901, 1);
          return false;
        }
        h = true;
        if (!c) {
          return bool;
        }
        l.b(d, "init time " + (System.currentTimeMillis() - l1));
        return true;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      bool = false;
    }
    return bool;
  }
  
  public void h()
  {
    try
    {
      if (e != null) {
        e.startScan();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void i()
  {
    try
    {
      if (e != null) {
        e.mediaStop();
      }
      return;
    }
    catch (Exception localException)
    {
      ak.a(FexApplication.a(), 2131231901, 1);
    }
  }
  
  public void j()
  {
    try
    {
      if (e != null) {
        e.mediaPlay();
      }
      return;
    }
    catch (Exception localException)
    {
      ak.a(FexApplication.a(), 2131231901, 1);
    }
  }
  
  public void k()
  {
    try
    {
      if (l == null) {
        return;
      }
      if (l.n())
      {
        String str = l.g().b;
        if ((r() != 1) && (r() != 0)) {
          i();
        }
        a(str, ap.a(str, com.estrongs.android.g.a.a(), true, true), ap.d(str), bg.U(ap.d(str)), l);
        return;
      }
    }
    catch (Exception localException)
    {
      ak.a(FexApplication.a(), 2131231901, 1);
    }
  }
  
  public void l()
  {
    try
    {
      if (e != null) {
        e.mediaPause();
      }
      return;
    }
    catch (Exception localException)
    {
      ak.a(FexApplication.a(), 2131231901, 1);
    }
  }
  
  public k m()
  {
    return l;
  }
  
  public void n()
  {
    j.a(new File(a));
  }
  
  public ah o()
  {
    if (p()) {
      return k;
    }
    return null;
  }
  
  public boolean p()
  {
    try
    {
      if (e != null)
      {
        boolean bool = e.isConnected();
        return bool;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  public void q()
  {
    try
    {
      if (e != null)
      {
        e.stopScan();
        e.mediaStop();
        e.disconnect();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public int r()
  {
    try
    {
      if (e != null)
      {
        int m = e.getMediaPlayerState();
        return m;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }
  
  public long s()
  {
    try
    {
      if (e != null)
      {
        long l1 = e.getMediaStreamDuration();
        return l1;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return -1L;
  }
  
  public long t()
  {
    try
    {
      if (e != null)
      {
        long l1 = e.getMediaStreamPosition();
        return l1;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return -1L;
  }
  
  public double u()
  {
    try
    {
      if (e != null)
      {
        double d1 = e.getVolume();
        return d1;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0.0D;
  }
  
  public void v()
  {
    a(Double.valueOf(u() + 0.05D));
  }
  
  public void w()
  {
    a(Double.valueOf(u() - 0.05D));
  }
  
  public List<CastDeviceInfo> x()
  {
    try
    {
      if (e != null)
      {
        List localList = e.getDevices();
        return localList;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public CastDeviceInfo y()
  {
    try
    {
      if (e != null)
      {
        CastDeviceInfo localCastDeviceInfo = e.getConnectedDevice();
        return localCastDeviceInfo;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  public int z()
  {
    if (r() == 1) {
      return e.getIdleReason();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */