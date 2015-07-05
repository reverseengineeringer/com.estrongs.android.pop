package com.estrongs.android.pop.app;

import android.app.NotificationManager;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.app.network.EsNetworkActivity;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.pop.z;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.dialog.jw;
import com.estrongs.android.ui.e.cf;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.by;
import com.estrongs.android.util.am;
import com.estrongs.fs.b.au;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.c;
import java.util.ArrayList;
import java.util.List;

public class LocalFileSharingActivity
  extends ESActivity
  implements AdapterView.OnItemClickListener, l, p
{
  private static LocalFileSharingActivity j;
  TextView a;
  private NotificationManager b;
  private boolean c = false;
  private ListView d;
  private ef[] e;
  private List<h> f = new ArrayList();
  private BaseAdapter g;
  private au h;
  private Handler i;
  private al k;
  private by l;
  private TextView m;
  private boolean n;
  private cg o;
  private cf p;
  private ProgressBar q = null;
  private FrameLayout r;
  private FrameLayout t;
  
  public static void a()
  {
    if (j == null) {
      return;
    }
    j.i();
    jg.notifyDataSetChanged();
  }
  
  public static void a(ESActivity paramESActivity, ArrayList<String> paramArrayList, boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("play", paramBoolean);
    localIntent.putStringArrayListExtra("files_selected", paramArrayList);
    localIntent.setClass(paramESActivity, LocalFileSharingActivity.class);
    paramESActivity.startActivity(localIntent);
  }
  
  public static void a(ESActivity paramESActivity, List<h> paramList)
  {
    a(paramESActivity, paramList, false);
  }
  
  public static void a(ESActivity paramESActivity, List<h> paramList, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    int i1 = 0;
    if (i1 < paramList.size())
    {
      if ((paramList.get(i1) instanceof c))
      {
        c localc = (c)paramList.get(i1);
        localArrayList.add(localc.getAbsolutePath() + "\n" + localc.getName() + ".apk");
      }
      for (;;)
      {
        i1 += 1;
        break;
        localArrayList.add(((h)paramList.get(i1)).getAbsolutePath());
      }
    }
    if (au.a(paramESActivity) == null)
    {
      EsNetworkActivity.a(paramESActivity, localArrayList, paramBoolean);
      return;
    }
    if ((localArrayList.size() == 1) && (am.bb((String)localArrayList.get(0))))
    {
      paramList = com.estrongs.android.pop.a.d + "/" + am.d((String)localArrayList.get(0));
      AppRunner.a(paramESActivity, (String)localArrayList.get(0), paramList, new dx(localArrayList, paramList, paramESActivity, paramBoolean), false);
      return;
    }
    a(paramESActivity, localArrayList, paramBoolean);
  }
  
  private void a(boolean paramBoolean)
  {
    r.removeAllViews();
    r.addView(g.a(this).inflate(2130903127, null));
    ??? = (FrameLayout)findViewById(2131362208);
    ((FrameLayout)???).setBackgroundDrawable(k.h());
    if (t == null)
    {
      t = ((FrameLayout)g.a(this).inflate(2130903079, null));
      ((FrameLayout)???).addView(t);
      d = ((ListView)t.findViewById(2131362040));
      a = ((TextView)t.findViewById(2131362041));
      d.setEmptyView(a);
      d.setAdapter(k());
      d.setOnItemClickListener(this);
      q = ((ProgressBar)r.findViewById(2131361935));
      p = new cf(this, n);
    }
    for (;;)
    {
      synchronized (e)
      {
        if (e.length == 0)
        {
          if ((h == null) && (paramBoolean)) {
            h = au.a(this, this, this, true);
          }
          q.setVisibility(0);
          a.setText("");
          m = ((TextView)findViewById(2131361997));
          m.setText(2131427541);
          l = new by(this, (RelativeLayout)findViewById(2131362207), 1);
          if (c) {
            p.a(2, 2131427357, 2130838219);
          }
          l.a("normal_mode", p);
          l.a("normal_mode", Boolean.valueOf(false));
          j();
          return;
        }
        if (h == null) {
          continue;
        }
        q.setVisibility(0);
      }
      ((FrameLayout)???).removeAllViews();
      ((FrameLayout)???).addView(t);
    }
  }
  
  private void h()
  {
    FrameLayout localFrameLayout = (FrameLayout)findViewById(2131362208);
    if (localFrameLayout != null) {
      localFrameLayout.removeView(t);
    }
    t = null;
  }
  
  private void i()
  {
    for (;;)
    {
      int i1;
      int i2;
      synchronized (e)
      {
        ef[] arrayOfef2 = ef.a(au.b(this));
        i1 = 0;
        if (i1 < arrayOfef2.length)
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
          e = arrayOfef2;
          l();
          return;
        }
      }
      i2 += 1;
      continue;
      label104:
      i1 += 1;
    }
  }
  
  private void j()
  {
    ImageView localImageView = (ImageView)findViewById(2131361917);
    ((LinearLayout)localImageView.getParent()).setOnClickListener(new dy(this, localImageView));
    localImageView.setOnClickListener(new dz(this));
  }
  
  private BaseAdapter k()
  {
    g = new dw(this);
    return g;
  }
  
  private void l()
  {
    if (p == null) {
      return;
    }
    int i1 = 0;
    for (;;)
    {
      if ((i1 >= e.length) || (!e[i1].c))
      {
        if (i1 != e.length) {
          break;
        }
        p.a(1, 2131427372, 2130838186);
        return;
      }
      i1 += 1;
    }
    p.a(1, 2131427371, 2130838184);
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
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 284	com/estrongs/android/pop/app/LocalFileSharingActivity:m	Landroid/widget/TextView;
    //   4: ldc_w 396
    //   7: invokevirtual 287	android/widget/TextView:setText	(I)V
    //   10: aload_0
    //   11: getfield 266	com/estrongs/android/pop/app/LocalFileSharingActivity:e	[Lcom/estrongs/android/pop/app/ef;
    //   14: astore 4
    //   16: aload 4
    //   18: monitorenter
    //   19: iconst_0
    //   20: istore_2
    //   21: iconst_0
    //   22: istore_1
    //   23: iload_2
    //   24: aload_0
    //   25: getfield 266	com/estrongs/android/pop/app/LocalFileSharingActivity:e	[Lcom/estrongs/android/pop/app/ef;
    //   28: arraylength
    //   29: if_icmpge +270 -> 299
    //   32: aload_0
    //   33: getfield 266	com/estrongs/android/pop/app/LocalFileSharingActivity:e	[Lcom/estrongs/android/pop/app/ef;
    //   36: iload_2
    //   37: aaload
    //   38: getfield 341	com/estrongs/android/pop/app/ef:c	Z
    //   41: ifeq +299 -> 340
    //   44: aload_0
    //   45: getfield 52	com/estrongs/android/pop/app/LocalFileSharingActivity:c	Z
    //   48: ifeq +227 -> 275
    //   51: new 398	android/app/Notification
    //   54: dup
    //   55: invokespecial 399	android/app/Notification:<init>	()V
    //   58: astore 5
    //   60: aload 5
    //   62: aload_0
    //   63: ldc_w 400
    //   66: invokevirtual 404	com/estrongs/android/pop/app/LocalFileSharingActivity:getString	(I)Ljava/lang/String;
    //   69: putfield 408	android/app/Notification:tickerText	Ljava/lang/CharSequence;
    //   72: aload 5
    //   74: invokestatic 414	java/lang/System:currentTimeMillis	()J
    //   77: putfield 418	android/app/Notification:when	J
    //   80: aload 5
    //   82: ldc_w 299
    //   85: putfield 422	android/app/Notification:icon	I
    //   88: aload 5
    //   90: aload 5
    //   92: getfield 425	android/app/Notification:flags	I
    //   95: iconst_2
    //   96: ior
    //   97: putfield 425	android/app/Notification:flags	I
    //   100: aload_0
    //   101: aload_0
    //   102: getfield 57	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   105: iconst_0
    //   106: invokeinterface 113 2 0
    //   111: checkcast 142	com/estrongs/fs/h
    //   114: aload_0
    //   115: getfield 266	com/estrongs/android/pop/app/LocalFileSharingActivity:e	[Lcom/estrongs/android/pop/app/ef;
    //   118: iload_2
    //   119: aaload
    //   120: getfield 337	com/estrongs/android/pop/app/ef:b	Ljava/lang/String;
    //   123: invokestatic 430	com/estrongs/fs/b/ay:a	(Landroid/content/Context;Lcom/estrongs/fs/h;Ljava/lang/String;)Lcom/estrongs/fs/b/ay;
    //   126: pop
    //   127: new 75	android/content/Intent
    //   130: dup
    //   131: aload_0
    //   132: ldc_w 432
    //   135: invokespecial 435	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   138: astore 6
    //   140: new 117	java/lang/StringBuilder
    //   143: dup
    //   144: invokespecial 118	java/lang/StringBuilder:<init>	()V
    //   147: astore 7
    //   149: aload_0
    //   150: getfield 57	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   153: invokeinterface 109 1 0
    //   158: istore_3
    //   159: iconst_0
    //   160: istore_1
    //   161: iload_1
    //   162: iload_3
    //   163: if_icmpge +46 -> 209
    //   166: aload 7
    //   168: aload_0
    //   169: getfield 57	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   172: iload_1
    //   173: invokeinterface 113 2 0
    //   178: checkcast 142	com/estrongs/fs/h
    //   181: invokeinterface 436 1 0
    //   186: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: pop
    //   190: iload_1
    //   191: iload_3
    //   192: iconst_1
    //   193: isub
    //   194: if_icmpge +139 -> 333
    //   197: aload 7
    //   199: ldc_w 438
    //   202: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   205: pop
    //   206: goto +127 -> 333
    //   209: aload 6
    //   211: ldc_w 439
    //   214: invokevirtual 443	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   217: pop
    //   218: aload 6
    //   220: ldc_w 445
    //   223: aload 7
    //   225: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   228: invokevirtual 448	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   231: pop
    //   232: aload_0
    //   233: iconst_0
    //   234: aload 6
    //   236: ldc_w 449
    //   239: invokestatic 455	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   242: astore 6
    //   244: aload 5
    //   246: aload_0
    //   247: aload_0
    //   248: ldc_w 400
    //   251: invokevirtual 404	com/estrongs/android/pop/app/LocalFileSharingActivity:getString	(I)Ljava/lang/String;
    //   254: aconst_null
    //   255: aload 6
    //   257: invokevirtual 459	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   260: aload_0
    //   261: getfield 461	com/estrongs/android/pop/app/LocalFileSharingActivity:b	Landroid/app/NotificationManager;
    //   264: iconst_1
    //   265: aload 5
    //   267: invokevirtual 467	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   270: iconst_1
    //   271: istore_1
    //   272: goto +68 -> 340
    //   275: aload_0
    //   276: aload_0
    //   277: getfield 57	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   280: aload_0
    //   281: getfield 266	com/estrongs/android/pop/app/LocalFileSharingActivity:e	[Lcom/estrongs/android/pop/app/ef;
    //   284: iload_2
    //   285: aaload
    //   286: getfield 337	com/estrongs/android/pop/app/ef:b	Ljava/lang/String;
    //   289: iconst_1
    //   290: invokestatic 472	com/estrongs/fs/b/bm:a	(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;Z)Lcom/estrongs/fs/b/bm;
    //   293: pop
    //   294: iconst_1
    //   295: istore_1
    //   296: goto +44 -> 340
    //   299: iload_1
    //   300: ifeq +11 -> 311
    //   303: aload_0
    //   304: invokevirtual 475	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   307: aload 4
    //   309: monitorexit
    //   310: return
    //   311: aload_0
    //   312: ldc_w 476
    //   315: iconst_1
    //   316: invokestatic 481	com/estrongs/android/ui/view/ag:a	(Landroid/content/Context;II)V
    //   319: goto -12 -> 307
    //   322: astore 5
    //   324: aload 4
    //   326: monitorexit
    //   327: aload 5
    //   329: athrow
    //   330: astore 4
    //   332: return
    //   333: iload_1
    //   334: iconst_1
    //   335: iadd
    //   336: istore_1
    //   337: goto -176 -> 161
    //   340: iload_2
    //   341: iconst_1
    //   342: iadd
    //   343: istore_2
    //   344: goto -321 -> 23
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	347	0	this	LocalFileSharingActivity
    //   22	315	1	i1	int
    //   20	324	2	i2	int
    //   158	36	3	i3	int
    //   14	311	4	arrayOfef	ef[]
    //   330	1	4	localException	Exception
    //   58	208	5	localNotification	android.app.Notification
    //   322	6	5	localObject1	Object
    //   138	118	6	localObject2	Object
    //   147	77	7	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   23	32	322	finally
    //   32	159	322	finally
    //   166	190	322	finally
    //   197	206	322	finally
    //   209	270	322	finally
    //   275	294	322	finally
    //   303	307	322	finally
    //   307	310	322	finally
    //   311	319	322	finally
    //   324	327	322	finally
    //   0	19	330	java/lang/Exception
    //   327	330	330	java/lang/Exception
  }
  
  public void c()
  {
    if (h != null)
    {
      new jw(this, getString(2131427446), h).show();
      return;
    }
    h = au.a(this, this, this, true);
    q.setVisibility(0);
  }
  
  public void d()
  {
    ef[] arrayOfef = e;
    int i1 = 0;
    try
    {
      while (i1 < e.length)
      {
        e[i1].c = true;
        i1 += 1;
      }
      l();
      g.notifyDataSetChanged();
      return;
    }
    finally {}
  }
  
  public void e()
  {
    int i1 = 0;
    synchronized (e)
    {
      while (i1 < e.length)
      {
        e[i1].c = false;
        i1 += 1;
      }
      l();
      g.notifyDataSetChanged();
      return;
    }
  }
  
  public void f()
  {
    if (o == null)
    {
      Object localObject = g.a(this).inflate(2130903097, null);
      ((Button)((View)localObject).findViewById(2131362073)).setOnClickListener(new ea(this));
      localObject = new ct(this).a(2131427404).a((View)localObject);
      if (!z.D) {
        ((ct)localObject).d(2131427340, new ed(this)).e(2131427397, new ec(this)).f(2131427521, new eb(this));
      }
      for (;;)
      {
        o = ((ct)localObject).c();
        return;
        ((ct)localObject).b(2131427340, new dv(this)).c(2131427397, new ee(this));
      }
    }
    o.show();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    boolean bool = true;
    super.onConfigurationChanged(paramConfiguration);
    if (getResourcesgetConfigurationorientation == 1) {}
    for (;;)
    {
      n = bool;
      h();
      a(false);
      return;
      bool = false;
    }
  }
  
  /* Error */
  public void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 6
    //   6: aload_0
    //   7: aload_1
    //   8: invokespecial 582	com/estrongs/android/pop/esclasses/ESActivity:onCreate	(Landroid/os/Bundle;)V
    //   11: aload_0
    //   12: ldc_w 583
    //   15: invokevirtual 586	com/estrongs/android/pop/app/LocalFileSharingActivity:setContentView	(I)V
    //   18: aload_0
    //   19: aload_0
    //   20: ldc_w 587
    //   23: invokevirtual 213	com/estrongs/android/pop/app/LocalFileSharingActivity:findViewById	(I)Landroid/view/View;
    //   26: checkcast 189	android/widget/FrameLayout
    //   29: putfield 187	com/estrongs/android/pop/app/LocalFileSharingActivity:r	Landroid/widget/FrameLayout;
    //   32: aload_0
    //   33: aload_0
    //   34: ldc_w 589
    //   37: invokevirtual 593	com/estrongs/android/pop/app/LocalFileSharingActivity:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   40: checkcast 463	android/app/NotificationManager
    //   43: putfield 461	com/estrongs/android/pop/app/LocalFileSharingActivity:b	Landroid/app/NotificationManager;
    //   46: aload_0
    //   47: aload_0
    //   48: invokestatic 596	com/estrongs/android/ui/theme/al:a	(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;
    //   51: putfield 215	com/estrongs/android/pop/app/LocalFileSharingActivity:k	Lcom/estrongs/android/ui/theme/al;
    //   54: aload_0
    //   55: invokevirtual 563	com/estrongs/android/pop/app/LocalFileSharingActivity:getResources	()Landroid/content/res/Resources;
    //   58: invokevirtual 569	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   61: getfield 574	android/content/res/Configuration:orientation	I
    //   64: iconst_1
    //   65: if_icmpne +128 -> 193
    //   68: iconst_1
    //   69: istore_3
    //   70: aload_0
    //   71: iload_3
    //   72: putfield 259	com/estrongs/android/pop/app/LocalFileSharingActivity:n	Z
    //   75: aload_0
    //   76: aload_0
    //   77: invokestatic 330	com/estrongs/fs/b/au:b	(Landroid/content/Context;)[Ljava/lang/String;
    //   80: invokestatic 335	com/estrongs/android/pop/app/ef:a	([Ljava/lang/String;)[Lcom/estrongs/android/pop/app/ef;
    //   83: putfield 266	com/estrongs/android/pop/app/LocalFileSharingActivity:e	[Lcom/estrongs/android/pop/app/ef;
    //   86: aload_0
    //   87: aload_0
    //   88: invokevirtual 600	com/estrongs/android/pop/app/LocalFileSharingActivity:getIntent	()Landroid/content/Intent;
    //   91: ldc 78
    //   93: iconst_0
    //   94: invokevirtual 604	android/content/Intent:getBooleanExtra	(Ljava/lang/String;Z)Z
    //   97: putfield 52	com/estrongs/android/pop/app/LocalFileSharingActivity:c	Z
    //   100: aload_0
    //   101: invokevirtual 600	com/estrongs/android/pop/app/LocalFileSharingActivity:getIntent	()Landroid/content/Intent;
    //   104: ldc 84
    //   106: invokevirtual 608	android/content/Intent:getStringArrayListExtra	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   109: astore_1
    //   110: aload_1
    //   111: ifnull +87 -> 198
    //   114: iconst_0
    //   115: istore_2
    //   116: iload_2
    //   117: aload_1
    //   118: invokevirtual 153	java/util/ArrayList:size	()I
    //   121: if_icmpge +721 -> 842
    //   124: aload_1
    //   125: iload_2
    //   126: invokevirtual 154	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   129: checkcast 156	java/lang/String
    //   132: ldc -128
    //   134: invokevirtual 612	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   137: astore 4
    //   139: aload_0
    //   140: invokestatic 617	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   143: aload 4
    //   145: iconst_0
    //   146: aaload
    //   147: invokevirtual 620	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   150: astore 5
    //   152: aload 4
    //   154: arraylength
    //   155: iconst_1
    //   156: if_icmple +18 -> 174
    //   159: aload 5
    //   161: ldc_w 622
    //   164: aload 4
    //   166: iconst_1
    //   167: aaload
    //   168: invokeinterface 625 3 0
    //   173: pop
    //   174: aload_0
    //   175: getfield 57	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   178: aload 5
    //   180: invokeinterface 626 2 0
    //   185: pop
    //   186: iload_2
    //   187: iconst_1
    //   188: iadd
    //   189: istore_2
    //   190: goto -74 -> 116
    //   193: iconst_0
    //   194: istore_3
    //   195: goto -125 -> 70
    //   198: aload_0
    //   199: invokevirtual 600	com/estrongs/android/pop/app/LocalFileSharingActivity:getIntent	()Landroid/content/Intent;
    //   202: invokevirtual 629	android/content/Intent:getAction	()Ljava/lang/String;
    //   205: astore_1
    //   206: getstatic 633	java/lang/System:out	Ljava/io/PrintStream;
    //   209: new 117	java/lang/StringBuilder
    //   212: dup
    //   213: invokespecial 118	java/lang/StringBuilder:<init>	()V
    //   216: ldc_w 635
    //   219: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: aload_1
    //   223: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   229: invokevirtual 641	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   232: aload_1
    //   233: ifnull +293 -> 526
    //   236: aload_1
    //   237: ldc_w 643
    //   240: invokevirtual 340	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   243: ifeq +283 -> 526
    //   246: aload_0
    //   247: invokevirtual 600	com/estrongs/android/pop/app/LocalFileSharingActivity:getIntent	()Landroid/content/Intent;
    //   250: ldc_w 645
    //   253: invokevirtual 649	android/content/Intent:getParcelableExtra	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   256: checkcast 651	android/net/Uri
    //   259: astore 6
    //   261: aload 6
    //   263: ifnonnull +8 -> 271
    //   266: aload_0
    //   267: invokevirtual 475	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   270: return
    //   271: aload 6
    //   273: invokevirtual 654	android/net/Uri:getPath	()Ljava/lang/String;
    //   276: astore_1
    //   277: aload_0
    //   278: invokestatic 617	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   281: astore 7
    //   283: aload 6
    //   285: invokevirtual 657	android/net/Uri:getScheme	()Ljava/lang/String;
    //   288: astore 5
    //   290: aload_1
    //   291: astore 4
    //   293: aload 5
    //   295: ifnull +140 -> 435
    //   298: aload_1
    //   299: astore 4
    //   301: aload 5
    //   303: ldc_w 659
    //   306: invokevirtual 662	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   309: ifeq +126 -> 435
    //   312: aload 6
    //   314: invokevirtual 665	android/net/Uri:getHost	()Ljava/lang/String;
    //   317: astore_1
    //   318: aload_1
    //   319: ldc_w 667
    //   322: invokevirtual 340	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   325: ifne +26 -> 351
    //   328: ldc_w 669
    //   331: aload_1
    //   332: invokevirtual 340	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   335: ifne +16 -> 351
    //   338: aload_0
    //   339: ldc_w 670
    //   342: iconst_1
    //   343: invokestatic 481	com/estrongs/android/ui/view/ag:a	(Landroid/content/Context;II)V
    //   346: aload_0
    //   347: invokevirtual 475	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   350: return
    //   351: aload_0
    //   352: invokevirtual 674	com/estrongs/android/pop/app/LocalFileSharingActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   355: aload 6
    //   357: iconst_1
    //   358: anewarray 156	java/lang/String
    //   361: dup
    //   362: iconst_0
    //   363: ldc_w 676
    //   366: aastore
    //   367: aconst_null
    //   368: aconst_null
    //   369: aconst_null
    //   370: invokevirtual 682	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   373: astore_1
    //   374: aload_1
    //   375: ifnonnull +18 -> 393
    //   378: aload_0
    //   379: invokevirtual 475	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   382: aload_1
    //   383: ifnull -113 -> 270
    //   386: aload_1
    //   387: invokeinterface 687 1 0
    //   392: return
    //   393: aload_1
    //   394: invokeinterface 691 1 0
    //   399: pop
    //   400: aload_1
    //   401: aload_1
    //   402: ldc_w 676
    //   405: invokeinterface 695 2 0
    //   410: invokeinterface 696 2 0
    //   415: astore 5
    //   417: aload 5
    //   419: astore 4
    //   421: aload_1
    //   422: ifnull +13 -> 435
    //   425: aload_1
    //   426: invokeinterface 687 1 0
    //   431: aload 5
    //   433: astore 4
    //   435: aload_0
    //   436: getfield 57	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   439: aload 7
    //   441: aload 4
    //   443: invokevirtual 620	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   446: invokeinterface 626 2 0
    //   451: pop
    //   452: aload_0
    //   453: invokestatic 148	com/estrongs/fs/b/au:a	(Landroid/content/Context;)[B
    //   456: ifnonnull +386 -> 842
    //   459: new 54	java/util/ArrayList
    //   462: dup
    //   463: invokespecial 55	java/util/ArrayList:<init>	()V
    //   466: astore_1
    //   467: aload_1
    //   468: aload 6
    //   470: invokevirtual 654	android/net/Uri:getPath	()Ljava/lang/String;
    //   473: invokevirtual 140	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   476: pop
    //   477: aload_0
    //   478: aload_1
    //   479: aload_0
    //   480: getfield 52	com/estrongs/android/pop/app/LocalFileSharingActivity:c	Z
    //   483: invokestatic 152	com/estrongs/android/pop/app/network/EsNetworkActivity:a	(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/ArrayList;Z)V
    //   486: aload_0
    //   487: invokevirtual 475	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   490: return
    //   491: astore_1
    //   492: aconst_null
    //   493: astore_1
    //   494: aload_0
    //   495: invokevirtual 475	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   498: aload_1
    //   499: ifnull -229 -> 270
    //   502: aload_1
    //   503: invokeinterface 687 1 0
    //   508: return
    //   509: astore 4
    //   511: aconst_null
    //   512: astore_1
    //   513: aload_1
    //   514: ifnull +9 -> 523
    //   517: aload_1
    //   518: invokeinterface 687 1 0
    //   523: aload 4
    //   525: athrow
    //   526: aload_1
    //   527: ifnull +310 -> 837
    //   530: aload_1
    //   531: ldc_w 698
    //   534: invokevirtual 340	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   537: ifeq +300 -> 837
    //   540: new 54	java/util/ArrayList
    //   543: dup
    //   544: invokespecial 55	java/util/ArrayList:<init>	()V
    //   547: pop
    //   548: aload_0
    //   549: invokevirtual 600	com/estrongs/android/pop/app/LocalFileSharingActivity:getIntent	()Landroid/content/Intent;
    //   552: ldc_w 645
    //   555: invokevirtual 701	android/content/Intent:getParcelableArrayListExtra	(Ljava/lang/String;)Ljava/util/ArrayList;
    //   558: astore 8
    //   560: aload 8
    //   562: ifnonnull +8 -> 570
    //   565: aload_0
    //   566: invokevirtual 475	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   569: return
    //   570: iconst_0
    //   571: istore_2
    //   572: iload_2
    //   573: aload 8
    //   575: invokevirtual 153	java/util/ArrayList:size	()I
    //   578: if_icmpge +264 -> 842
    //   581: aload 8
    //   583: iload_2
    //   584: invokevirtual 154	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   587: checkcast 651	android/net/Uri
    //   590: astore 5
    //   592: aload 5
    //   594: invokevirtual 654	android/net/Uri:getPath	()Ljava/lang/String;
    //   597: astore 4
    //   599: aload_0
    //   600: invokestatic 617	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   603: astore 9
    //   605: aload 5
    //   607: invokevirtual 657	android/net/Uri:getScheme	()Ljava/lang/String;
    //   610: astore 10
    //   612: aload 4
    //   614: astore_1
    //   615: aload 10
    //   617: ifnull +150 -> 767
    //   620: aload 4
    //   622: astore_1
    //   623: aload 10
    //   625: ldc_w 659
    //   628: invokevirtual 662	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   631: ifeq +136 -> 767
    //   634: aload 5
    //   636: invokevirtual 665	android/net/Uri:getHost	()Ljava/lang/String;
    //   639: astore_1
    //   640: aload_1
    //   641: ldc_w 667
    //   644: invokevirtual 340	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   647: ifne +26 -> 673
    //   650: ldc_w 669
    //   653: aload_1
    //   654: invokevirtual 340	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   657: ifne +16 -> 673
    //   660: aload_0
    //   661: ldc_w 670
    //   664: iconst_1
    //   665: invokestatic 481	com/estrongs/android/ui/view/ag:a	(Landroid/content/Context;II)V
    //   668: aload_0
    //   669: invokevirtual 475	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   672: return
    //   673: aload 7
    //   675: astore_1
    //   676: aload_0
    //   677: invokevirtual 674	com/estrongs/android/pop/app/LocalFileSharingActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   680: aload 5
    //   682: iconst_1
    //   683: anewarray 156	java/lang/String
    //   686: dup
    //   687: iconst_0
    //   688: ldc_w 676
    //   691: aastore
    //   692: aconst_null
    //   693: aconst_null
    //   694: aconst_null
    //   695: invokevirtual 682	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   698: astore 4
    //   700: aload 4
    //   702: ifnonnull +20 -> 722
    //   705: aload_0
    //   706: invokevirtual 475	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   709: aload 4
    //   711: ifnull -441 -> 270
    //   714: aload 4
    //   716: invokeinterface 687 1 0
    //   721: return
    //   722: aload 4
    //   724: invokeinterface 691 1 0
    //   729: pop
    //   730: aload 4
    //   732: aload 4
    //   734: ldc_w 676
    //   737: invokeinterface 695 2 0
    //   742: invokeinterface 696 2 0
    //   747: astore 5
    //   749: aload 5
    //   751: astore_1
    //   752: aload 4
    //   754: ifnull +13 -> 767
    //   757: aload 4
    //   759: invokeinterface 687 1 0
    //   764: aload 5
    //   766: astore_1
    //   767: aload_0
    //   768: getfield 57	com/estrongs/android/pop/app/LocalFileSharingActivity:f	Ljava/util/List;
    //   771: aload 9
    //   773: aload_1
    //   774: invokevirtual 620	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   777: invokeinterface 626 2 0
    //   782: pop
    //   783: iload_2
    //   784: iconst_1
    //   785: iadd
    //   786: istore_2
    //   787: goto -215 -> 572
    //   790: astore_1
    //   791: aload 6
    //   793: astore 4
    //   795: aload 4
    //   797: astore_1
    //   798: aload_0
    //   799: invokevirtual 475	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   802: aload 4
    //   804: ifnull -534 -> 270
    //   807: aload 4
    //   809: invokeinterface 687 1 0
    //   814: return
    //   815: astore 5
    //   817: aload_1
    //   818: astore 4
    //   820: aload 5
    //   822: astore_1
    //   823: aload 4
    //   825: ifnull +10 -> 835
    //   828: aload 4
    //   830: invokeinterface 687 1 0
    //   835: aload_1
    //   836: athrow
    //   837: aload_0
    //   838: invokevirtual 475	com/estrongs/android/pop/app/LocalFileSharingActivity:finish	()V
    //   841: return
    //   842: aload_0
    //   843: iconst_1
    //   844: invokespecial 578	com/estrongs/android/pop/app/LocalFileSharingActivity:a	(Z)V
    //   847: aload_0
    //   848: putstatic 62	com/estrongs/android/pop/app/LocalFileSharingActivity:j	Lcom/estrongs/android/pop/app/LocalFileSharingActivity;
    //   851: aload_0
    //   852: new 703	com/estrongs/android/pop/app/du
    //   855: dup
    //   856: aload_0
    //   857: invokespecial 704	com/estrongs/android/pop/app/du:<init>	(Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V
    //   860: putfield 376	com/estrongs/android/pop/app/LocalFileSharingActivity:i	Landroid/os/Handler;
    //   863: return
    //   864: astore_1
    //   865: goto -42 -> 823
    //   868: astore_1
    //   869: goto -74 -> 795
    //   872: astore 4
    //   874: goto -361 -> 513
    //   877: astore 4
    //   879: goto -366 -> 513
    //   882: astore 4
    //   884: goto -390 -> 494
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	887	0	this	LocalFileSharingActivity
    //   0	887	1	paramBundle	android.os.Bundle
    //   115	672	2	i1	int
    //   69	126	3	bool	boolean
    //   137	305	4	localObject1	Object
    //   509	15	4	localObject2	Object
    //   597	232	4	localObject3	Object
    //   872	1	4	localObject4	Object
    //   877	1	4	localObject5	Object
    //   882	1	4	localException	Exception
    //   150	615	5	localObject6	Object
    //   815	6	5	localObject7	Object
    //   4	788	6	localUri	android.net.Uri
    //   1	673	7	locald1	com.estrongs.fs.d
    //   558	24	8	localArrayList	ArrayList
    //   603	169	9	locald2	com.estrongs.fs.d
    //   610	14	10	str	String
    // Exception table:
    //   from	to	target	type
    //   351	374	491	java/lang/Exception
    //   351	374	509	finally
    //   676	700	790	java/lang/Exception
    //   676	700	815	finally
    //   798	802	815	finally
    //   705	709	864	finally
    //   722	749	864	finally
    //   705	709	868	java/lang/Exception
    //   722	749	868	java/lang/Exception
    //   378	382	872	finally
    //   393	417	872	finally
    //   494	498	877	finally
    //   378	382	882	java/lang/Exception
    //   393	417	882	java/lang/Exception
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
            l();
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