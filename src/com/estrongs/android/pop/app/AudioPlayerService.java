package com.estrongs.android.pop.app;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.net.Uri;
import android.os.IBinder;
import com.estrongs.android.g.a;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.app.c.i;
import com.estrongs.android.pop.app.c.j;
import com.estrongs.android.ui.notification.b;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public class AudioPlayerService
  extends Service
{
  public static AudioPlayerService b = null;
  public static String j = "http://127.0.0.1:35864/";
  public boolean a = false;
  public a c = null;
  public boolean d = false;
  MediaPlayer.OnCompletionListener e = new p(this);
  MediaPlayer.OnErrorListener f = new q(this);
  m g = null;
  public boolean h = false;
  boolean i = false;
  private Object k = new Object();
  private final IBinder l = new u(this);
  private boolean m = false;
  private boolean n = false;
  private b o;
  private MediaPlayer p = null;
  private boolean q = false;
  private com.estrongs.android.pop.app.c.k r;
  private final BroadcastReceiver s = new n(this);
  private final BroadcastReceiver t = new r(this);
  private final BroadcastReceiver u = new s(this);
  private final BroadcastReceiver v = new t(this);
  private Object w = new Object();
  private gp x = null;
  
  private int H()
  {
    return r.b();
  }
  
  /* Error */
  private void I()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 133	com/estrongs/android/pop/ac:a	()I
    //   5: istore_1
    //   6: iload_1
    //   7: bipush 8
    //   9: if_icmpge +6 -> 15
    //   12: aload_0
    //   13: monitorexit
    //   14: return
    //   15: aload_0
    //   16: getfield 112	com/estrongs/android/pop/app/AudioPlayerService:g	Lcom/estrongs/android/pop/app/m;
    //   19: ifnonnull +16 -> 35
    //   22: aload_0
    //   23: new 135	com/estrongs/android/pop/app/m
    //   26: dup
    //   27: aload_0
    //   28: aload_0
    //   29: invokespecial 138	com/estrongs/android/pop/app/m:<init>	(Landroid/content/Context;Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    //   32: putfield 112	com/estrongs/android/pop/app/AudioPlayerService:g	Lcom/estrongs/android/pop/app/m;
    //   35: aload_0
    //   36: getfield 118	com/estrongs/android/pop/app/AudioPlayerService:w	Ljava/lang/Object;
    //   39: astore_2
    //   40: aload_2
    //   41: monitorenter
    //   42: aload_0
    //   43: getfield 116	com/estrongs/android/pop/app/AudioPlayerService:i	Z
    //   46: ifne +14 -> 60
    //   49: aload_0
    //   50: aload_0
    //   51: getfield 112	com/estrongs/android/pop/app/AudioPlayerService:g	Lcom/estrongs/android/pop/app/m;
    //   54: invokevirtual 141	com/estrongs/android/pop/app/m:a	()Z
    //   57: putfield 116	com/estrongs/android/pop/app/AudioPlayerService:i	Z
    //   60: aload_2
    //   61: monitorexit
    //   62: goto -50 -> 12
    //   65: astore_3
    //   66: aload_2
    //   67: monitorexit
    //   68: aload_3
    //   69: athrow
    //   70: astore_2
    //   71: aload_0
    //   72: monitorexit
    //   73: aload_2
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	AudioPlayerService
    //   5	5	1	i1	int
    //   70	4	2	localObject2	Object
    //   65	4	3	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   42	60	65	finally
    //   60	62	65	finally
    //   66	68	65	finally
    //   2	6	70	finally
    //   15	35	70	finally
    //   35	42	70	finally
    //   68	70	70	finally
  }
  
  private void J()
  {
    label75:
    for (;;)
    {
      try
      {
        if ((ac.a() >= 8) && (g != null))
        {
          bool = i;
          if (bool) {}
        }
        else
        {
          return;
        }
        synchronized (w)
        {
          if (i)
          {
            if (g.b()) {
              break label75;
            }
            bool = true;
            i = bool;
          }
        }
        boolean bool = false;
      }
      finally {}
    }
  }
  
  private void K()
  {
    ai localai = ai.b(FexApplication.a());
    Object localObject = r.e();
    if (localObject != null) {
      localai.c(((j)localObject).a());
    }
    localObject = r.g();
    if (localObject != null) {
      localai.d(b);
    }
  }
  
  private boolean a(MediaPlayer paramMediaPlayer)
  {
    t();
    if (!r.n()) {
      return false;
    }
    new o(this).start();
    return true;
  }
  
  public void A()
  {
    if ((q) && (r != null) && (r.e() != null)) {
      o.a();
    }
  }
  
  public String B()
  {
    Object localObject = null;
    if (h() == null) {}
    String str;
    do
    {
      do
      {
        return (String)localObject;
      } while (r.j() == 0);
      str = r.g().e;
      if (str == null) {
        break;
      }
      localObject = str;
    } while (!"".equals(str));
    return ap.d(r.g().b);
  }
  
  public String C()
  {
    Object localObject = null;
    if (h() == null) {}
    String str;
    do
    {
      do
      {
        return (String)localObject;
      } while (r.j() == 0);
      str = r.g().g;
      localObject = str;
    } while (str != null);
    return FexApplication.a().getString(2131231045);
  }
  
  public Bitmap D()
  {
    Bitmap localBitmap2 = E();
    Bitmap localBitmap1 = localBitmap2;
    if (localBitmap2 == null) {
      localBitmap1 = BitmapFactory.decodeResource(getResources(), 2130838165);
    }
    return localBitmap1;
  }
  
  public Bitmap E()
  {
    if (h() == null) {}
    while (r.j() == 0) {
      return null;
    }
    return r.g().a(this);
  }
  
  public void F()
  {
    if (r.i()) {}
    do
    {
      do
      {
        return;
        n = false;
      } while (p == null);
      m = true;
      if (x != null) {
        x.e(r.f());
      }
      I();
      p.start();
      com.estrongs.android.util.k.a();
    } while (!o.h());
    A();
  }
  
  public com.estrongs.android.pop.app.c.k G()
  {
    return r;
  }
  
  public String a()
  {
    try
    {
      String str2 = r.e().a();
      String str1 = str2;
      if (str2 == null)
      {
        int i1 = r.e().b();
        str1 = str2;
        if (i1 != -1) {
          str1 = FexApplication.a().getString(i1);
        }
      }
      return str1;
    }
    catch (NullPointerException localNullPointerException) {}
    return null;
  }
  
  public void a(int paramInt)
  {
    r.a(paramInt);
  }
  
  public void a(com.estrongs.android.pop.app.c.k paramk)
  {
    r = paramk;
  }
  
  public void a(gp paramgp)
  {
    x = paramgp;
  }
  
  public void a(List<i> paramList)
  {
    r.b(paramList);
  }
  
  public void a(boolean paramBoolean)
  {
    q = paramBoolean;
    if (!q)
    {
      z();
      return;
    }
    A();
  }
  
  public boolean a(j paramj)
  {
    return r.a(paramj);
  }
  
  public int b()
  {
    return r.c();
  }
  
  public void b(int paramInt)
  {
    r.b(paramInt);
  }
  
  public void b(List<String> paramList)
  {
    r.a(paramList);
  }
  
  public int c()
  {
    return r.d();
  }
  
  public void c(int paramInt)
  {
    if (p != null) {}
    try
    {
      p.seekTo(paramInt);
      return;
    }
    catch (Exception localException) {}
  }
  
  public int d()
  {
    return r.m();
  }
  
  public boolean d(int paramInt)
  {
    if (!r.h()) {
      return false;
    }
    if (h) {
      return false;
    }
    h = true;
    Object localObject1 = k;
    if (paramInt < 0) {}
    try
    {
      r.a();
      r.d(paramInt);
      if (r.j() == 0)
      {
        if (x != null) {
          x.a(-1);
        }
        h = false;
        return true;
      }
      localObject1 = r.g();
      if ((localObject1 == null) || (b == null)) {
        return false;
      }
    }
    finally {}
    Object localObject3 = b;
    if (ap.bm((String)localObject3)) {
      localObject1 = ap.b((String)localObject3, 35864);
    }
    for (;;)
    {
      if (ap.bl((String)localObject1)) {
        K();
      }
      paramInt = r.f();
      try
      {
        if (x != null) {
          x.a(paramInt);
        }
        localObject3 = p;
        if (localObject3 != null) {}
        try
        {
          p.stop();
          p.release();
          p = new MediaPlayer();
          p.setOnCompletionListener(e);
          p.setOnErrorListener(f);
          p.setDataSource((String)localObject1);
          p.prepare();
          h = false;
          A();
          return true;
          if (((String)localObject3).startsWith(j))
          {
            localObject1 = j + Uri.encode(((String)localObject3).substring(j.length()), "/?:@");
            continue;
          }
          localObject1 = localObject3;
          if (!((String)localObject3).startsWith("http://")) {
            continue;
          }
          localObject1 = "http://" + Uri.encode(((String)localObject3).substring("http://".length()), "/?:@");
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            localException2.printStackTrace();
          }
        }
        return true;
      }
      catch (Exception localException1)
      {
        if ((!(localException1 instanceof IllegalStateException)) && (!(localException1 instanceof NullPointerException))) {
          r.a(paramInt, false);
        }
        h = false;
        e(paramInt);
        if (x != null) {
          x.g(paramInt);
        }
        while (a(p))
        {
          localException1.printStackTrace();
          return false;
        }
      }
    }
  }
  
  public int e()
  {
    return r.k();
  }
  
  public void e(int paramInt)
  {
    if (r.f() != paramInt)
    {
      if (x != null) {
        x.b(paramInt);
      }
      return;
    }
    t();
  }
  
  public int f()
  {
    return r.l();
  }
  
  public boolean f(int paramInt)
  {
    if (!r.c(paramInt)) {}
    do
    {
      return false;
      t();
    } while (!d(paramInt));
    return r();
  }
  
  public int g()
  {
    return r.o();
  }
  
  public j h()
  {
    return r.e();
  }
  
  public int i()
  {
    return r.f();
  }
  
  public int j()
  {
    if (p != null) {
      try
      {
        int i1 = p.getDuration();
        return i1;
      }
      catch (Exception localException) {}
    }
    return 0;
  }
  
  public boolean k()
  {
    return m;
  }
  
  public boolean l()
  {
    return (!r.c(r.f())) || (!m);
  }
  
  public boolean m()
  {
    return n;
  }
  
  public boolean n()
  {
    return h;
  }
  
  public void o()
  {
    t();
    stopSelf();
    com.estrongs.android.util.k.b();
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    a(false);
    return l;
  }
  
  /* Error */
  public void onCreate()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 415	android/app/Service:onCreate	()V
    //   4: aload_0
    //   5: invokestatic 420	com/estrongs/android/pop/esclasses/i:a	(Landroid/content/Context;)V
    //   8: aload_0
    //   9: putstatic 46	com/estrongs/android/pop/app/AudioPlayerService:b	Lcom/estrongs/android/pop/app/AudioPlayerService;
    //   12: aload_0
    //   13: new 422	com/estrongs/android/g/a
    //   16: dup
    //   17: ldc_w 424
    //   20: ldc_w 319
    //   23: invokespecial 427	com/estrongs/android/g/a:<init>	(Ljava/lang/String;I)V
    //   26: putfield 76	com/estrongs/android/pop/app/AudioPlayerService:c	Lcom/estrongs/android/g/a;
    //   29: new 429	android/content/IntentFilter
    //   32: dup
    //   33: invokespecial 430	android/content/IntentFilter:<init>	()V
    //   36: astore_2
    //   37: aload_2
    //   38: ldc_w 432
    //   41: invokevirtual 435	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   44: aload_2
    //   45: ldc_w 437
    //   48: invokevirtual 435	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   51: aload_2
    //   52: ldc_w 439
    //   55: invokevirtual 435	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   58: aload_2
    //   59: ldc_w 441
    //   62: invokevirtual 435	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   65: aload_2
    //   66: ldc_w 443
    //   69: invokevirtual 435	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   72: aload_2
    //   73: ldc_w 445
    //   76: invokevirtual 435	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   79: aload_0
    //   80: aload_0
    //   81: getfield 85	com/estrongs/android/pop/app/AudioPlayerService:s	Landroid/content/BroadcastReceiver;
    //   84: aload_2
    //   85: invokevirtual 449	com/estrongs/android/pop/app/AudioPlayerService:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   88: pop
    //   89: aload_0
    //   90: aload_0
    //   91: getfield 100	com/estrongs/android/pop/app/AudioPlayerService:t	Landroid/content/BroadcastReceiver;
    //   94: new 429	android/content/IntentFilter
    //   97: dup
    //   98: ldc_w 451
    //   101: invokespecial 453	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   104: invokevirtual 449	com/estrongs/android/pop/app/AudioPlayerService:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   107: pop
    //   108: aload_0
    //   109: aload_0
    //   110: getfield 110	com/estrongs/android/pop/app/AudioPlayerService:v	Landroid/content/BroadcastReceiver;
    //   113: new 429	android/content/IntentFilter
    //   116: dup
    //   117: ldc_w 455
    //   120: invokespecial 453	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   123: invokevirtual 449	com/estrongs/android/pop/app/AudioPlayerService:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   126: pop
    //   127: invokestatic 133	com/estrongs/android/pop/ac:a	()I
    //   130: bipush 8
    //   132: if_icmplt +52 -> 184
    //   135: aload_0
    //   136: ldc_w 457
    //   139: invokevirtual 461	com/estrongs/android/pop/app/AudioPlayerService:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   142: checkcast 463	android/media/AudioManager
    //   145: astore_2
    //   146: new 465	android/content/ComponentName
    //   149: dup
    //   150: aload_0
    //   151: invokevirtual 468	com/estrongs/android/pop/app/AudioPlayerService:getPackageName	()Ljava/lang/String;
    //   154: ldc_w 470
    //   157: invokevirtual 475	java/lang/Class:getName	()Ljava/lang/String;
    //   160: invokespecial 478	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   163: astore_3
    //   164: aload_2
    //   165: ifnull +19 -> 184
    //   168: new 480	com/estrongs/android/util/ao
    //   171: dup
    //   172: aload_2
    //   173: invokespecial 483	com/estrongs/android/util/ao:<init>	(Ljava/lang/Object;)V
    //   176: ldc_w 485
    //   179: aload_3
    //   180: invokevirtual 488	com/estrongs/android/util/ao:a	(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    //   183: pop
    //   184: getstatic 492	com/estrongs/android/pop/view/a:a	Ljava/lang/String;
    //   187: ldc_w 494
    //   190: invokevirtual 497	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   193: istore_1
    //   194: iload_1
    //   195: ifne +22 -> 217
    //   198: aload_0
    //   199: aload_0
    //   200: getfield 105	com/estrongs/android/pop/app/AudioPlayerService:u	Landroid/content/BroadcastReceiver;
    //   203: new 429	android/content/IntentFilter
    //   206: dup
    //   207: ldc_w 499
    //   210: invokespecial 453	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   213: invokevirtual 449	com/estrongs/android/pop/app/AudioPlayerService:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   216: pop
    //   217: aload_0
    //   218: new 200	com/estrongs/android/ui/notification/b
    //   221: dup
    //   222: aload_0
    //   223: invokespecial 500	com/estrongs/android/ui/notification/b:<init>	(Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    //   226: putfield 198	com/estrongs/android/pop/app/AudioPlayerService:o	Lcom/estrongs/android/ui/notification/b;
    //   229: aload_0
    //   230: new 126	com/estrongs/android/pop/app/c/k
    //   233: dup
    //   234: invokespecial 501	com/estrongs/android/pop/app/c/k:<init>	()V
    //   237: putfield 124	com/estrongs/android/pop/app/AudioPlayerService:r	Lcom/estrongs/android/pop/app/c/k;
    //   240: return
    //   241: astore_2
    //   242: aload_2
    //   243: invokevirtual 380	java/lang/Exception:printStackTrace	()V
    //   246: goto -119 -> 127
    //   249: astore_2
    //   250: aload_0
    //   251: aconst_null
    //   252: putfield 76	com/estrongs/android/pop/app/AudioPlayerService:c	Lcom/estrongs/android/g/a;
    //   255: goto -38 -> 217
    //   258: astore_2
    //   259: goto -251 -> 8
    //   262: astore_2
    //   263: goto -46 -> 217
    //   266: astore_2
    //   267: goto -83 -> 184
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	270	0	this	AudioPlayerService
    //   193	2	1	bool	boolean
    //   36	137	2	localObject	Object
    //   241	2	2	localException1	Exception
    //   249	1	2	localException2	Exception
    //   258	1	2	localException3	Exception
    //   262	1	2	localException4	Exception
    //   266	1	2	localException5	Exception
    //   163	17	3	localComponentName	android.content.ComponentName
    // Exception table:
    //   from	to	target	type
    //   108	127	241	java/lang/Exception
    //   0	4	249	java/lang/Exception
    //   8	108	249	java/lang/Exception
    //   184	194	249	java/lang/Exception
    //   242	246	249	java/lang/Exception
    //   4	8	258	java/lang/Exception
    //   198	217	262	java/lang/Exception
    //   127	164	266	java/lang/Exception
    //   168	184	266	java/lang/Exception
  }
  
  /* Error */
  public void onDestroy()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 179	com/estrongs/android/pop/app/AudioPlayerService:t	()V
    //   4: aload_0
    //   5: getfield 120	com/estrongs/android/pop/app/AudioPlayerService:x	Lcom/estrongs/android/pop/app/gp;
    //   8: ifnull +12 -> 20
    //   11: aload_0
    //   12: getfield 120	com/estrongs/android/pop/app/AudioPlayerService:x	Lcom/estrongs/android/pop/app/gp;
    //   15: invokeinterface 505 1 0
    //   20: aload_0
    //   21: getfield 76	com/estrongs/android/pop/app/AudioPlayerService:c	Lcom/estrongs/android/g/a;
    //   24: ifnull +10 -> 34
    //   27: aload_0
    //   28: getfield 76	com/estrongs/android/pop/app/AudioPlayerService:c	Lcom/estrongs/android/g/a;
    //   31: invokevirtual 507	com/estrongs/android/g/a:h	()V
    //   34: aload_0
    //   35: aload_0
    //   36: getfield 85	com/estrongs/android/pop/app/AudioPlayerService:s	Landroid/content/BroadcastReceiver;
    //   39: invokevirtual 511	com/estrongs/android/pop/app/AudioPlayerService:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   42: aload_0
    //   43: aload_0
    //   44: getfield 100	com/estrongs/android/pop/app/AudioPlayerService:t	Landroid/content/BroadcastReceiver;
    //   47: invokevirtual 511	com/estrongs/android/pop/app/AudioPlayerService:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   50: aload_0
    //   51: aload_0
    //   52: getfield 110	com/estrongs/android/pop/app/AudioPlayerService:v	Landroid/content/BroadcastReceiver;
    //   55: invokevirtual 511	com/estrongs/android/pop/app/AudioPlayerService:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   58: invokestatic 133	com/estrongs/android/pop/ac:a	()I
    //   61: bipush 8
    //   63: if_icmplt +52 -> 115
    //   66: aload_0
    //   67: ldc_w 457
    //   70: invokevirtual 461	com/estrongs/android/pop/app/AudioPlayerService:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   73: checkcast 463	android/media/AudioManager
    //   76: astore_2
    //   77: new 465	android/content/ComponentName
    //   80: dup
    //   81: aload_0
    //   82: invokevirtual 468	com/estrongs/android/pop/app/AudioPlayerService:getPackageName	()Ljava/lang/String;
    //   85: ldc_w 470
    //   88: invokevirtual 475	java/lang/Class:getName	()Ljava/lang/String;
    //   91: invokespecial 478	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   94: astore_3
    //   95: aload_2
    //   96: ifnull +19 -> 115
    //   99: new 480	com/estrongs/android/util/ao
    //   102: dup
    //   103: aload_2
    //   104: invokespecial 483	com/estrongs/android/util/ao:<init>	(Ljava/lang/Object;)V
    //   107: ldc_w 513
    //   110: aload_3
    //   111: invokevirtual 488	com/estrongs/android/util/ao:a	(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    //   114: pop
    //   115: getstatic 492	com/estrongs/android/pop/view/a:a	Ljava/lang/String;
    //   118: ldc_w 494
    //   121: invokevirtual 497	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   124: istore_1
    //   125: iload_1
    //   126: ifne +11 -> 137
    //   129: aload_0
    //   130: aload_0
    //   131: getfield 105	com/estrongs/android/pop/app/AudioPlayerService:u	Landroid/content/BroadcastReceiver;
    //   134: invokevirtual 511	com/estrongs/android/pop/app/AudioPlayerService:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   137: aconst_null
    //   138: putstatic 46	com/estrongs/android/pop/app/AudioPlayerService:b	Lcom/estrongs/android/pop/app/AudioPlayerService;
    //   141: invokestatic 517	com/estrongs/android/pop/app/c/m:k	()V
    //   144: aconst_null
    //   145: invokestatic 522	com/estrongs/android/pop/app/PopAudioPlayer:b	([Ljava/lang/String;)V
    //   148: aload_0
    //   149: invokespecial 524	android/app/Service:onDestroy	()V
    //   152: return
    //   153: astore_2
    //   154: aload_2
    //   155: invokevirtual 380	java/lang/Exception:printStackTrace	()V
    //   158: goto -100 -> 58
    //   161: astore_2
    //   162: goto -25 -> 137
    //   165: astore_2
    //   166: goto -29 -> 137
    //   169: astore_2
    //   170: goto -55 -> 115
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	173	0	this	AudioPlayerService
    //   124	2	1	bool	boolean
    //   76	28	2	localAudioManager	android.media.AudioManager
    //   153	2	2	localException1	Exception
    //   161	1	2	localIllegalArgumentException	IllegalArgumentException
    //   165	1	2	localException2	Exception
    //   169	1	2	localException3	Exception
    //   94	17	3	localComponentName	android.content.ComponentName
    // Exception table:
    //   from	to	target	type
    //   50	58	153	java/lang/Exception
    //   34	50	161	java/lang/IllegalArgumentException
    //   50	58	161	java/lang/IllegalArgumentException
    //   58	95	161	java/lang/IllegalArgumentException
    //   99	115	161	java/lang/IllegalArgumentException
    //   115	125	161	java/lang/IllegalArgumentException
    //   129	137	161	java/lang/IllegalArgumentException
    //   154	158	161	java/lang/IllegalArgumentException
    //   129	137	165	java/lang/Exception
    //   58	95	169	java/lang/Exception
    //   99	115	169	java/lang/Exception
  }
  
  public void onRebind(Intent paramIntent)
  {
    super.onRebind(paramIntent);
    a(false);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    try
    {
      if (paramIntent.getBooleanExtra("isadd", false))
      {
        Object localObject;
        boolean bool;
        if (paramIntent.getBooleanExtra("hasplaylist", false))
        {
          paramIntent = PopAudioPlayer.E();
          if (PopAudioPlayer.a(paramIntent))
          {
            localObject = new ArrayList();
            paramInt1 = 0;
            if (paramInt1 < paramIntent.length)
            {
              bool = paramIntent[paramInt1].endsWith(".m3u");
              if (bool) {}
              for (;;)
              {
                try
                {
                  String[] arrayOfString = PopAudioPlayer.a(paramIntent[paramInt1]);
                  if (arrayOfString != null) {
                    ((List)localObject).addAll(Arrays.asList(arrayOfString));
                  }
                }
                catch (Exception localException)
                {
                  continue;
                }
                paramInt1 += 1;
                break;
                ((List)localObject).add(paramIntent[paramInt1]);
              }
            }
            if (((List)localObject).size() == 0)
            {
              ak.a(this, 2131231107, 1);
              return 0;
            }
            paramIntent = (String[])((List)localObject).toArray(new String[0]);
          }
        }
        for (;;)
        {
          if (r.e() == null) {
            a(com.estrongs.android.pop.app.c.m.a().b());
          }
          localObject = r.e();
          if (((j)localObject).f())
          {
            bool = ((j)localObject).c().isEmpty();
            localObject = new LinkedList();
            paramInt1 = 0;
            while (paramInt1 < paramIntent.length)
            {
              ((LinkedList)localObject).add(paramIntent[paramInt1]);
              paramInt1 += 1;
            }
            b((List)localObject);
            if (bool) {
              d(0);
            }
            ak.a(this, FexApplication.a().getText(2131231046), 0);
            return 0;
          }
          ak.a(this, FexApplication.a().getText(2131231047), 0);
          return 0;
          continue;
          paramIntent = null;
        }
      }
      return 0;
    }
    catch (Exception paramIntent) {}
  }
  
  public boolean onUnbind(Intent paramIntent)
  {
    a(true);
    return true;
  }
  
  public int p()
  {
    if (p != null) {
      try
      {
        int i1 = p.getCurrentPosition();
        return i1;
      }
      catch (Exception localException) {}
    }
    return 0;
  }
  
  public i q()
  {
    return r.g();
  }
  
  public boolean r()
  {
    if (h) {}
    for (;;)
    {
      return false;
      if (!r.i())
      {
        int i1 = r.f();
        try
        {
          if ((p != null) || (d(i1)))
          {
            p.start();
            m = true;
            n = false;
            if (x != null) {
              x.c(i1);
            }
            A();
            synchronized (k)
            {
              r.a(i1, true);
              I();
              com.estrongs.android.util.k.a();
              return true;
            }
            if (a(p)) {}
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          if ((!(localException instanceof IllegalStateException)) && (!(localException instanceof NullPointerException))) {
            r.a(i1, false);
          }
          h = false;
          e(i1);
          if (x != null)
          {
            x.g(i1);
            return false;
          }
        }
      }
    }
    return true;
  }
  
  public boolean s()
  {
    if (!d(r.f())) {}
    while (!r()) {
      return false;
    }
    return true;
  }
  
  public void t()
  {
    int i1 = r.f();
    m = false;
    if (p != null) {}
    try
    {
      p.stop();
      p.release();
      p = null;
      if (x != null) {
        x.b(i1);
      }
      if (o.h()) {
        A();
      }
      J();
      com.estrongs.android.util.k.b();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public void u()
  {
    if ((p != null) && (m)) {
      n = true;
    }
    try
    {
      J();
      p.pause();
      com.estrongs.android.util.k.b();
      if (x != null) {
        x.d(r.f());
      }
      if (o.h()) {
        A();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      t();
    }
  }
  
  public void v()
  {
    if (h() == null) {}
    boolean bool1;
    boolean bool2;
    int i1;
    do
    {
      do
      {
        return;
        bool1 = k();
        bool2 = m();
        int i2 = 0;
        i1 = i2;
        if (bool1)
        {
          i1 = i2;
          if (!bool2)
          {
            i1 = i2;
            if (p() > 5000)
            {
              w();
              i1 = 1;
            }
          }
        }
      } while (i1 != 0);
      i1 = f();
      t();
    } while ((!d(i1)) || (!bool1) || (bool2));
    r();
  }
  
  public void w()
  {
    c(0);
  }
  
  public void x()
  {
    if (h() == null) {
      return;
    }
    f(e());
  }
  
  public void y()
  {
    if (h() == null) {
      return;
    }
    if ((!k()) || (m()))
    {
      if (m())
      {
        F();
        return;
      }
      int i1 = d();
      if (i1 != -1)
      {
        f(i1);
        return;
      }
      f(0);
      return;
    }
    u();
  }
  
  public void z()
  {
    o.i();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.AudioPlayerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */