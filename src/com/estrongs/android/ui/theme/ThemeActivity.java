package com.estrongs.android.ui.theme;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.ui.adapter.dr;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.an;
import com.estrongs.android.util.ap;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class ThemeActivity
  extends HomeAsBackActivity
{
  private at a;
  private ListView b;
  private dr c;
  private Handler d;
  private String e;
  private String f;
  private boolean g;
  private LinearLayout h;
  private BroadcastReceiver i;
  private Map<String, x> j;
  private com.estrongs.android.view.a.a k;
  private Context l;
  
  private void a(al paramal, String paramString)
  {
    Object localObject = getAssets();
    String str = paramal.d() + "image_thumb";
    paramal = ((AssetManager)localObject).open(paramString);
    paramString = new File(str);
    if (!paramString.exists())
    {
      paramString.createNewFile();
      paramString = new FileOutputStream(paramString);
      localObject = new byte['Ѐ'];
      for (;;)
      {
        int m = paramal.read((byte[])localObject);
        if (m == -1) {
          break;
        }
        paramString.write((byte[])localObject, 0, m);
      }
      paramString.flush();
      paramString.close();
    }
    paramal.close();
  }
  
  private void d()
  {
    b = ((ListView)findViewById(2131625553));
    j();
    d = new r(this);
    c = new dr(this, d);
    i();
    b.setAdapter(c);
  }
  
  /* Error */
  private void e()
  {
    // Byte code:
    //   0: new 40	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   7: aload_0
    //   8: invokestatic 149	com/estrongs/android/util/ap:a	(Landroid/content/Context;)Ljava/lang/String;
    //   11: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: ldc -105
    //   16: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   22: astore 5
    //   24: aload 5
    //   26: astore 4
    //   28: new 63	java/io/File
    //   31: dup
    //   32: aload 5
    //   34: invokespecial 66	java/io/File:<init>	(Ljava/lang/String;)V
    //   37: invokevirtual 70	java/io/File:exists	()Z
    //   40: ifne +28 -> 68
    //   43: new 40	java/lang/StringBuilder
    //   46: dup
    //   47: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   50: aload_0
    //   51: iconst_0
    //   52: invokestatic 154	com/estrongs/android/util/ap:a	(Landroid/content/Context;Z)Ljava/lang/String;
    //   55: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: ldc -105
    //   60: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: astore 4
    //   68: aload 4
    //   70: invokestatic 157	com/estrongs/android/ui/theme/al:b	(Ljava/lang/String;)Ljava/util/List;
    //   73: astore 4
    //   75: aload_0
    //   76: getstatic 159	com/estrongs/android/ui/theme/al:b	Ljava/lang/String;
    //   79: putfield 161	com/estrongs/android/ui/theme/ThemeActivity:e	Ljava/lang/String;
    //   82: aload 4
    //   84: ifnonnull +502 -> 586
    //   87: new 163	java/util/ArrayList
    //   90: dup
    //   91: invokespecial 164	java/util/ArrayList:<init>	()V
    //   94: astore 4
    //   96: iconst_1
    //   97: istore_2
    //   98: iconst_1
    //   99: istore_1
    //   100: new 43	com/estrongs/android/ui/theme/al
    //   103: dup
    //   104: invokespecial 165	com/estrongs/android/ui/theme/al:<init>	()V
    //   107: astore 5
    //   109: aload 5
    //   111: aload_0
    //   112: invokevirtual 169	com/estrongs/android/ui/theme/ThemeActivity:getResources	()Landroid/content/res/Resources;
    //   115: ldc -86
    //   117: invokevirtual 176	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   120: putfield 178	com/estrongs/android/ui/theme/al:d	Ljava/lang/String;
    //   123: aload 5
    //   125: aload_0
    //   126: invokevirtual 181	com/estrongs/android/ui/theme/ThemeActivity:getPackageName	()Ljava/lang/String;
    //   129: putfield 183	com/estrongs/android/ui/theme/al:c	Ljava/lang/String;
    //   132: aload 5
    //   134: iconst_0
    //   135: putfield 186	com/estrongs/android/ui/theme/al:h	I
    //   138: aload 4
    //   140: iconst_0
    //   141: aload 5
    //   143: invokeinterface 192 3 0
    //   148: iload_1
    //   149: ifeq +88 -> 237
    //   152: aload_0
    //   153: invokevirtual 196	com/estrongs/android/ui/theme/ThemeActivity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   156: astore 6
    //   158: aload 6
    //   160: ldc -58
    //   162: iconst_0
    //   163: invokevirtual 204	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   166: astore 7
    //   168: aload 7
    //   170: ifnull +67 -> 237
    //   173: new 43	com/estrongs/android/ui/theme/al
    //   176: dup
    //   177: invokespecial 165	com/estrongs/android/ui/theme/al:<init>	()V
    //   180: astore 5
    //   182: aload 5
    //   184: aload 7
    //   186: getfield 210	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   189: aload 6
    //   191: invokevirtual 216	android/content/pm/ApplicationInfo:loadLabel	(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    //   194: invokeinterface 219 1 0
    //   199: putfield 178	com/estrongs/android/ui/theme/al:d	Ljava/lang/String;
    //   202: aload 5
    //   204: ldc -58
    //   206: putfield 183	com/estrongs/android/ui/theme/al:c	Ljava/lang/String;
    //   209: aload 5
    //   211: aload 7
    //   213: getfield 222	android/content/pm/PackageInfo:versionCode	I
    //   216: putfield 186	com/estrongs/android/ui/theme/al:h	I
    //   219: aload_0
    //   220: aload 5
    //   222: ldc -32
    //   224: invokespecial 226	com/estrongs/android/ui/theme/ThemeActivity:a	(Lcom/estrongs/android/ui/theme/al;Ljava/lang/String;)V
    //   227: aload 4
    //   229: aload 5
    //   231: invokeinterface 229 2 0
    //   236: pop
    //   237: iload_2
    //   238: ifeq +88 -> 326
    //   241: aload_0
    //   242: invokevirtual 196	com/estrongs/android/ui/theme/ThemeActivity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   245: astore 6
    //   247: aload 6
    //   249: ldc -25
    //   251: iconst_0
    //   252: invokevirtual 204	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   255: astore 7
    //   257: aload 7
    //   259: ifnull +67 -> 326
    //   262: new 43	com/estrongs/android/ui/theme/al
    //   265: dup
    //   266: invokespecial 165	com/estrongs/android/ui/theme/al:<init>	()V
    //   269: astore 5
    //   271: aload 5
    //   273: aload 7
    //   275: getfield 210	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   278: aload 6
    //   280: invokevirtual 216	android/content/pm/ApplicationInfo:loadLabel	(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    //   283: invokeinterface 219 1 0
    //   288: putfield 178	com/estrongs/android/ui/theme/al:d	Ljava/lang/String;
    //   291: aload 5
    //   293: ldc -25
    //   295: putfield 183	com/estrongs/android/ui/theme/al:c	Ljava/lang/String;
    //   298: aload 5
    //   300: aload 7
    //   302: getfield 222	android/content/pm/PackageInfo:versionCode	I
    //   305: putfield 186	com/estrongs/android/ui/theme/al:h	I
    //   308: aload_0
    //   309: aload 5
    //   311: ldc -23
    //   313: invokespecial 226	com/estrongs/android/ui/theme/ThemeActivity:a	(Lcom/estrongs/android/ui/theme/al;Ljava/lang/String;)V
    //   316: aload 4
    //   318: aload 5
    //   320: invokeinterface 229 2 0
    //   325: pop
    //   326: ldc -21
    //   328: iconst_0
    //   329: invokestatic 240	com/estrongs/android/i/a:a	(Ljava/lang/String;I)I
    //   332: iconst_1
    //   333: if_icmpne +132 -> 465
    //   336: invokestatic 244	com/estrongs/android/pop/utils/cl:a	()Z
    //   339: ifne +126 -> 465
    //   342: ldc -10
    //   344: invokestatic 251	com/estrongs/android/pop/utils/w:a	(Ljava/lang/String;)Z
    //   347: ifne +118 -> 465
    //   350: invokestatic 257	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   353: astore 5
    //   355: aload 5
    //   357: iconst_1
    //   358: invokevirtual 261	java/util/Calendar:get	(I)I
    //   361: istore_1
    //   362: aload 5
    //   364: iconst_2
    //   365: invokevirtual 261	java/util/Calendar:get	(I)I
    //   368: istore_2
    //   369: aload 5
    //   371: iconst_5
    //   372: invokevirtual 261	java/util/Calendar:get	(I)I
    //   375: istore_3
    //   376: iload_1
    //   377: sipush 2015
    //   380: if_icmpne +161 -> 541
    //   383: iload_2
    //   384: bipush 11
    //   386: if_icmpne +155 -> 541
    //   389: iload_3
    //   390: bipush 22
    //   392: if_icmplt +149 -> 541
    //   395: iload_3
    //   396: bipush 26
    //   398: if_icmpgt +143 -> 541
    //   401: new 263	com/estrongs/android/ui/theme/s
    //   404: dup
    //   405: aload_0
    //   406: invokespecial 264	com/estrongs/android/ui/theme/s:<init>	(Lcom/estrongs/android/ui/theme/ThemeActivity;)V
    //   409: astore 5
    //   411: aload 5
    //   413: aload_0
    //   414: ldc_w 265
    //   417: invokevirtual 266	com/estrongs/android/ui/theme/ThemeActivity:getString	(I)Ljava/lang/String;
    //   420: putfield 178	com/estrongs/android/ui/theme/al:d	Ljava/lang/String;
    //   423: aload 4
    //   425: aload 5
    //   427: invokeinterface 229 2 0
    //   432: pop
    //   433: new 268	com/estrongs/android/ui/theme/t
    //   436: dup
    //   437: aload_0
    //   438: invokespecial 269	com/estrongs/android/ui/theme/t:<init>	(Lcom/estrongs/android/ui/theme/ThemeActivity;)V
    //   441: astore 5
    //   443: aload 5
    //   445: aload_0
    //   446: ldc_w 265
    //   449: invokevirtual 266	com/estrongs/android/ui/theme/ThemeActivity:getString	(I)Ljava/lang/String;
    //   452: putfield 178	com/estrongs/android/ui/theme/al:d	Ljava/lang/String;
    //   455: aload 4
    //   457: aload 5
    //   459: invokeinterface 229 2 0
    //   464: pop
    //   465: aload 4
    //   467: invokeinterface 273 1 0
    //   472: astore 5
    //   474: aload 5
    //   476: invokeinterface 278 1 0
    //   481: ifeq +95 -> 576
    //   484: aload 5
    //   486: invokeinterface 282 1 0
    //   491: checkcast 43	com/estrongs/android/ui/theme/al
    //   494: aload_0
    //   495: invokevirtual 285	com/estrongs/android/ui/theme/al:e	(Landroid/content/Context;)V
    //   498: goto -24 -> 474
    //   501: astore 6
    //   503: aload 6
    //   505: invokevirtual 288	java/io/IOException:printStackTrace	()V
    //   508: goto -281 -> 227
    //   511: astore 5
    //   513: aload 5
    //   515: invokevirtual 289	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   518: goto -281 -> 237
    //   521: astore 6
    //   523: aload 6
    //   525: invokevirtual 288	java/io/IOException:printStackTrace	()V
    //   528: goto -212 -> 316
    //   531: astore 5
    //   533: aload 5
    //   535: invokevirtual 289	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   538: goto -212 -> 326
    //   541: new 291	com/estrongs/android/ui/theme/u
    //   544: dup
    //   545: aload_0
    //   546: invokespecial 292	com/estrongs/android/ui/theme/u:<init>	(Lcom/estrongs/android/ui/theme/ThemeActivity;)V
    //   549: astore 5
    //   551: aload 5
    //   553: aload_0
    //   554: ldc_w 265
    //   557: invokevirtual 266	com/estrongs/android/ui/theme/ThemeActivity:getString	(I)Ljava/lang/String;
    //   560: putfield 178	com/estrongs/android/ui/theme/al:d	Ljava/lang/String;
    //   563: aload 4
    //   565: aload 5
    //   567: invokeinterface 229 2 0
    //   572: pop
    //   573: goto -108 -> 465
    //   576: aload_0
    //   577: getfield 108	com/estrongs/android/ui/theme/ThemeActivity:a	Lcom/estrongs/android/ui/theme/at;
    //   580: aload 4
    //   582: invokevirtual 297	com/estrongs/android/ui/theme/at:a	(Ljava/util/List;)V
    //   585: return
    //   586: iconst_0
    //   587: istore_2
    //   588: iconst_0
    //   589: istore_1
    //   590: goto -490 -> 100
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	593	0	this	ThemeActivity
    //   99	491	1	m	int
    //   97	491	2	n	int
    //   375	24	3	i1	int
    //   26	555	4	localObject1	Object
    //   22	463	5	localObject2	Object
    //   511	3	5	localNameNotFoundException1	android.content.pm.PackageManager.NameNotFoundException
    //   531	3	5	localNameNotFoundException2	android.content.pm.PackageManager.NameNotFoundException
    //   549	17	5	localu	u
    //   156	123	6	localPackageManager	android.content.pm.PackageManager
    //   501	3	6	localIOException1	java.io.IOException
    //   521	3	6	localIOException2	java.io.IOException
    //   166	135	7	localPackageInfo	android.content.pm.PackageInfo
    // Exception table:
    //   from	to	target	type
    //   219	227	501	java/io/IOException
    //   158	168	511	android/content/pm/PackageManager$NameNotFoundException
    //   173	219	511	android/content/pm/PackageManager$NameNotFoundException
    //   219	227	511	android/content/pm/PackageManager$NameNotFoundException
    //   227	237	511	android/content/pm/PackageManager$NameNotFoundException
    //   503	508	511	android/content/pm/PackageManager$NameNotFoundException
    //   308	316	521	java/io/IOException
    //   247	257	531	android/content/pm/PackageManager$NameNotFoundException
    //   262	308	531	android/content/pm/PackageManager$NameNotFoundException
    //   308	316	531	android/content/pm/PackageManager$NameNotFoundException
    //   316	326	531	android/content/pm/PackageManager$NameNotFoundException
    //   523	528	531	android/content/pm/PackageManager$NameNotFoundException
  }
  
  private void f()
  {
    Object localObject2 = Locale.getDefault().toString();
    int m = ((String)localObject2).indexOf('_');
    Object localObject1 = localObject2;
    if (m > 0) {
      localObject1 = ((String)localObject2).substring(0, m);
    }
    if (i.a != null) {
      if ((!i.a.equalsIgnoreCase("CN")) && (!i.a.equalsIgnoreCase("TW"))) {
        break label220;
      }
    }
    label220:
    for (localObject1 = "zh";; localObject1 = "en")
    {
      localObject1 = "http://update.estrongs.com/console/service/themes2/?" + "l=" + (String)localObject1;
      localObject1 = (String)localObject1 + "&app=" + com.estrongs.android.pop.view.a.a();
      localObject2 = (String)localObject1 + "&v=" + al.b;
      localObject1 = ap.a(this) + "themeInfo.dat";
      localObject2 = new aa((String)localObject2);
      v localv = new v(this, (String)localObject1);
      ((aa)localObject2).a((String)localObject1 + ".tmp");
      ((aa)localObject2).a(localv);
      ((aa)localObject2).c();
      return;
    }
  }
  
  private void h()
  {
    Object localObject1 = al.b(ap.a(this) + "themeInfo.dat");
    Object localObject2 = al.b;
    if ((localObject2 != null) && (!((String)localObject2).equals(e)))
    {
      al.b = (String)localObject2;
      ((List)localObject1).clear();
      localObject2 = new al();
      d = getResources().getString(2131232415);
      c = getPackageName();
      if (localObject1 != null) {
        break label168;
      }
      localObject1 = new ArrayList();
    }
    label168:
    for (;;)
    {
      ((List)localObject1).add(0, localObject2);
      localObject2 = ((List)localObject1).iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((al)((Iterator)localObject2).next()).e(this);
      }
      if (((List)localObject1).size() == 1) {
        return;
      }
      localObject1 = Message.obtain(d, 13, localObject1);
      d.sendMessage((Message)localObject1);
      return;
    }
  }
  
  private void i()
  {
    c.a(a.e());
  }
  
  private void j()
  {
    h = ((LinearLayout)findViewById(2131624325));
    int m = g.a(this, 8.0F);
    h.setPadding(m * 2, m, m * 2, m);
    h.setOnTouchListener(new w(this, m));
    h.setOnClickListener(new o(this));
  }
  
  protected void a(List<com.estrongs.android.view.a.a> paramList)
  {
    k = new com.estrongs.android.view.a.a(2130838539, 2131230898).a(new p(this));
    paramList.add(k);
    com.estrongs.android.view.a.a locala = k;
    if (!J().c()) {}
    for (boolean bool = true;; bool = false)
    {
      locala.d(bool);
      paramList.add(new com.estrongs.android.view.a.a(2130838543, 2131230848).a(new q(this)));
      return;
    }
  }
  
  protected boolean c()
  {
    return false;
  }
  
  public void finish()
  {
    Object localObject = a.g();
    if (localObject == null) {
      return;
    }
    localObject = (al)((List)localObject).get(c.a());
    if (a.a(c)) {
      a.b(c);
    }
    try
    {
      if (!a.d().equals(f))
      {
        localc = c.a(this);
        if (!getPackageName().equals(c)) {
          break label103;
        }
        localc.a("using_theme_default");
      }
      for (;;)
      {
        super.finish();
        return;
        label103:
        if (!"com.estrongs.android.pop.theme.ics".equals(c)) {
          break;
        }
        localc.a("using_theme_holo");
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        c localc;
        localException.printStackTrace();
        continue;
        if ("com.estrongs.android.pop.classic.material".equals(c)) {
          localc.a("using_theme_classic");
        }
      }
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 4132) && (paramInt2 == -1)) {
      setResult(-1);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    boolean bool = false;
    a = J();
    l = a.f();
    super.onCreate(paramBundle);
    f = a.d();
    setContentView(2130903439);
    setTitle(2131231713);
    setResult(0);
    e();
    if ((an.b()) || (an.d())) {
      bool = true;
    }
    g = bool;
    d();
    if (g) {
      f();
    }
    i = new n(this);
    paramBundle = new IntentFilter();
    paramBundle.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    paramBundle.addAction("android.net.wifi.STATE_CHANGE");
    registerReceiver(i, paramBundle);
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    unregisterReceiver(i);
    try
    {
      if (j != null)
      {
        Iterator localIterator = j.values().iterator();
        while (localIterator.hasNext()) {
          unregisterReceiver((x)localIterator.next());
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    boolean bool;
    Object localObject;
    if ((an.b()) || (an.d()))
    {
      bool = true;
      g = bool;
      localObject = h;
      if (!g) {
        break label88;
      }
    }
    label88:
    for (int m = 8;; m = 0)
    {
      ((LinearLayout)localObject).setVisibility(m);
      localObject = a.d();
      if (a.d((String)localObject) == null)
      {
        c.a(0);
        setResult(-1);
      }
      c.notifyDataSetChanged();
      return;
      bool = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ThemeActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */