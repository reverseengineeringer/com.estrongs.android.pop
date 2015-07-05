package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.a.a;
import com.estrongs.a.a.h;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.net.Socket;

public class ba
  extends a
{
  Long a = Long.valueOf(0L);
  private String b;
  private String c;
  private Socket d;
  private long e;
  private Activity f;
  private bl g;
  private h h = new h();
  private boolean i = false;
  private boolean j = false;
  
  private ba(Activity paramActivity, bl parambl, boolean paramBoolean)
  {
    f = paramActivity;
    c = i;
    b = h;
    d = j;
    e = e;
    g = parambl;
    canRestart = false;
    canPause = false;
    task_type = 6;
    i = paramBoolean;
    e();
    setDescription(b + " " + f.getString(2131427451));
  }
  
  public static ba a(Activity paramActivity, Object paramObject, boolean paramBoolean)
  {
    paramObject = (bl)paramObject;
    if (FileExplorerActivity.J() == null) {}
    try
    {
      j.close();
      return null;
      paramObject = new ba(FileExplorerActivity.J(), (bl)paramObject, paramBoolean);
      if (ac.a() >= 21) {
        ((ba)paramObject).setTaskDecisionListener(new com.estrongs.android.pop.m(FileExplorerActivity.J()));
      }
      if (paramBoolean)
      {
        paramActivity = ((ba)paramObject).a(paramActivity);
        paramActivity.a(false);
        paramActivity.show();
        ((ba)paramObject).execute();
        return (ba)paramObject;
      }
      ((ba)paramObject).execute();
      return (ba)paramObject;
    }
    catch (Exception paramActivity)
    {
      for (;;) {}
    }
  }
  
  private void e()
  {
    recordSummary("task_type", Integer.valueOf(task_type));
    recordSummary("restartable", Boolean.valueOf(false));
    recordSummary("title", b);
    recordSummary("items_selected_count", Integer.valueOf(g.c));
    recordSummary("source", g.g);
    recordSummary("target", a());
    recordSummary("size", Long.valueOf(e));
  }
  
  bk a(Activity paramActivity)
  {
    return new bk(this, paramActivity, paramActivity.getString(2131427451), this);
  }
  
  public String a()
  {
    return c;
  }
  
  public boolean b()
  {
    return (g.c == 1) && (g.b != 2);
  }
  
  public String c()
  {
    return c + b;
  }
  
  public void d()
  {
    f.runOnUiThread(new bh(this));
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    switch (paramInt)
    {
    default: 
      super.handleMessage(paramInt, paramVarArgs);
    }
    do
    {
      return;
      processData.g = ((Long)paramVarArgs[0]).longValue();
      processData.h = ((Long)paramVarArgs[1]).longValue();
      return;
      processData.f = ((Long)paramVarArgs[0]).longValue();
      processData.a = ((String)paramVarArgs[1]);
      processData.e = ((Long)paramVarArgs[2]).longValue();
    } while (!hasProgressListener());
    long l = System.currentTimeMillis();
    processData.b = ((int)((float)processData.f / ((Long.valueOf(l).longValue() - a.longValue()) / 1000.0D)));
    onProgress(processData);
  }
  
  /* Error */
  public boolean task()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 206	com/estrongs/fs/b/ba:processData	Lcom/estrongs/a/a/m;
    //   4: new 79	java/lang/StringBuilder
    //   7: dup
    //   8: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   11: ldc -11
    //   13: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: aload_0
    //   17: getfield 56	com/estrongs/fs/b/ba:b	Ljava/lang/String;
    //   20: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   26: putfield 222	com/estrongs/a/a/m:a	Ljava/lang/String;
    //   29: aload_0
    //   30: aload_0
    //   31: getfield 206	com/estrongs/fs/b/ba:processData	Lcom/estrongs/a/a/m;
    //   34: invokevirtual 238	com/estrongs/fs/b/ba:onProgress	(Lcom/estrongs/a/a/m;)V
    //   37: aload_0
    //   38: getfield 206	com/estrongs/fs/b/ba:processData	Lcom/estrongs/a/a/m;
    //   41: aload_0
    //   42: getfield 65	com/estrongs/fs/b/ba:g	Lcom/estrongs/fs/b/bl;
    //   45: getfield 62	com/estrongs/fs/b/bl:e	J
    //   48: putfield 223	com/estrongs/a/a/m:e	J
    //   51: aload_0
    //   52: getfield 206	com/estrongs/fs/b/ba:processData	Lcom/estrongs/a/a/m;
    //   55: aload_0
    //   56: getfield 65	com/estrongs/fs/b/ba:g	Lcom/estrongs/fs/b/bl;
    //   59: getfield 54	com/estrongs/fs/b/bl:h	Ljava/lang/String;
    //   62: putfield 247	com/estrongs/a/a/m:j	Ljava/lang/String;
    //   65: aload_0
    //   66: getfield 65	com/estrongs/fs/b/ba:g	Lcom/estrongs/fs/b/bl;
    //   69: getfield 173	com/estrongs/fs/b/bl:c	I
    //   72: iconst_1
    //   73: if_icmple +41 -> 114
    //   76: new 79	java/lang/StringBuilder
    //   79: dup
    //   80: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   83: astore 15
    //   85: aload_0
    //   86: getfield 206	com/estrongs/fs/b/ba:processData	Lcom/estrongs/a/a/m;
    //   89: astore 16
    //   91: aload 16
    //   93: aload 15
    //   95: aload 16
    //   97: getfield 247	com/estrongs/a/a/m:j	Ljava/lang/String;
    //   100: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: ldc -7
    //   105: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: putfield 247	com/estrongs/a/a/m:j	Ljava/lang/String;
    //   114: aload_0
    //   115: getfield 206	com/estrongs/fs/b/ba:processData	Lcom/estrongs/a/a/m;
    //   118: aload_0
    //   119: getfield 65	com/estrongs/fs/b/ba:g	Lcom/estrongs/fs/b/bl;
    //   122: getfield 251	com/estrongs/fs/b/bl:d	I
    //   125: i2l
    //   126: putfield 253	com/estrongs/a/a/m:c	J
    //   129: aload_0
    //   130: getfield 206	com/estrongs/fs/b/ba:processData	Lcom/estrongs/a/a/m;
    //   133: lconst_0
    //   134: putfield 255	com/estrongs/a/a/m:d	J
    //   137: invokestatic 259	com/estrongs/a/a:getCurrentTask	()Lcom/estrongs/a/a;
    //   140: astore 18
    //   142: aload_0
    //   143: getfield 60	com/estrongs/fs/b/ba:d	Ljava/net/Socket;
    //   146: sipush 10000
    //   149: invokevirtual 263	java/net/Socket:setSoTimeout	(I)V
    //   152: new 265	java/io/DataInputStream
    //   155: dup
    //   156: aload_0
    //   157: getfield 60	com/estrongs/fs/b/ba:d	Ljava/net/Socket;
    //   160: invokevirtual 269	java/net/Socket:getInputStream	()Ljava/io/InputStream;
    //   163: invokespecial 272	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   166: astore 19
    //   168: aload_0
    //   169: invokestatic 231	java/lang/System:currentTimeMillis	()J
    //   172: invokestatic 42	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   175: putfield 44	com/estrongs/fs/b/ba:a	Ljava/lang/Long;
    //   178: lconst_0
    //   179: lstore 4
    //   181: iconst_0
    //   182: istore_1
    //   183: iconst_0
    //   184: istore 14
    //   186: iconst_0
    //   187: istore_2
    //   188: aload 18
    //   190: ifnull +119 -> 309
    //   193: aload 18
    //   195: invokevirtual 275	com/estrongs/a/a:taskStopped	()Z
    //   198: ifeq +111 -> 309
    //   201: iconst_2
    //   202: istore_1
    //   203: iload_1
    //   204: ifne +930 -> 1134
    //   207: aload_0
    //   208: getfield 65	com/estrongs/fs/b/ba:g	Lcom/estrongs/fs/b/bl;
    //   211: getfield 278	com/estrongs/fs/b/bl:k	Z
    //   214: ifeq +35 -> 249
    //   217: aload_0
    //   218: getfield 46	com/estrongs/fs/b/ba:f	Landroid/app/Activity;
    //   221: aconst_null
    //   222: new 79	java/lang/StringBuilder
    //   225: dup
    //   226: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   229: aload_0
    //   230: getfield 52	com/estrongs/fs/b/ba:c	Ljava/lang/String;
    //   233: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: aload_0
    //   237: getfield 56	com/estrongs/fs/b/ba:b	Ljava/lang/String;
    //   240: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: invokestatic 283	com/estrongs/android/pop/view/utils/AppRunner:a	(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    //   249: invokestatic 110	com/estrongs/android/pop/view/FileExplorerActivity:J	()Lcom/estrongs/android/pop/view/FileExplorerActivity;
    //   252: invokevirtual 286	com/estrongs/android/pop/view/FileExplorerActivity:P	()Z
    //   255: ifne +737 -> 992
    //   258: aload_0
    //   259: getfield 46	com/estrongs/fs/b/ba:f	Landroid/app/Activity;
    //   262: new 288	com/estrongs/fs/b/bb
    //   265: dup
    //   266: aload_0
    //   267: invokespecial 289	com/estrongs/fs/b/bb:<init>	(Lcom/estrongs/fs/b/ba;)V
    //   270: invokevirtual 198	android/app/Activity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   273: aload_0
    //   274: getfield 60	com/estrongs/fs/b/ba:d	Ljava/net/Socket;
    //   277: invokevirtual 115	java/net/Socket:close	()V
    //   280: iload_1
    //   281: ifne +919 -> 1200
    //   284: iconst_1
    //   285: ireturn
    //   286: astore 15
    //   288: aload_0
    //   289: sipush 10000
    //   292: new 291	com/estrongs/a/q
    //   295: dup
    //   296: ldc_w 293
    //   299: aload 15
    //   301: invokespecial 296	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   304: invokevirtual 300	com/estrongs/fs/b/ba:setTaskResult	(ILjava/lang/Object;)V
    //   307: iconst_0
    //   308: ireturn
    //   309: aload_0
    //   310: getfield 34	com/estrongs/fs/b/ba:i	Z
    //   313: ifeq +24 -> 337
    //   316: aload_0
    //   317: getfield 36	com/estrongs/fs/b/ba:j	Z
    //   320: ifne +17 -> 337
    //   323: ldc2_w 301
    //   326: invokestatic 308	java/lang/Thread:sleep	(J)V
    //   329: goto -141 -> 188
    //   332: astore 15
    //   334: goto -146 -> 188
    //   337: aload 19
    //   339: invokestatic 313	com/estrongs/a/b/d:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   342: astore 20
    //   344: aconst_null
    //   345: astore 15
    //   347: aload 19
    //   349: invokestatic 313	com/estrongs/a/b/d:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   352: astore 16
    //   354: aload 16
    //   356: astore 15
    //   358: aload 20
    //   360: ldc_w 315
    //   363: invokevirtual 319	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   366: ifeq +11 -> 377
    //   369: aload 15
    //   371: ifnonnull +6 -> 377
    //   374: goto -171 -> 203
    //   377: new 79	java/lang/StringBuilder
    //   380: dup
    //   381: invokespecial 80	java/lang/StringBuilder:<init>	()V
    //   384: aload_0
    //   385: getfield 52	com/estrongs/fs/b/ba:c	Ljava/lang/String;
    //   388: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   391: aload 20
    //   393: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   396: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   399: astore 21
    //   401: aload 15
    //   403: ldc_w 321
    //   406: invokevirtual 319	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   409: ifeq +34 -> 443
    //   412: aload 20
    //   414: bipush 47
    //   416: invokevirtual 325	java/lang/String:indexOf	(I)I
    //   419: iconst_m1
    //   420: if_icmpne +11 -> 431
    //   423: invokestatic 330	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   426: aload 21
    //   428: invokevirtual 332	com/estrongs/fs/a/b:a	(Ljava/lang/String;)V
    //   431: invokestatic 337	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   434: aload 21
    //   436: invokevirtual 340	com/estrongs/fs/d:g	(Ljava/lang/String;)Z
    //   439: pop
    //   440: goto -252 -> 188
    //   443: aload 19
    //   445: invokestatic 313	com/estrongs/a/b/d:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   448: astore 16
    //   450: aload_0
    //   451: getfield 32	com/estrongs/fs/b/ba:h	Lcom/estrongs/a/a/h;
    //   454: astore 15
    //   456: aload 15
    //   458: monitorenter
    //   459: iload 14
    //   461: ifne +761 -> 1222
    //   464: invokestatic 337	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   467: aload 21
    //   469: invokevirtual 342	com/estrongs/fs/d:b	(Ljava/lang/String;)Z
    //   472: ifeq +750 -> 1222
    //   475: aload_0
    //   476: getfield 32	com/estrongs/fs/b/ba:h	Lcom/estrongs/a/a/h;
    //   479: aload 21
    //   481: putfield 343	com/estrongs/a/a/h:a	Ljava/lang/String;
    //   484: aload_0
    //   485: invokevirtual 345	com/estrongs/fs/b/ba:d	()V
    //   488: aload_0
    //   489: getfield 32	com/estrongs/fs/b/ba:h	Lcom/estrongs/a/a/h;
    //   492: invokevirtual 350	java/lang/Object:wait	()V
    //   495: aload_0
    //   496: getfield 32	com/estrongs/fs/b/ba:h	Lcom/estrongs/a/a/h;
    //   499: getfield 352	com/estrongs/a/a/h:f	Z
    //   502: istore 14
    //   504: aload_0
    //   505: getfield 32	com/estrongs/fs/b/ba:h	Lcom/estrongs/a/a/h;
    //   508: getfield 354	com/estrongs/a/a/h:g	I
    //   511: iconst_2
    //   512: if_icmpne +86 -> 598
    //   515: iconst_1
    //   516: istore_2
    //   517: goto +715 -> 1232
    //   520: aload 15
    //   522: monitorexit
    //   523: sipush 16384
    //   526: newarray <illegal type>
    //   528: astore 22
    //   530: aconst_null
    //   531: astore 15
    //   533: aload 16
    //   535: invokestatic 358	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   538: lstore 12
    //   540: lconst_0
    //   541: lstore 6
    //   543: aload 18
    //   545: ifnull +66 -> 611
    //   548: aload 18
    //   550: invokevirtual 275	com/estrongs/a/a:taskStopped	()Z
    //   553: ifeq +58 -> 611
    //   556: iconst_2
    //   557: istore_1
    //   558: aload 15
    //   560: invokevirtual 361	java/io/OutputStream:close	()V
    //   563: aload_0
    //   564: getfield 206	com/estrongs/fs/b/ba:processData	Lcom/estrongs/a/a/m;
    //   567: astore 15
    //   569: aload 15
    //   571: aload 15
    //   573: getfield 255	com/estrongs/a/a/m:d	J
    //   576: lconst_1
    //   577: ladd
    //   578: putfield 255	com/estrongs/a/a/m:d	J
    //   581: iload_1
    //   582: ifeq +360 -> 942
    //   585: invokestatic 337	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   588: aload 21
    //   590: aconst_null
    //   591: invokevirtual 364	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    //   594: pop
    //   595: goto -392 -> 203
    //   598: iconst_0
    //   599: istore_2
    //   600: goto +632 -> 1232
    //   603: astore 16
    //   605: aload 15
    //   607: monitorexit
    //   608: aload 16
    //   610: athrow
    //   611: iload_2
    //   612: ifeq +30 -> 642
    //   615: aload 15
    //   617: astore 16
    //   619: lload 6
    //   621: lstore 10
    //   623: aload 15
    //   625: astore 17
    //   627: lload 4
    //   629: lstore 8
    //   631: invokestatic 337	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   634: aload 21
    //   636: invokevirtual 342	com/estrongs/fs/d:b	(Ljava/lang/String;)Z
    //   639: ifne +34 -> 673
    //   642: aload 15
    //   644: astore 16
    //   646: aload 15
    //   648: ifnonnull +25 -> 673
    //   651: lload 6
    //   653: lstore 10
    //   655: aload 15
    //   657: astore 17
    //   659: lload 4
    //   661: lstore 8
    //   663: invokestatic 337	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   666: aload 21
    //   668: invokevirtual 367	com/estrongs/fs/d:f	(Ljava/lang/String;)Ljava/io/OutputStream;
    //   671: astore 16
    //   673: lload 6
    //   675: lload 12
    //   677: lcmp
    //   678: iflt +28 -> 706
    //   681: lload 6
    //   683: lstore 10
    //   685: aload 16
    //   687: astore 17
    //   689: lload 4
    //   691: lstore 8
    //   693: aload 19
    //   695: invokestatic 313	com/estrongs/a/b/d:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   698: pop
    //   699: aload 16
    //   701: astore 15
    //   703: goto -145 -> 558
    //   706: lload 6
    //   708: lstore 10
    //   710: aload 16
    //   712: astore 17
    //   714: lload 4
    //   716: lstore 8
    //   718: aload 22
    //   720: arraylength
    //   721: i2l
    //   722: lload 6
    //   724: ladd
    //   725: lload 12
    //   727: lcmp
    //   728: ifle +33 -> 761
    //   731: lload 6
    //   733: lstore 10
    //   735: aload 16
    //   737: astore 17
    //   739: lload 4
    //   741: lstore 8
    //   743: aload 19
    //   745: aload 22
    //   747: iconst_0
    //   748: lload 12
    //   750: lload 6
    //   752: lsub
    //   753: l2i
    //   754: invokevirtual 371	java/io/DataInputStream:read	([BII)I
    //   757: istore_3
    //   758: goto +477 -> 1235
    //   761: lload 6
    //   763: lstore 10
    //   765: aload 16
    //   767: astore 17
    //   769: lload 4
    //   771: lstore 8
    //   773: aload 19
    //   775: aload 22
    //   777: invokevirtual 374	java/io/DataInputStream:read	([B)I
    //   780: istore_3
    //   781: goto +454 -> 1235
    //   784: aload 16
    //   786: ifnull +24 -> 810
    //   789: lload 6
    //   791: lstore 10
    //   793: aload 16
    //   795: astore 17
    //   797: lload 4
    //   799: lstore 8
    //   801: aload 16
    //   803: aload 22
    //   805: iconst_0
    //   806: iload_3
    //   807: invokevirtual 378	java/io/OutputStream:write	([BII)V
    //   810: lload 6
    //   812: iload_3
    //   813: i2l
    //   814: ladd
    //   815: lstore 6
    //   817: lload 4
    //   819: iload_3
    //   820: i2l
    //   821: ladd
    //   822: lstore 4
    //   824: lload 6
    //   826: lstore 10
    //   828: aload 16
    //   830: astore 17
    //   832: lload 4
    //   834: lstore 8
    //   836: aload 18
    //   838: bipush 9
    //   840: iconst_2
    //   841: anewarray 347	java/lang/Object
    //   844: dup
    //   845: iconst_0
    //   846: lload 12
    //   848: invokestatic 42	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   851: aastore
    //   852: dup
    //   853: iconst_1
    //   854: lload 6
    //   856: invokestatic 42	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   859: aastore
    //   860: invokevirtual 381	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   863: lload 6
    //   865: lstore 10
    //   867: aload 16
    //   869: astore 17
    //   871: lload 4
    //   873: lstore 8
    //   875: aload 18
    //   877: iconst_2
    //   878: iconst_3
    //   879: anewarray 347	java/lang/Object
    //   882: dup
    //   883: iconst_0
    //   884: lload 4
    //   886: invokestatic 42	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   889: aastore
    //   890: dup
    //   891: iconst_1
    //   892: aload 21
    //   894: aastore
    //   895: dup
    //   896: iconst_2
    //   897: aload_0
    //   898: getfield 63	com/estrongs/fs/b/ba:e	J
    //   901: invokestatic 42	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   904: aastore
    //   905: invokevirtual 381	com/estrongs/a/a:sendMessage	(I[Ljava/lang/Object;)V
    //   908: aload 16
    //   910: astore 15
    //   912: goto -369 -> 543
    //   915: astore 15
    //   917: aload 15
    //   919: invokevirtual 384	java/lang/Exception:printStackTrace	()V
    //   922: lload 10
    //   924: lstore 6
    //   926: aload 17
    //   928: astore 15
    //   930: lload 8
    //   932: lstore 4
    //   934: goto -376 -> 558
    //   937: astore 15
    //   939: goto -736 -> 203
    //   942: lload 12
    //   944: lload 6
    //   946: lcmp
    //   947: ifeq +18 -> 965
    //   950: invokestatic 337	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   953: aload 21
    //   955: aconst_null
    //   956: invokevirtual 364	com/estrongs/fs/d:a	(Ljava/lang/String;Lcom/estrongs/a/b/s;)Z
    //   959: pop
    //   960: iconst_1
    //   961: istore_1
    //   962: goto -759 -> 203
    //   965: aload 21
    //   967: invokestatic 388	com/estrongs/fs/impl/local/h:j	(Ljava/lang/String;)V
    //   970: aload 20
    //   972: bipush 47
    //   974: invokevirtual 325	java/lang/String:indexOf	(I)I
    //   977: iconst_m1
    //   978: if_icmpne +11 -> 989
    //   981: invokestatic 330	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   984: aload 21
    //   986: invokevirtual 332	com/estrongs/fs/a/b:a	(Ljava/lang/String;)V
    //   989: goto -801 -> 188
    //   992: invokestatic 393	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   995: ldc_w 394
    //   998: invokevirtual 395	com/estrongs/android/pop/FexApplication:getString	(I)Ljava/lang/String;
    //   1001: astore 16
    //   1003: aload 18
    //   1005: checkcast 2	com/estrongs/fs/b/ba
    //   1008: invokevirtual 397	com/estrongs/fs/b/ba:b	()Z
    //   1011: ifeq +110 -> 1121
    //   1014: aload 18
    //   1016: checkcast 2	com/estrongs/fs/b/ba
    //   1019: invokevirtual 399	com/estrongs/fs/b/ba:c	()Ljava/lang/String;
    //   1022: astore 15
    //   1024: invokestatic 393	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   1027: ldc_w 400
    //   1030: iconst_1
    //   1031: anewarray 347	java/lang/Object
    //   1034: dup
    //   1035: iconst_0
    //   1036: aload 15
    //   1038: aastore
    //   1039: invokevirtual 403	com/estrongs/android/pop/FexApplication:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   1042: astore 17
    //   1044: new 405	android/content/Intent
    //   1047: dup
    //   1048: invokestatic 393	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   1051: ldc_w 407
    //   1054: invokespecial 410	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   1057: astore 18
    //   1059: aload 18
    //   1061: ldc_w 411
    //   1064: invokevirtual 415	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   1067: pop
    //   1068: aload 18
    //   1070: aload 15
    //   1072: invokestatic 421	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   1075: invokevirtual 425	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   1078: pop
    //   1079: aload 18
    //   1081: ldc -87
    //   1083: aload 16
    //   1085: invokevirtual 429	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   1088: pop
    //   1089: aload 18
    //   1091: ldc_w 431
    //   1094: aload 17
    //   1096: invokevirtual 429	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   1099: pop
    //   1100: aload 18
    //   1102: ldc_w 433
    //   1105: iconst_1
    //   1106: invokevirtual 436	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   1109: pop
    //   1110: invokestatic 393	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   1113: aload 18
    //   1115: invokevirtual 440	com/estrongs/android/pop/FexApplication:startActivity	(Landroid/content/Intent;)V
    //   1118: goto -845 -> 273
    //   1121: aload 18
    //   1123: checkcast 2	com/estrongs/fs/b/ba
    //   1126: invokevirtual 181	com/estrongs/fs/b/ba:a	()Ljava/lang/String;
    //   1129: astore 15
    //   1131: goto -107 -> 1024
    //   1134: iload_1
    //   1135: iconst_1
    //   1136: if_icmpne +31 -> 1167
    //   1139: aload_0
    //   1140: sipush 10000
    //   1143: new 291	com/estrongs/a/q
    //   1146: dup
    //   1147: aload_0
    //   1148: getfield 46	com/estrongs/fs/b/ba:f	Landroid/app/Activity;
    //   1151: ldc_w 441
    //   1154: invokevirtual 93	android/app/Activity:getString	(I)Ljava/lang/String;
    //   1157: aconst_null
    //   1158: invokespecial 296	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1161: invokevirtual 300	com/estrongs/fs/b/ba:setTaskResult	(ILjava/lang/Object;)V
    //   1164: goto -891 -> 273
    //   1167: iload_1
    //   1168: iconst_2
    //   1169: if_icmpne -896 -> 273
    //   1172: aload_0
    //   1173: sipush 10000
    //   1176: new 291	com/estrongs/a/q
    //   1179: dup
    //   1180: aload_0
    //   1181: getfield 46	com/estrongs/fs/b/ba:f	Landroid/app/Activity;
    //   1184: ldc_w 442
    //   1187: invokevirtual 93	android/app/Activity:getString	(I)Ljava/lang/String;
    //   1190: aconst_null
    //   1191: invokespecial 296	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1194: invokevirtual 300	com/estrongs/fs/b/ba:setTaskResult	(ILjava/lang/Object;)V
    //   1197: goto -924 -> 273
    //   1200: iconst_0
    //   1201: ireturn
    //   1202: astore 16
    //   1204: goto -846 -> 358
    //   1207: astore 15
    //   1209: goto -646 -> 563
    //   1212: astore 15
    //   1214: goto -934 -> 280
    //   1217: astore 15
    //   1219: goto -259 -> 960
    //   1222: goto -702 -> 520
    //   1225: astore 15
    //   1227: iconst_1
    //   1228: istore_1
    //   1229: goto -1026 -> 203
    //   1232: goto -712 -> 520
    //   1235: iload_3
    //   1236: ifgt -452 -> 784
    //   1239: aload 16
    //   1241: astore 15
    //   1243: goto -685 -> 558
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1246	0	this	ba
    //   182	1047	1	k	int
    //   187	425	2	m	int
    //   757	479	3	n	int
    //   179	754	4	l1	long
    //   541	404	6	l2	long
    //   629	302	8	l3	long
    //   621	302	10	l4	long
    //   538	405	12	l5	long
    //   184	319	14	bool	boolean
    //   83	11	15	localStringBuilder	StringBuilder
    //   286	14	15	localIOException1	java.io.IOException
    //   332	1	15	localInterruptedException	InterruptedException
    //   345	566	15	localObject1	Object
    //   915	3	15	localException1	Exception
    //   928	1	15	localObject2	Object
    //   937	1	15	localException2	Exception
    //   1022	108	15	str1	String
    //   1207	1	15	localException3	Exception
    //   1212	1	15	localIOException2	java.io.IOException
    //   1217	1	15	localException4	Exception
    //   1225	1	15	localException5	Exception
    //   1241	1	15	localObject3	Object
    //   89	445	16	localObject4	Object
    //   603	6	16	localObject5	Object
    //   617	467	16	localObject6	Object
    //   1202	38	16	localException6	Exception
    //   625	470	17	localObject7	Object
    //   140	982	18	localObject8	Object
    //   166	608	19	localDataInputStream	java.io.DataInputStream
    //   342	629	20	str2	String
    //   399	586	21	str3	String
    //   528	276	22	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   142	168	286	java/io/IOException
    //   323	329	332	java/lang/InterruptedException
    //   464	515	603	finally
    //   520	523	603	finally
    //   605	608	603	finally
    //   631	642	915	java/lang/Exception
    //   663	673	915	java/lang/Exception
    //   693	699	915	java/lang/Exception
    //   718	731	915	java/lang/Exception
    //   743	758	915	java/lang/Exception
    //   773	781	915	java/lang/Exception
    //   801	810	915	java/lang/Exception
    //   836	863	915	java/lang/Exception
    //   875	908	915	java/lang/Exception
    //   585	595	937	java/lang/Exception
    //   347	354	1202	java/lang/Exception
    //   558	563	1207	java/lang/Exception
    //   273	280	1212	java/io/IOException
    //   950	960	1217	java/lang/Exception
    //   337	344	1225	java/lang/Exception
    //   358	369	1225	java/lang/Exception
    //   377	431	1225	java/lang/Exception
    //   431	440	1225	java/lang/Exception
    //   443	459	1225	java/lang/Exception
    //   608	611	1225	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */