package com.estrongs.android.pop.app.a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.res.Resources;
import android.media.RingtoneManager;
import android.net.Uri;
import android.provider.MediaStore.Audio.Media;
import android.util.Log;
import com.estrongs.a.p;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.aa;
import com.estrongs.android.pop.b;
import com.estrongs.android.ui.dialog.hc;
import com.estrongs.android.ui.e.ic;
import com.estrongs.android.ui.e.iw;
import com.estrongs.android.ui.e.jk;
import com.estrongs.android.ui.pcs.aj;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.fs.d;
import java.io.File;

public abstract class e
{
  private iw a;
  ac b;
  private ic c;
  private com.estrongs.android.view.a.a d;
  private com.estrongs.android.view.a.a e;
  private com.estrongs.android.view.a.a f;
  private com.estrongs.android.view.a.a g;
  private com.estrongs.android.view.a.a h;
  private com.estrongs.android.view.a.a i;
  private com.estrongs.android.view.a.a j;
  private com.estrongs.android.view.a.a k;
  private com.estrongs.android.view.a.a l;
  private com.estrongs.android.view.a.a m;
  private com.estrongs.android.view.a.a n;
  private com.estrongs.android.view.a.a o;
  private com.estrongs.android.view.a.a p;
  private PopAudioPlayer q;
  
  public e(PopAudioPlayer paramPopAudioPlayer)
  {
    q = paramPopAudioPlayer;
    e();
  }
  
  private Uri a(String paramString1, String paramString2, int paramInt, long paramLong)
  {
    boolean bool2 = false;
    int i1 = paramString1.lastIndexOf(".");
    if (i1 == -1)
    {
      String str = am.bE(paramString2);
      paramString2 = new ContentValues();
      paramString2.put("_data", str);
      paramString2.put("title", paramString1);
      paramString2.put("_size", Long.valueOf(paramLong));
      paramString2.put("mime_type", "audio/*");
      if (paramInt != 1) {
        break label166;
      }
      bool1 = true;
      label73:
      paramString2.put("is_ringtone", Boolean.valueOf(bool1));
      if (paramInt != 2) {
        break label172;
      }
    }
    label166:
    label172:
    for (boolean bool1 = true;; bool1 = false)
    {
      paramString2.put("is_notification", Boolean.valueOf(bool1));
      bool1 = bool2;
      if (paramInt == 4) {
        bool1 = true;
      }
      paramString2.put("is_alarm", Boolean.valueOf(bool1));
      paramString2.put("is_music", Boolean.valueOf(true));
      paramString1 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
      try
      {
        paramString1 = q.getContentResolver().insert(paramString1, paramString2);
        return paramString1;
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
      }
      paramString1 = paramString1.substring(0, i1);
      break;
      bool1 = false;
      break label73;
    }
    return null;
  }
  
  private void a(ak paramak, al paramal)
  {
    paramal.b(b);
  }
  
  private void a(com.estrongs.fs.h paramh)
  {
    if (paramh == null)
    {
      ag.a(q, 2131428302, 1);
      return;
    }
    new hc(q, paramh).a();
  }
  
  private void b(String paramString, int paramInt)
  {
    new l(this, paramString, paramInt).start();
  }
  
  /* Error */
  @android.annotation.SuppressLint({"NewApi"})
  private String c(String paramString, int paramInt)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 53	com/estrongs/android/util/am:bE	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore 6
    //   6: iload_2
    //   7: iconst_1
    //   8: if_icmpne +94 -> 102
    //   11: ldc 81
    //   13: astore 5
    //   15: getstatic 101	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   18: invokevirtual 176	android/net/Uri:toString	()Ljava/lang/String;
    //   21: astore 7
    //   23: aload_0
    //   24: getfield 33	com/estrongs/android/pop/app/a/e:q	Lcom/estrongs/android/pop/app/PopAudioPlayer;
    //   27: invokevirtual 107	com/estrongs/android/pop/app/PopAudioPlayer:getContentResolver	()Landroid/content/ContentResolver;
    //   30: getstatic 101	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   33: iconst_2
    //   34: anewarray 43	java/lang/String
    //   37: dup
    //   38: iconst_0
    //   39: ldc -78
    //   41: aastore
    //   42: dup
    //   43: iconst_1
    //   44: aload 5
    //   46: aastore
    //   47: ldc -76
    //   49: iconst_1
    //   50: anewarray 43	java/lang/String
    //   53: dup
    //   54: iconst_0
    //   55: aload 6
    //   57: aastore
    //   58: aconst_null
    //   59: invokevirtual 184	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   62: astore_1
    //   63: aload_1
    //   64: ifnull +12 -> 76
    //   67: aload_1
    //   68: invokeinterface 190 1 0
    //   73: ifne +165 -> 238
    //   76: invokestatic 195	com/estrongs/android/util/bd:f	()Z
    //   79: istore 4
    //   81: iload 4
    //   83: ifne +38 -> 121
    //   86: aload_1
    //   87: ifnull +9 -> 96
    //   90: aload_1
    //   91: invokeinterface 198 1 0
    //   96: aconst_null
    //   97: astore 5
    //   99: aload 5
    //   101: areturn
    //   102: iload_2
    //   103: iconst_2
    //   104: if_icmpne +10 -> 114
    //   107: ldc 91
    //   109: astore 5
    //   111: goto -96 -> 15
    //   114: ldc 93
    //   116: astore 5
    //   118: goto -103 -> 15
    //   121: aload_1
    //   122: ifnull +9 -> 131
    //   125: aload_1
    //   126: invokeinterface 198 1 0
    //   131: aload_0
    //   132: getfield 33	com/estrongs/android/pop/app/a/e:q	Lcom/estrongs/android/pop/app/PopAudioPlayer;
    //   135: invokevirtual 107	com/estrongs/android/pop/app/PopAudioPlayer:getContentResolver	()Landroid/content/ContentResolver;
    //   138: ldc -56
    //   140: invokestatic 206	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   143: iconst_1
    //   144: anewarray 43	java/lang/String
    //   147: dup
    //   148: iconst_0
    //   149: ldc -78
    //   151: aastore
    //   152: ldc -76
    //   154: iconst_1
    //   155: anewarray 43	java/lang/String
    //   158: dup
    //   159: iconst_0
    //   160: aload 6
    //   162: aastore
    //   163: aconst_null
    //   164: invokevirtual 184	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   167: astore 5
    //   169: aload 5
    //   171: astore_1
    //   172: aload_1
    //   173: ifnull +14 -> 187
    //   176: aload_1
    //   177: invokeinterface 190 1 0
    //   182: istore_2
    //   183: iload_2
    //   184: ifne +15 -> 199
    //   187: aload_1
    //   188: ifnull +9 -> 197
    //   191: aload_1
    //   192: invokeinterface 198 1 0
    //   197: aconst_null
    //   198: areturn
    //   199: aload_0
    //   200: getfield 33	com/estrongs/android/pop/app/a/e:q	Lcom/estrongs/android/pop/app/PopAudioPlayer;
    //   203: invokevirtual 107	com/estrongs/android/pop/app/PopAudioPlayer:getContentResolver	()Landroid/content/ContentResolver;
    //   206: ldc -56
    //   208: invokestatic 206	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   211: ldc -76
    //   213: iconst_1
    //   214: anewarray 43	java/lang/String
    //   217: dup
    //   218: iconst_0
    //   219: aload 6
    //   221: aastore
    //   222: invokevirtual 210	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   225: pop
    //   226: aload_1
    //   227: ifnull +9 -> 236
    //   230: aload_1
    //   231: invokeinterface 198 1 0
    //   236: aconst_null
    //   237: areturn
    //   238: aload_1
    //   239: invokeinterface 213 1 0
    //   244: pop
    //   245: aload_1
    //   246: iconst_0
    //   247: invokeinterface 217 2 0
    //   252: istore_2
    //   253: aload_1
    //   254: iconst_1
    //   255: invokeinterface 217 2 0
    //   260: istore_3
    //   261: new 219	java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial 220	java/lang/StringBuilder:<init>	()V
    //   268: aload 7
    //   270: invokevirtual 224	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: ldc -30
    //   275: invokevirtual 224	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: iload_2
    //   279: invokevirtual 229	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   282: invokevirtual 230	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: invokestatic 233	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   288: pop
    //   289: iload_3
    //   290: ifne +59 -> 349
    //   293: new 55	android/content/ContentValues
    //   296: dup
    //   297: invokespecial 56	android/content/ContentValues:<init>	()V
    //   300: astore 6
    //   302: aload 6
    //   304: aload 5
    //   306: iconst_1
    //   307: invokestatic 86	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   310: invokevirtual 89	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Boolean;)V
    //   313: aload_0
    //   314: getfield 33	com/estrongs/android/pop/app/a/e:q	Lcom/estrongs/android/pop/app/PopAudioPlayer;
    //   317: invokevirtual 107	com/estrongs/android/pop/app/PopAudioPlayer:getContentResolver	()Landroid/content/ContentResolver;
    //   320: getstatic 101	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   323: aload 6
    //   325: new 219	java/lang/StringBuilder
    //   328: dup
    //   329: invokespecial 220	java/lang/StringBuilder:<init>	()V
    //   332: ldc -21
    //   334: invokevirtual 224	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: iload_2
    //   338: invokevirtual 229	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   341: invokevirtual 230	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   344: aconst_null
    //   345: invokevirtual 239	android/content/ContentResolver:update	(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   348: pop
    //   349: new 219	java/lang/StringBuilder
    //   352: dup
    //   353: invokespecial 220	java/lang/StringBuilder:<init>	()V
    //   356: aload 7
    //   358: invokevirtual 224	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: ldc -30
    //   363: invokevirtual 224	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: iload_2
    //   367: invokevirtual 229	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   370: invokevirtual 230	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   373: astore 6
    //   375: aload 6
    //   377: astore 5
    //   379: aload_1
    //   380: ifnull -281 -> 99
    //   383: aload_1
    //   384: invokeinterface 198 1 0
    //   389: aload 6
    //   391: areturn
    //   392: astore 5
    //   394: aload 5
    //   396: invokevirtual 120	java/lang/Exception:printStackTrace	()V
    //   399: goto -50 -> 349
    //   402: astore 5
    //   404: aload_1
    //   405: ifnull +9 -> 414
    //   408: aload_1
    //   409: invokeinterface 198 1 0
    //   414: aconst_null
    //   415: areturn
    //   416: astore 5
    //   418: aconst_null
    //   419: astore_1
    //   420: aload_1
    //   421: ifnull +9 -> 430
    //   424: aload_1
    //   425: invokeinterface 198 1 0
    //   430: aload 5
    //   432: athrow
    //   433: astore 5
    //   435: goto -15 -> 420
    //   438: astore 5
    //   440: goto -20 -> 420
    //   443: astore_1
    //   444: aconst_null
    //   445: astore_1
    //   446: goto -42 -> 404
    //   449: astore 5
    //   451: goto -47 -> 404
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	454	0	this	e
    //   0	454	1	paramString	String
    //   0	454	2	paramInt	int
    //   260	30	3	i1	int
    //   79	3	4	bool	boolean
    //   13	365	5	localObject1	Object
    //   392	3	5	localException1	Exception
    //   402	1	5	localException2	Exception
    //   416	15	5	localObject2	Object
    //   433	1	5	localObject3	Object
    //   438	1	5	localObject4	Object
    //   449	1	5	localException3	Exception
    //   4	386	6	localObject5	Object
    //   21	336	7	str	String
    // Exception table:
    //   from	to	target	type
    //   313	349	392	java/lang/Exception
    //   67	76	402	java/lang/Exception
    //   76	81	402	java/lang/Exception
    //   125	131	402	java/lang/Exception
    //   131	169	402	java/lang/Exception
    //   238	289	402	java/lang/Exception
    //   293	313	402	java/lang/Exception
    //   349	375	402	java/lang/Exception
    //   394	399	402	java/lang/Exception
    //   23	63	416	finally
    //   67	76	433	finally
    //   76	81	433	finally
    //   125	131	433	finally
    //   131	169	433	finally
    //   238	289	433	finally
    //   293	313	433	finally
    //   313	349	433	finally
    //   349	375	433	finally
    //   394	399	433	finally
    //   176	183	438	finally
    //   199	226	438	finally
    //   23	63	443	java/lang/Exception
    //   176	183	449	java/lang/Exception
    //   199	226	449	java/lang/Exception
  }
  
  private void e()
  {
    a = new iw(q, true, true);
    c = new ic(q, true);
    a.a(c);
    a.a(c.c());
    a.a(new f(this));
    d = new com.estrongs.android.view.a.a(q.getResources().getDrawable(2130838165), q.getString(2131428324)).a(new o(this));
    e = new com.estrongs.android.view.a.a(q.getResources().getDrawable(2130838209), q.getString(2131428308)).a(new r(this));
    f = new com.estrongs.android.view.a.a(q.getResources().getDrawable(2130838172), q.getString(2131428321)).a(new s(this));
    m = new com.estrongs.android.view.a.a(q.getResources().getDrawable(2130838172), q.getString(2131428320)).a(new u(this));
    l = new com.estrongs.android.view.a.a(q.getResources().getDrawable(2130838183), q.getString(2131428322)).a(new v(this));
    k = new com.estrongs.android.view.a.a(q.getResources().getDrawable(2130838226), q.getString(2131428323)).a(new x(this));
    g = new com.estrongs.android.view.a.a(q.getResources().getDrawable(2130838232), q.getString(2131427939)).a(new z(this));
    h = new com.estrongs.android.view.a.a(q.getResources().getDrawable(2130838188), q.getString(2131427388)).a(new ab(this));
    i = new com.estrongs.android.view.a.a(q.getResources().getDrawable(2130838152), q.getString(2131428596)).a(new g(this));
    j = new com.estrongs.android.view.a.a(q.getResources().getDrawable(2130838182), q.getString(2131428025)).a(new h(this));
    n = new com.estrongs.android.view.a.a(q.getResources().getDrawable(2130838233), q.getString(2131427439)).a(new i(this));
    p = new com.estrongs.android.view.a.a(q.getResources().getDrawable(2130838194), q.getString(2131427363)).a(new j(this));
    o = new com.estrongs.android.view.a.a(q.getResources().getDrawable(2130838157), q.getString(2131428525)).a(new k(this));
  }
  
  public abstract void a();
  
  public boolean a(String paramString, int paramInt)
  {
    String str;
    Object localObject;
    label141:
    File localFile;
    if (am.bb(paramString))
    {
      if (paramInt == 1) {
        str = b.b() + "/media/ringtones";
      }
      for (;;)
      {
        localObject = new File(str);
        if ((((File)localObject).exists()) || (((File)localObject).mkdirs())) {
          break label141;
        }
        Log.e("ES", "can't create ringtone folder");
        return false;
        if (paramInt == 2)
        {
          str = b.b() + "/media/notifications";
        }
        else
        {
          if (paramInt != 4) {
            break;
          }
          str = b.b() + "/media/alarms";
        }
      }
      return false;
      localObject = am.d(paramString);
      str = str + "/" + (String)localObject;
      localFile = new File(str);
      if (localFile.exists()) {
        break label363;
      }
      paramString = new com.estrongs.fs.b.r(d.a(q), d.a(q).j(paramString), new com.estrongs.fs.impl.local.f(new File(str)));
      paramString.execute(false);
      if (getTaskResulta != 0) {
        return false;
      }
    }
    label363:
    for (int i1 = 0;; i1 = 1)
    {
      paramString = null;
      if (i1 != 0) {
        paramString = c(str, paramInt);
      }
      if (paramString == null) {
        paramString = a((String)localObject, str, paramInt, localFile.length());
      }
      while (paramString == null)
      {
        return false;
        paramString = Uri.parse(paramString);
        continue;
        str = c(paramString, paramInt);
        localObject = new File(paramString);
        if (str == null) {
          paramString = a(am.d(paramString), paramString, paramInt, ((File)localObject).length());
        } else {
          paramString = Uri.parse(str);
        }
      }
      RingtoneManager.setActualDefaultRingtoneUri(q, paramInt, paramString);
      return true;
    }
  }
  
  public boolean b()
  {
    return (a != null) && (a.b());
  }
  
  public void c()
  {
    if (q.q() == null) {
      return;
    }
    jk localjk = c.b();
    localjk.j();
    localjk.a(p);
    if (q.i() == 0) {}
    label340:
    label342:
    for (;;)
    {
      try
      {
        Object localObject = q.w();
        if (localObject == null) {
          break;
        }
        localjk.a(j);
        localObject = b;
        if (am.ba((String)localObject)) {
          break label342;
        }
        localObject = am.bq((String)localObject);
        if ((!am.aB((String)localObject)) && (aj.a(q))) {
          localjk.a(i);
        }
        if (aa.a()) {
          localjk.a(o);
        }
        localjk.a(h);
        if (am.ba((String)localObject)) {
          localjk.a(g);
        }
        int i2 = 1;
        int i1 = i2;
        if (((String)localObject).startsWith("http://"))
        {
          i1 = i2;
          if (!((String)localObject).startsWith("http://127.0.0.1:")) {
            i1 = 0;
          }
        }
        if (i1 != 0) {
          localjk.a(f);
        }
        if (q.q().f()) {
          localjk.a(e);
        }
        localjk.a(d);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
      }
      if (a == null) {
        break;
      }
      a.c();
      return;
      if (q.q().f()) {
        localjk.a(m);
      }
      if (q.q().a < 0L) {
        localjk.a(k);
      }
      for (;;)
      {
        if (q.q() != ao.a().e()) {
          break label340;
        }
        localjk.a(n);
        break;
        if (q.q().f()) {
          localjk.a(l);
        }
      }
    }
  }
  
  public void d()
  {
    if ((a != null) && (a.b())) {
      a.d();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */