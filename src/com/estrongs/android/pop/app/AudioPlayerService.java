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
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.app.a.ak;
import com.estrongs.android.pop.app.a.al;
import com.estrongs.android.pop.app.a.ao;
import com.estrongs.android.ui.view.ag;
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
  public com.estrongs.android.c.a c = null;
  public boolean d = false;
  MediaPlayer.OnCompletionListener e = new l(this);
  MediaPlayer.OnErrorListener f = new m(this);
  i g = null;
  public boolean h = false;
  boolean i = false;
  private Object k = new Object();
  private final IBinder l = new q(this);
  private boolean m = false;
  private boolean n = false;
  private com.estrongs.android.ui.notification.a o;
  private MediaPlayer p = null;
  private boolean q = false;
  private com.estrongs.android.pop.app.a.am r;
  private final BroadcastReceiver s = new j(this);
  private final BroadcastReceiver t = new n(this);
  private final BroadcastReceiver u = new o(this);
  private final BroadcastReceiver v = new p(this);
  private Object w = new Object();
  private gc x = null;
  
  private int G()
  {
    return r.b();
  }
  
  /* Error */
  private void H()
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
    //   16: getfield 112	com/estrongs/android/pop/app/AudioPlayerService:g	Lcom/estrongs/android/pop/app/i;
    //   19: ifnonnull +16 -> 35
    //   22: aload_0
    //   23: new 135	com/estrongs/android/pop/app/i
    //   26: dup
    //   27: aload_0
    //   28: aload_0
    //   29: invokespecial 138	com/estrongs/android/pop/app/i:<init>	(Landroid/content/Context;Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    //   32: putfield 112	com/estrongs/android/pop/app/AudioPlayerService:g	Lcom/estrongs/android/pop/app/i;
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
    //   51: getfield 112	com/estrongs/android/pop/app/AudioPlayerService:g	Lcom/estrongs/android/pop/app/i;
    //   54: invokevirtual 141	com/estrongs/android/pop/app/i:a	()Z
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
  
  private void I()
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
  
  private boolean a(MediaPlayer paramMediaPlayer)
  {
    t();
    if (!r.n()) {
      return false;
    }
    new k(this).start();
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
    return com.estrongs.android.util.am.d(r.g().b);
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
    return FexApplication.a().getString(2131428312);
  }
  
  public Bitmap D()
  {
    Object localObject = null;
    if (h() == null) {}
    Bitmap localBitmap;
    do
    {
      do
      {
        return (Bitmap)localObject;
      } while (r.j() == 0);
      localBitmap = r.g().a(this);
      localObject = localBitmap;
    } while (localBitmap != null);
    return BitmapFactory.decodeResource(getResources(), 2130837518);
  }
  
  public void E()
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
      H();
      p.start();
      com.estrongs.android.util.l.a();
    } while (!o.h());
    A();
  }
  
  public com.estrongs.android.pop.app.a.am F()
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
  
  public void a(int paramInt1, int paramInt2)
  {
    r.a(paramInt1, paramInt2);
  }
  
  public void a(com.estrongs.android.pop.app.a.am paramam)
  {
    r = paramam;
  }
  
  public void a(gc paramgc)
  {
    x = paramgc;
  }
  
  public void a(List<ak> paramList)
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
  
  public boolean a(al paramal)
  {
    return r.a(paramal);
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
    if (com.estrongs.android.util.am.bb((String)localObject3)) {
      localObject1 = com.estrongs.android.util.am.b((String)localObject3, 35864);
    }
    for (;;)
    {
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
  
  public al h()
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
    com.estrongs.android.util.l.b();
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
    //   1: invokespecial 400	android/app/Service:onCreate	()V
    //   4: aload_0
    //   5: invokestatic 405	com/estrongs/android/pop/esclasses/e:a	(Landroid/content/Context;)V
    //   8: aload_0
    //   9: putstatic 46	com/estrongs/android/pop/app/AudioPlayerService:b	Lcom/estrongs/android/pop/app/AudioPlayerService;
    //   12: aload_0
    //   13: new 407	com/estrongs/android/c/a
    //   16: dup
    //   17: ldc_w 409
    //   20: ldc_w 308
    //   23: invokespecial 412	com/estrongs/android/c/a:<init>	(Ljava/lang/String;I)V
    //   26: putfield 76	com/estrongs/android/pop/app/AudioPlayerService:c	Lcom/estrongs/android/c/a;
    //   29: new 414	android/content/IntentFilter
    //   32: dup
    //   33: invokespecial 415	android/content/IntentFilter:<init>	()V
    //   36: astore_2
    //   37: aload_2
    //   38: ldc_w 417
    //   41: invokevirtual 420	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   44: aload_2
    //   45: ldc_w 422
    //   48: invokevirtual 420	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   51: aload_2
    //   52: ldc_w 424
    //   55: invokevirtual 420	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   58: aload_2
    //   59: ldc_w 426
    //   62: invokevirtual 420	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   65: aload_2
    //   66: ldc_w 428
    //   69: invokevirtual 420	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   72: aload_2
    //   73: ldc_w 430
    //   76: invokevirtual 420	android/content/IntentFilter:addAction	(Ljava/lang/String;)V
    //   79: aload_0
    //   80: aload_0
    //   81: getfield 85	com/estrongs/android/pop/app/AudioPlayerService:s	Landroid/content/BroadcastReceiver;
    //   84: aload_2
    //   85: invokevirtual 434	com/estrongs/android/pop/app/AudioPlayerService:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   88: pop
    //   89: aload_0
    //   90: aload_0
    //   91: getfield 100	com/estrongs/android/pop/app/AudioPlayerService:t	Landroid/content/BroadcastReceiver;
    //   94: new 414	android/content/IntentFilter
    //   97: dup
    //   98: ldc_w 436
    //   101: invokespecial 438	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   104: invokevirtual 434	com/estrongs/android/pop/app/AudioPlayerService:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   107: pop
    //   108: aload_0
    //   109: aload_0
    //   110: getfield 110	com/estrongs/android/pop/app/AudioPlayerService:v	Landroid/content/BroadcastReceiver;
    //   113: new 414	android/content/IntentFilter
    //   116: dup
    //   117: ldc_w 440
    //   120: invokespecial 438	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   123: invokevirtual 434	com/estrongs/android/pop/app/AudioPlayerService:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   126: pop
    //   127: invokestatic 133	com/estrongs/android/pop/ac:a	()I
    //   130: bipush 8
    //   132: if_icmplt +52 -> 184
    //   135: aload_0
    //   136: ldc_w 442
    //   139: invokevirtual 446	com/estrongs/android/pop/app/AudioPlayerService:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   142: checkcast 448	android/media/AudioManager
    //   145: astore_2
    //   146: new 450	android/content/ComponentName
    //   149: dup
    //   150: aload_0
    //   151: invokevirtual 453	com/estrongs/android/pop/app/AudioPlayerService:getPackageName	()Ljava/lang/String;
    //   154: ldc_w 455
    //   157: invokevirtual 460	java/lang/Class:getName	()Ljava/lang/String;
    //   160: invokespecial 463	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   163: astore_3
    //   164: aload_2
    //   165: ifnull +19 -> 184
    //   168: new 465	com/estrongs/android/util/al
    //   171: dup
    //   172: aload_2
    //   173: invokespecial 468	com/estrongs/android/util/al:<init>	(Ljava/lang/Object;)V
    //   176: ldc_w 470
    //   179: aload_3
    //   180: invokevirtual 473	com/estrongs/android/util/al:a	(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    //   183: pop
    //   184: ldc_w 475
    //   187: ldc_w 475
    //   190: invokevirtual 478	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   193: istore_1
    //   194: iload_1
    //   195: ifne +22 -> 217
    //   198: aload_0
    //   199: aload_0
    //   200: getfield 105	com/estrongs/android/pop/app/AudioPlayerService:u	Landroid/content/BroadcastReceiver;
    //   203: new 414	android/content/IntentFilter
    //   206: dup
    //   207: ldc_w 480
    //   210: invokespecial 438	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   213: invokevirtual 434	com/estrongs/android/pop/app/AudioPlayerService:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   216: pop
    //   217: aload_0
    //   218: new 172	com/estrongs/android/ui/notification/a
    //   221: dup
    //   222: aload_0
    //   223: invokespecial 481	com/estrongs/android/ui/notification/a:<init>	(Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    //   226: putfield 170	com/estrongs/android/pop/app/AudioPlayerService:o	Lcom/estrongs/android/ui/notification/a;
    //   229: aload_0
    //   230: new 126	com/estrongs/android/pop/app/a/am
    //   233: dup
    //   234: invokespecial 482	com/estrongs/android/pop/app/a/am:<init>	()V
    //   237: putfield 124	com/estrongs/android/pop/app/AudioPlayerService:r	Lcom/estrongs/android/pop/app/a/am;
    //   240: return
    //   241: astore_2
    //   242: aload_2
    //   243: invokevirtual 365	java/lang/Exception:printStackTrace	()V
    //   246: goto -119 -> 127
    //   249: astore_2
    //   250: aload_0
    //   251: aconst_null
    //   252: putfield 76	com/estrongs/android/pop/app/AudioPlayerService:c	Lcom/estrongs/android/c/a;
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
    //   1: invokevirtual 148	com/estrongs/android/pop/app/AudioPlayerService:t	()V
    //   4: aload_0
    //   5: getfield 120	com/estrongs/android/pop/app/AudioPlayerService:x	Lcom/estrongs/android/pop/app/gc;
    //   8: ifnull +12 -> 20
    //   11: aload_0
    //   12: getfield 120	com/estrongs/android/pop/app/AudioPlayerService:x	Lcom/estrongs/android/pop/app/gc;
    //   15: invokeinterface 486 1 0
    //   20: aload_0
    //   21: getfield 76	com/estrongs/android/pop/app/AudioPlayerService:c	Lcom/estrongs/android/c/a;
    //   24: ifnull +10 -> 34
    //   27: aload_0
    //   28: getfield 76	com/estrongs/android/pop/app/AudioPlayerService:c	Lcom/estrongs/android/c/a;
    //   31: invokevirtual 488	com/estrongs/android/c/a:h	()V
    //   34: aload_0
    //   35: aload_0
    //   36: getfield 85	com/estrongs/android/pop/app/AudioPlayerService:s	Landroid/content/BroadcastReceiver;
    //   39: invokevirtual 492	com/estrongs/android/pop/app/AudioPlayerService:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   42: aload_0
    //   43: aload_0
    //   44: getfield 100	com/estrongs/android/pop/app/AudioPlayerService:t	Landroid/content/BroadcastReceiver;
    //   47: invokevirtual 492	com/estrongs/android/pop/app/AudioPlayerService:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   50: aload_0
    //   51: aload_0
    //   52: getfield 110	com/estrongs/android/pop/app/AudioPlayerService:v	Landroid/content/BroadcastReceiver;
    //   55: invokevirtual 492	com/estrongs/android/pop/app/AudioPlayerService:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   58: invokestatic 133	com/estrongs/android/pop/ac:a	()I
    //   61: bipush 8
    //   63: if_icmplt +52 -> 115
    //   66: aload_0
    //   67: ldc_w 442
    //   70: invokevirtual 446	com/estrongs/android/pop/app/AudioPlayerService:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   73: checkcast 448	android/media/AudioManager
    //   76: astore_2
    //   77: new 450	android/content/ComponentName
    //   80: dup
    //   81: aload_0
    //   82: invokevirtual 453	com/estrongs/android/pop/app/AudioPlayerService:getPackageName	()Ljava/lang/String;
    //   85: ldc_w 455
    //   88: invokevirtual 460	java/lang/Class:getName	()Ljava/lang/String;
    //   91: invokespecial 463	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   94: astore_3
    //   95: aload_2
    //   96: ifnull +19 -> 115
    //   99: new 465	com/estrongs/android/util/al
    //   102: dup
    //   103: aload_2
    //   104: invokespecial 468	com/estrongs/android/util/al:<init>	(Ljava/lang/Object;)V
    //   107: ldc_w 494
    //   110: aload_3
    //   111: invokevirtual 473	com/estrongs/android/util/al:a	(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    //   114: pop
    //   115: ldc_w 475
    //   118: ldc_w 475
    //   121: invokevirtual 478	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   124: istore_1
    //   125: iload_1
    //   126: ifne +11 -> 137
    //   129: aload_0
    //   130: aload_0
    //   131: getfield 105	com/estrongs/android/pop/app/AudioPlayerService:u	Landroid/content/BroadcastReceiver;
    //   134: invokevirtual 492	com/estrongs/android/pop/app/AudioPlayerService:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   137: aconst_null
    //   138: putstatic 46	com/estrongs/android/pop/app/AudioPlayerService:b	Lcom/estrongs/android/pop/app/AudioPlayerService;
    //   141: invokestatic 498	com/estrongs/android/pop/app/a/ao:k	()V
    //   144: aconst_null
    //   145: invokestatic 503	com/estrongs/android/pop/app/PopAudioPlayer:b	([Ljava/lang/String;)V
    //   148: aload_0
    //   149: invokespecial 505	android/app/Service:onDestroy	()V
    //   152: return
    //   153: astore_2
    //   154: aload_2
    //   155: invokevirtual 365	java/lang/Exception:printStackTrace	()V
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
          paramIntent = PopAudioPlayer.z();
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
              ag.a(this, 2131428375, 1);
              return 0;
            }
            paramIntent = (String[])((List)localObject).toArray(new String[0]);
          }
        }
        for (;;)
        {
          if (r.e() == null) {
            a(ao.a().b());
          }
          localObject = r.e();
          if (((al)localObject).f())
          {
            bool = ((al)localObject).c().isEmpty();
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
            ag.a(this, FexApplication.a().getText(2131427965), 0);
            return 0;
          }
          ag.a(this, FexApplication.a().getText(2131428336), 0);
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
  
  public ak q()
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
              H();
              com.estrongs.android.util.l.a();
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
      I();
      com.estrongs.android.util.l.b();
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
      I();
      p.pause();
      com.estrongs.android.util.l.b();
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
        E();
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