package com.estrongs.android.pop.app;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.app.network.EsNetworkActivity;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.dialog.kh;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.aw;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.d;
import java.util.ArrayList;
import java.util.List;

public class LocalFileSharingActivity
  extends HomeAsBackActivity
  implements AdapterView.OnItemClickListener, l, p
{
  private static LocalFileSharingActivity j;
  TextView a;
  private NotificationManager b;
  private boolean c = false;
  private ListView d;
  private ee[] e;
  private List<h> f = new ArrayList();
  private BaseAdapter g;
  private aw h;
  private Handler i;
  private at k;
  private ci l;
  private ProgressBar m = null;
  private FrameLayout n;
  private com.estrongs.android.view.a.a o;
  private com.estrongs.android.view.a.a p;
  
  public static void a(com.estrongs.android.pop.app.d.a parama, ArrayList<String> paramArrayList, boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("play", paramBoolean);
    localIntent.putStringArrayListExtra("files_selected", paramArrayList);
    localIntent.setClass(parama.n(), LocalFileSharingActivity.class);
    parama.G().startActivity(localIntent);
  }
  
  public static void a(com.estrongs.android.pop.app.d.a parama, List<h> paramList)
  {
    a(parama, paramList, false);
  }
  
  public static void a(com.estrongs.android.pop.app.d.a parama, List<h> paramList, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    int i1 = 0;
    if (i1 < paramList.size())
    {
      if ((paramList.get(i1) instanceof d))
      {
        d locald = (d)paramList.get(i1);
        localArrayList.add(locald.getAbsolutePath() + "\n" + locald.getName() + ".apk");
      }
      for (;;)
      {
        i1 += 1;
        break;
        localArrayList.add(((h)paramList.get(i1)).getAbsolutePath());
      }
    }
    if (aw.a(parama.n()) == null)
    {
      EsNetworkActivity.a(parama, localArrayList, paramBoolean);
      return;
    }
    if ((localArrayList.size() == 1) && (ap.bm((String)localArrayList.get(0))))
    {
      paramList = com.estrongs.android.pop.a.f + "/" + ap.d((String)localArrayList.get(0));
      AppRunner.a(parama.G(), (String)localArrayList.get(0), paramList, new ea(localArrayList, paramList, parama, paramBoolean), false);
      return;
    }
    a(parama, localArrayList, paramBoolean);
  }
  
  private void a(boolean paramBoolean)
  {
    if (n == null)
    {
      n = ((FrameLayout)findViewById(2131624797));
      d = ((ListView)n.findViewById(2131624886));
      a = ((TextView)n.findViewById(2131624798));
      d.setEmptyView(a);
      d.setAdapter(l());
      d.setOnItemClickListener(this);
      m = ((ProgressBar)findViewById(2131624429));
      synchronized (e)
      {
        if (e.length == 0)
        {
          if ((h == null) && (paramBoolean)) {
            h = aw.a(this, this, this, true);
          }
          m.setVisibility(0);
          a.setText("");
        }
        while (h == null) {
          return;
        }
        m.setVisibility(0);
      }
    }
  }
  
  public static void d()
  {
    if (j == null) {
      return;
    }
    j.k();
    jg.notifyDataSetChanged();
  }
  
  private void k()
  {
    for (;;)
    {
      int i1;
      int i2;
      synchronized (e)
      {
        ee[] arrayOfee2 = ee.a(aw.b(this));
        i1 = 0;
        if (i1 < arrayOfee2.length)
        {
          i2 = 0;
          if (i2 >= e.length) {
            break label104;
          }
          if (e[i2].b.equals(b)) {
            c = e[i2].c;
          }
        }
        else
        {
          e = arrayOfee2;
          m();
          return;
        }
      }
      i2 += 1;
      continue;
      label104:
      i1 += 1;
    }
  }
  
  private BaseAdapter l()
  {
    g = new dv(this);
    return g;
  }
  
  private void m()
  {
    int i1 = 0;
    if ((i1 >= e.length) || (!e[i1].c))
    {
      if (i1 != e.length) {
        break label62;
      }
      o.c(false);
      p.c(true);
    }
    for (;;)
    {
      invalidateOptionsMenu();
      return;
      i1 += 1;
      break;
      label62:
      o.c(true);
      p.c(false);
    }
  }
  
  public void a(com.estrongs.a.a parama, int paramInt1, int paramInt2)
  {
    if ((paramInt2 == 4) || (paramInt2 == 5))
    {
      parama = Message.obtain(i, 1, null);
      if ((parama != null) && (i != null)) {
        i.sendMessage(parama);
      }
      h = null;
    }
  }
  
  public void a(com.estrongs.a.a parama, m paramm)
  {
    parama = Message.obtain(i, 0, a);
    if ((parama != null) && (i != null)) {
      i.sendMessage(parama);
    }
  }
  
  protected void a(List<com.estrongs.android.view.a.a> paramList)
  {
    com.estrongs.android.view.a.a locala1 = new com.estrongs.android.view.a.a(2130838588, 2131230880).a(new dw(this));
    o = new com.estrongs.android.view.a.a(2130838529, 2131230887).a(new dx(this));
    p = new com.estrongs.android.view.a.a(2130838528, 2131230889).a(new dy(this)).c(false);
    int i1;
    if (c)
    {
      i1 = 2130838581;
      if (!c) {
        break label178;
      }
    }
    label178:
    for (int i2 = 2131230875;; i2 = 2131230890)
    {
      com.estrongs.android.view.a.a locala2 = new com.estrongs.android.view.a.a(i1, i2).a(new dz(this));
      paramList.add(locala1);
      paramList.add(o);
      paramList.add(p);
      paramList.add(locala2);
      return;
      i1 = 2130838601;
      break;
    }
  }
  
  /* Error */
  public void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 340
    //   4: invokevirtual 343	com/estrongs/android/pop/app/LocalFileSharingActivity:setTitle	(I)V
    //   7: aload_0
    //   8: getfield 223	com/estrongs/android/pop/app/LocalFileSharingActivity:e	[Lcom/estrongs/android/pop/app/ee;
    //   11: astore 4
    //   13: aload 4
    //   15: monitorenter
    //   16: iconst_0
    //   17: istore_2
    //   18: iconst_0
    //   19: istore_1
    //   20: iload_2
    //   21: aload_0
    //   22: getfield 223	com/estrongs/android/pop/app/LocalFileSharingActivity:e	[Lcom/estrongs/android/pop/app/ee;
    //   25: arraylength
    //   26: if_icmpge +270 -> 296
    //   29: aload_0
    //   30: getfield 223	com/estrongs/android/pop/app/LocalFileSharingActivity:e	[Lcom/estrongs/android/pop/app/ee;
    //   33: iload_2
    //   34: aaload
    //   35: getfield 268	com/estrongs/android/pop/app/ee:c	Z
    //   38: ifeq +299 -> 337
    //   41: aload_0
    //   42: getfield 48	com/estrongs/android/pop/app/LocalFileSharingActivity:c	Z
    //   45: ifeq +227 -> 272
    //   48: new 345	android/app/Notification
    //   51: dup
    //   52: invokespecial 346	android/app/Notification:<init>	()V
    //   55: astore 5
    //   57: aload 5
    //   59: aload_0
    //   60: ldc_w 347
    //   63: invokevirtual 351	com/estrongs/android/pop/app/LocalFileSharingActivity:getString	(I)Ljava/lang/String;
    //   66: putfield 355	android/app/Notification:tickerText	Ljava/lang/CharSequence;
    //   69: aload 5
    //   71: invokestatic 361	java/lang/System:currentTimeMillis	()J
    //   74: putfield 365	android/app/Notification:when	J
    //   77: aload 5
    //   79: ldc_w 329
    //   82: putfield 369	android/app/Notification:icon	I
    //   85: aload 5
    //   87: aload 5
    //   89: getfield 372	android/app/Notification:flags	I
    //   92: iconst_2
    //   93: ior
    //   94: putfield 372	android/app/Notification:flags	I
    //   97: aload_0
    //   98: aload_0
    //   99: getfield 53	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   102: iconst_0
    //   103: invokeinterface 111 2 0
    //   108: checkcast 140	com/estrongs/fs/h
    //   111: aload_0
    //   112: getfield 223	com/estrongs/android/pop/app/LocalFileSharingActivity:e	[Lcom/estrongs/android/pop/app/ee;
    //   115: iload_2
    //   116: aaload
    //   117: getfield 264	com/estrongs/android/pop/app/ee:b	Ljava/lang/String;
    //   120: invokestatic 377	com/estrongs/fs/b/ba:a	(Landroid/content/Context;Lcom/estrongs/fs/h;Ljava/lang/String;)Lcom/estrongs/fs/b/ba;
    //   123: pop
    //   124: new 62	android/content/Intent
    //   127: dup
    //   128: aload_0
    //   129: ldc_w 379
    //   132: invokespecial 382	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   135: astore 6
    //   137: new 115	java/lang/StringBuilder
    //   140: dup
    //   141: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   144: astore 7
    //   146: aload_0
    //   147: getfield 53	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   150: invokeinterface 107 1 0
    //   155: istore_3
    //   156: iconst_0
    //   157: istore_1
    //   158: iload_1
    //   159: iload_3
    //   160: if_icmpge +46 -> 206
    //   163: aload 7
    //   165: aload_0
    //   166: getfield 53	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   169: iload_1
    //   170: invokeinterface 111 2 0
    //   175: checkcast 140	com/estrongs/fs/h
    //   178: invokeinterface 383 1 0
    //   183: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: pop
    //   187: iload_1
    //   188: iload_3
    //   189: iconst_1
    //   190: isub
    //   191: if_icmpge +139 -> 330
    //   194: aload 7
    //   196: ldc_w 385
    //   199: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: pop
    //   203: goto +127 -> 330
    //   206: aload 6
    //   208: ldc_w 386
    //   211: invokevirtual 390	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   214: pop
    //   215: aload 6
    //   217: ldc_w 392
    //   220: aload 7
    //   222: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   225: invokevirtual 395	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   228: pop
    //   229: aload_0
    //   230: iconst_0
    //   231: aload 6
    //   233: ldc_w 396
    //   236: invokestatic 402	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   239: astore 6
    //   241: aload 5
    //   243: aload_0
    //   244: aload_0
    //   245: ldc_w 347
    //   248: invokevirtual 351	com/estrongs/android/pop/app/LocalFileSharingActivity:getString	(I)Ljava/lang/String;
    //   251: aconst_null
    //   252: aload 6
    //   254: invokevirtual 406	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   257: aload_0
    //   258: getfield 408	com/estrongs/android/pop/app/LocalFileSharingActivity:b	Landroid/app/NotificationManager;
    //   261: iconst_1
    //   262: aload 5
    //   264: invokevirtual 414	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   267: iconst_1
    //   268: istore_1
    //   269: goto +68 -> 337
    //   272: aload_0
    //   273: aload_0
    //   274: getfield 53	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   277: aload_0
    //   278: getfield 223	com/estrongs/android/pop/app/LocalFileSharingActivity:e	[Lcom/estrongs/android/pop/app/ee;
    //   281: iload_2
    //   282: aaload
    //   283: getfield 264	com/estrongs/android/pop/app/ee:b	Ljava/lang/String;
    //   286: iconst_1
    //   287: invokestatic 419	com/estrongs/fs/b/bo:a	(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Z)Lcom/estrongs/fs/b/bo;
    //   290: pop
    //   291: iconst_1
    //   292: istore_1
    //   293: goto +44 -> 337
    //   296: iload_1
    //   297: ifeq +11 -> 308
    //   300: aload_0
    //   301: invokevirtual 422	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   304: aload 4
    //   306: monitorexit
    //   307: return
    //   308: aload_0
    //   309: ldc_w 423
    //   312: iconst_1
    //   313: invokestatic 428	com/estrongs/android/ui/view/ak:a	(Landroid/content/Context;II)V
    //   316: goto -12 -> 304
    //   319: astore 5
    //   321: aload 4
    //   323: monitorexit
    //   324: aload 5
    //   326: athrow
    //   327: astore 4
    //   329: return
    //   330: iload_1
    //   331: iconst_1
    //   332: iadd
    //   333: istore_1
    //   334: goto -176 -> 158
    //   337: iload_2
    //   338: iconst_1
    //   339: iadd
    //   340: istore_2
    //   341: goto -321 -> 20
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	344	0	this	LocalFileSharingActivity
    //   19	315	1	i1	int
    //   17	324	2	i2	int
    //   155	36	3	i3	int
    //   11	311	4	arrayOfee	ee[]
    //   327	1	4	localException	Exception
    //   55	208	5	localNotification	android.app.Notification
    //   319	6	5	localObject1	Object
    //   135	118	6	localObject2	Object
    //   144	77	7	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   20	29	319	finally
    //   29	156	319	finally
    //   163	187	319	finally
    //   194	203	319	finally
    //   206	267	319	finally
    //   272	291	319	finally
    //   300	304	319	finally
    //   304	307	319	finally
    //   308	316	319	finally
    //   321	324	319	finally
    //   0	16	327	java/lang/Exception
    //   324	327	327	java/lang/Exception
  }
  
  public void f()
  {
    if (h != null)
    {
      new kh(this, getString(2131232190), h).show();
      return;
    }
    h = aw.a(this, this, this, true);
    m.setVisibility(0);
  }
  
  public void h()
  {
    int i1 = 0;
    synchronized (e)
    {
      while (i1 < e.length)
      {
        e[i1].c = false;
        i1 += 1;
      }
      m();
      g.notifyDataSetChanged();
      return;
    }
  }
  
  public void h_()
  {
    ee[] arrayOfee = e;
    int i1 = 0;
    try
    {
      while (i1 < e.length)
      {
        e[i1].c = true;
        i1 += 1;
      }
      m();
      g.notifyDataSetChanged();
      return;
    }
    finally {}
  }
  
  public void i()
  {
    if (l == null)
    {
      View localView = k.a(this).inflate(2130903185, null);
      cv localcv = new cv(this).a(2131231718).a(localView);
      ((Button)localView.findViewById(2131624536)).setOnClickListener(new eb(this));
      ((Button)localView.findViewById(2131624637)).setOnClickListener(new ec(this, localcv));
      Button localButton = (Button)localView.findViewById(2131624638);
      localButton.setOnClickListener(new ed(this, localcv));
      ((Button)localView.findViewById(2131624639)).setOnClickListener(new du(this, localcv));
      if (!z.D) {}
      for (;;)
      {
        l = localcv.c();
        return;
        localButton.setVisibility(8);
      }
    }
    l.show();
  }
  
  /* Error */
  public void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_0
    //   7: aload_1
    //   8: invokespecial 507	com/estrongs/android/ui/base/HomeAsBackActivity:onCreate	(Landroid/os/Bundle;)V
    //   11: aload_0
    //   12: ldc_w 508
    //   15: invokevirtual 511	com/estrongs/android/pop/app/LocalFileSharingActivity:setContentView	(I)V
    //   18: aload_0
    //   19: ldc_w 512
    //   22: invokevirtual 343	com/estrongs/android/pop/app/LocalFileSharingActivity:setTitle	(I)V
    //   25: aload_0
    //   26: aload_0
    //   27: ldc_w 514
    //   30: invokevirtual 518	com/estrongs/android/pop/app/LocalFileSharingActivity:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   33: checkcast 410	android/app/NotificationManager
    //   36: putfield 408	com/estrongs/android/pop/app/LocalFileSharingActivity:b	Landroid/app/NotificationManager;
    //   39: aload_0
    //   40: aload_0
    //   41: invokevirtual 521	com/estrongs/android/pop/app/LocalFileSharingActivity:J	()Lcom/estrongs/android/ui/theme/at;
    //   44: putfield 253	com/estrongs/android/pop/app/LocalFileSharingActivity:k	Lcom/estrongs/android/ui/theme/at;
    //   47: aload_0
    //   48: aload_0
    //   49: invokestatic 257	com/estrongs/fs/b/aw:b	(Landroid/content/Context;)[Ljava/lang/String;
    //   52: invokestatic 262	com/estrongs/android/pop/app/ee:a	([Ljava/lang/String;)[Lcom/estrongs/android/pop/app/ee;
    //   55: putfield 223	com/estrongs/android/pop/app/LocalFileSharingActivity:e	[Lcom/estrongs/android/pop/app/ee;
    //   58: aload_0
    //   59: aload_0
    //   60: invokevirtual 525	com/estrongs/android/pop/app/LocalFileSharingActivity:getIntent	()Landroid/content/Intent;
    //   63: ldc 65
    //   65: iconst_0
    //   66: invokevirtual 529	android/content/Intent:getBooleanExtra	(Ljava/lang/String;Z)Z
    //   69: putfield 48	com/estrongs/android/pop/app/LocalFileSharingActivity:c	Z
    //   72: aload_0
    //   73: invokevirtual 525	com/estrongs/android/pop/app/LocalFileSharingActivity:getIntent	()Landroid/content/Intent;
    //   76: ldc 71
    //   78: invokevirtual 533	android/content/Intent:getStringArrayListExtra	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   81: astore_1
    //   82: aload_1
    //   83: ifnull +78 -> 161
    //   86: iconst_0
    //   87: istore_2
    //   88: iload_2
    //   89: aload_1
    //   90: invokevirtual 151	java/util/ArrayList:size	()I
    //   93: if_icmpge +686 -> 779
    //   96: aload_1
    //   97: iload_2
    //   98: invokevirtual 152	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   101: checkcast 154	java/lang/String
    //   104: ldc 126
    //   106: invokevirtual 537	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   109: astore_3
    //   110: aload_0
    //   111: invokestatic 542	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   114: aload_3
    //   115: iconst_0
    //   116: aaload
    //   117: invokevirtual 545	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   120: astore 4
    //   122: aload_3
    //   123: arraylength
    //   124: iconst_1
    //   125: if_icmple +17 -> 142
    //   128: aload 4
    //   130: ldc_w 547
    //   133: aload_3
    //   134: iconst_1
    //   135: aaload
    //   136: invokeinterface 550 3 0
    //   141: pop
    //   142: aload_0
    //   143: getfield 53	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   146: aload 4
    //   148: invokeinterface 334 2 0
    //   153: pop
    //   154: iload_2
    //   155: iconst_1
    //   156: iadd
    //   157: istore_2
    //   158: goto -70 -> 88
    //   161: aload_0
    //   162: invokevirtual 525	com/estrongs/android/pop/app/LocalFileSharingActivity:getIntent	()Landroid/content/Intent;
    //   165: invokevirtual 553	android/content/Intent:getAction	()Ljava/lang/String;
    //   168: astore_1
    //   169: getstatic 557	java/lang/System:out	Ljava/io/PrintStream;
    //   172: new 115	java/lang/StringBuilder
    //   175: dup
    //   176: invokespecial 116	java/lang/StringBuilder:<init>	()V
    //   179: ldc_w 559
    //   182: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: aload_1
    //   186: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   192: invokevirtual 565	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   195: aload_1
    //   196: ifnull +286 -> 482
    //   199: aload_1
    //   200: ldc_w 567
    //   203: invokevirtual 267	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   206: ifeq +276 -> 482
    //   209: aload_0
    //   210: invokevirtual 525	com/estrongs/android/pop/app/LocalFileSharingActivity:getIntent	()Landroid/content/Intent;
    //   213: ldc_w 569
    //   216: invokevirtual 573	android/content/Intent:getParcelableExtra	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   219: checkcast 575	android/net/Uri
    //   222: astore 5
    //   224: aload 5
    //   226: ifnonnull +8 -> 234
    //   229: aload_0
    //   230: invokevirtual 422	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   233: return
    //   234: aload 5
    //   236: invokevirtual 578	android/net/Uri:getPath	()Ljava/lang/String;
    //   239: astore_1
    //   240: aload_0
    //   241: invokestatic 542	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   244: astore 6
    //   246: aload 5
    //   248: invokevirtual 581	android/net/Uri:getScheme	()Ljava/lang/String;
    //   251: astore 4
    //   253: aload_1
    //   254: astore_3
    //   255: aload 4
    //   257: ifnull +137 -> 394
    //   260: aload_1
    //   261: astore_3
    //   262: aload 4
    //   264: ldc_w 583
    //   267: invokevirtual 586	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   270: ifeq +124 -> 394
    //   273: aload 5
    //   275: invokevirtual 589	android/net/Uri:getHost	()Ljava/lang/String;
    //   278: astore_1
    //   279: aload_1
    //   280: ldc_w 591
    //   283: invokevirtual 267	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   286: ifne +26 -> 312
    //   289: ldc_w 593
    //   292: aload_1
    //   293: invokevirtual 267	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   296: ifne +16 -> 312
    //   299: aload_0
    //   300: ldc_w 594
    //   303: iconst_1
    //   304: invokestatic 428	com/estrongs/android/ui/view/ak:a	(Landroid/content/Context;II)V
    //   307: aload_0
    //   308: invokevirtual 422	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   311: return
    //   312: aload_0
    //   313: invokevirtual 598	com/estrongs/android/pop/app/LocalFileSharingActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   316: aload 5
    //   318: iconst_1
    //   319: anewarray 154	java/lang/String
    //   322: dup
    //   323: iconst_0
    //   324: ldc_w 600
    //   327: aastore
    //   328: aconst_null
    //   329: aconst_null
    //   330: aconst_null
    //   331: invokevirtual 606	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   334: astore_1
    //   335: aload_1
    //   336: ifnonnull +18 -> 354
    //   339: aload_0
    //   340: invokevirtual 422	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   343: aload_1
    //   344: ifnull -111 -> 233
    //   347: aload_1
    //   348: invokeinterface 611 1 0
    //   353: return
    //   354: aload_1
    //   355: invokeinterface 615 1 0
    //   360: pop
    //   361: aload_1
    //   362: aload_1
    //   363: ldc_w 600
    //   366: invokeinterface 619 2 0
    //   371: invokeinterface 620 2 0
    //   376: astore 4
    //   378: aload 4
    //   380: astore_3
    //   381: aload_1
    //   382: ifnull +12 -> 394
    //   385: aload_1
    //   386: invokeinterface 611 1 0
    //   391: aload 4
    //   393: astore_3
    //   394: aload_0
    //   395: getfield 53	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   398: aload 6
    //   400: aload_3
    //   401: invokevirtual 545	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   404: invokeinterface 334 2 0
    //   409: pop
    //   410: aload_0
    //   411: invokestatic 146	com/estrongs/fs/b/aw:a	(Landroid/content/Context;)[B
    //   414: ifnonnull +365 -> 779
    //   417: new 50	java/util/ArrayList
    //   420: dup
    //   421: invokespecial 51	java/util/ArrayList:<init>	()V
    //   424: astore_1
    //   425: aload_1
    //   426: aload 5
    //   428: invokevirtual 578	android/net/Uri:getPath	()Ljava/lang/String;
    //   431: invokevirtual 138	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   434: pop
    //   435: aload_0
    //   436: aload_1
    //   437: aload_0
    //   438: getfield 48	com/estrongs/android/pop/app/LocalFileSharingActivity:c	Z
    //   441: invokestatic 150	com/estrongs/android/pop/app/network/EsNetworkActivity:a	(Lcom/estrongs/android/pop/app/d/a;Ljava/util/ArrayList;Z)V
    //   444: aload_0
    //   445: invokevirtual 422	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   448: return
    //   449: astore_1
    //   450: aconst_null
    //   451: astore_1
    //   452: aload_0
    //   453: invokevirtual 422	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   456: aload_1
    //   457: ifnull -224 -> 233
    //   460: aload_1
    //   461: invokeinterface 611 1 0
    //   466: return
    //   467: astore_3
    //   468: aconst_null
    //   469: astore_1
    //   470: aload_1
    //   471: ifnull +9 -> 480
    //   474: aload_1
    //   475: invokeinterface 611 1 0
    //   480: aload_3
    //   481: athrow
    //   482: aload_1
    //   483: ifnull +291 -> 774
    //   486: aload_1
    //   487: ldc_w 622
    //   490: invokevirtual 267	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   493: ifeq +281 -> 774
    //   496: new 50	java/util/ArrayList
    //   499: dup
    //   500: invokespecial 51	java/util/ArrayList:<init>	()V
    //   503: pop
    //   504: aload_0
    //   505: invokevirtual 525	com/estrongs/android/pop/app/LocalFileSharingActivity:getIntent	()Landroid/content/Intent;
    //   508: ldc_w 569
    //   511: invokevirtual 625	android/content/Intent:getParcelableArrayListExtra	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   514: astore 7
    //   516: aload 7
    //   518: ifnonnull +8 -> 526
    //   521: aload_0
    //   522: invokevirtual 422	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   525: return
    //   526: iconst_0
    //   527: istore_2
    //   528: iload_2
    //   529: aload 7
    //   531: invokevirtual 151	java/util/ArrayList:size	()I
    //   534: if_icmpge +245 -> 779
    //   537: aload 7
    //   539: iload_2
    //   540: invokevirtual 152	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   543: checkcast 575	android/net/Uri
    //   546: astore 4
    //   548: aload 4
    //   550: invokevirtual 578	android/net/Uri:getPath	()Ljava/lang/String;
    //   553: astore_3
    //   554: aload_0
    //   555: invokestatic 542	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   558: astore 8
    //   560: aload 4
    //   562: invokevirtual 581	android/net/Uri:getScheme	()Ljava/lang/String;
    //   565: astore 9
    //   567: aload_3
    //   568: astore_1
    //   569: aload 9
    //   571: ifnull +140 -> 711
    //   574: aload_3
    //   575: astore_1
    //   576: aload 9
    //   578: ldc_w 583
    //   581: invokevirtual 586	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   584: ifeq +127 -> 711
    //   587: aload 4
    //   589: invokevirtual 589	android/net/Uri:getHost	()Ljava/lang/String;
    //   592: astore_1
    //   593: aload_1
    //   594: ldc_w 591
    //   597: invokevirtual 267	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   600: ifne +26 -> 626
    //   603: ldc_w 593
    //   606: aload_1
    //   607: invokevirtual 267	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   610: ifne +16 -> 626
    //   613: aload_0
    //   614: ldc_w 594
    //   617: iconst_1
    //   618: invokestatic 428	com/estrongs/android/ui/view/ak:a	(Landroid/content/Context;II)V
    //   621: aload_0
    //   622: invokevirtual 422	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   625: return
    //   626: aload 6
    //   628: astore_1
    //   629: aload_0
    //   630: invokevirtual 598	com/estrongs/android/pop/app/LocalFileSharingActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   633: aload 4
    //   635: iconst_1
    //   636: anewarray 154	java/lang/String
    //   639: dup
    //   640: iconst_0
    //   641: ldc_w 600
    //   644: aastore
    //   645: aconst_null
    //   646: aconst_null
    //   647: aconst_null
    //   648: invokevirtual 606	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   651: astore_3
    //   652: aload_3
    //   653: ifnonnull +18 -> 671
    //   656: aload_0
    //   657: invokevirtual 422	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   660: aload_3
    //   661: ifnull -428 -> 233
    //   664: aload_3
    //   665: invokeinterface 611 1 0
    //   670: return
    //   671: aload_3
    //   672: invokeinterface 615 1 0
    //   677: pop
    //   678: aload_3
    //   679: aload_3
    //   680: ldc_w 600
    //   683: invokeinterface 619 2 0
    //   688: invokeinterface 620 2 0
    //   693: astore 4
    //   695: aload 4
    //   697: astore_1
    //   698: aload_3
    //   699: ifnull +12 -> 711
    //   702: aload_3
    //   703: invokeinterface 611 1 0
    //   708: aload 4
    //   710: astore_1
    //   711: aload_0
    //   712: getfield 53	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   715: aload 8
    //   717: aload_1
    //   718: invokevirtual 545	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   721: invokeinterface 334 2 0
    //   726: pop
    //   727: iload_2
    //   728: iconst_1
    //   729: iadd
    //   730: istore_2
    //   731: goto -203 -> 528
    //   734: astore_1
    //   735: aload 5
    //   737: astore_3
    //   738: aload_3
    //   739: astore_1
    //   740: aload_0
    //   741: invokevirtual 422	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   744: aload_3
    //   745: ifnull -512 -> 233
    //   748: aload_3
    //   749: invokeinterface 611 1 0
    //   754: return
    //   755: astore 4
    //   757: aload_1
    //   758: astore_3
    //   759: aload 4
    //   761: astore_1
    //   762: aload_3
    //   763: ifnull +9 -> 772
    //   766: aload_3
    //   767: invokeinterface 611 1 0
    //   772: aload_1
    //   773: athrow
    //   774: aload_0
    //   775: invokevirtual 422	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   778: return
    //   779: aload_0
    //   780: iconst_1
    //   781: invokespecial 627	com/estrongs/android/pop/app/LocalFileSharingActivity:a	(Z)V
    //   784: aload_0
    //   785: putstatic 245	com/estrongs/android/pop/app/LocalFileSharingActivity:j	Lcom/estrongs/android/pop/app/LocalFileSharingActivity;
    //   788: aload_0
    //   789: new 629	com/estrongs/android/pop/app/dt
    //   792: dup
    //   793: aload_0
    //   794: invokespecial 630	com/estrongs/android/pop/app/dt:<init>	(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V
    //   797: putfield 289	com/estrongs/android/pop/app/LocalFileSharingActivity:i	Landroid/os/Handler;
    //   800: return
    //   801: astore_1
    //   802: goto -40 -> 762
    //   805: astore_1
    //   806: goto -68 -> 738
    //   809: astore_3
    //   810: goto -340 -> 470
    //   813: astore_3
    //   814: goto -344 -> 470
    //   817: astore_3
    //   818: goto -366 -> 452
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	821	0	this	LocalFileSharingActivity
    //   0	821	1	paramBundle	android.os.Bundle
    //   87	644	2	i1	int
    //   109	292	3	localObject1	Object
    //   467	14	3	localObject2	Object
    //   553	214	3	localObject3	Object
    //   809	1	3	localObject4	Object
    //   813	1	3	localObject5	Object
    //   817	1	3	localException	Exception
    //   120	589	4	localObject6	Object
    //   755	5	4	localObject7	Object
    //   4	732	5	localUri	android.net.Uri
    //   1	626	6	locald1	com.estrongs.fs.d
    //   514	24	7	localArrayList	ArrayList
    //   558	158	8	locald2	com.estrongs.fs.d
    //   565	12	9	str	String
    // Exception table:
    //   from	to	target	type
    //   312	335	449	java/lang/Exception
    //   312	335	467	finally
    //   629	652	734	java/lang/Exception
    //   629	652	755	finally
    //   740	744	755	finally
    //   656	660	801	finally
    //   671	695	801	finally
    //   656	660	805	java/lang/Exception
    //   671	695	805	java/lang/Exception
    //   339	343	809	finally
    //   354	378	809	finally
    //   452	456	813	finally
    //   339	343	817	java/lang/Exception
    //   354	378	817	java/lang/Exception
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (h != null) {
      h.removeTaskStatusChangeListener(this);
    }
    j = null;
  }
  
  public void onItemClick(AdapterView<?> arg1, View paramView, int paramInt, long paramLong)
  {
    for (;;)
    {
      synchronized (e)
      {
        if (e.length != 0)
        {
          paramView = e[paramInt];
          if (!c)
          {
            bool = true;
            c = bool;
            m();
            g.notifyDataSetChanged();
          }
        }
        else
        {
          return;
        }
      }
      boolean bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.LocalFileSharingActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */