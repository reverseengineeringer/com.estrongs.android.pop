package com.estrongs.android.pop.utils;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.estrongs.a.a.p;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ar;
import com.estrongs.android.ui.dialog.ca;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.dialog.cx;
import com.estrongs.android.ui.dialog.dl;
import com.estrongs.android.ui.dialog.er;
import com.estrongs.android.ui.dialog.jh;
import com.estrongs.android.ui.pcs.l;
import com.estrongs.android.ui.pcs.q;
import com.estrongs.android.ui.pcs.u;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.view.bx;
import com.estrongs.android.view.cr;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.a.b;
import com.estrongs.fs.b.aq;
import com.estrongs.fs.b.r;
import com.estrongs.fs.b.y;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.util.j;
import com.estrongs.fs.w;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ao
{
  public static int a(h paramh)
  {
    File localFile = new File(paramh.getAbsolutePath());
    String[] arrayOfString = localFile.list();
    if (arrayOfString == null) {}
    for (int i = 0;; i = arrayOfString.length)
    {
      paramh.putExtra("child_count", Integer.valueOf(i));
      if ((paramh instanceof com.estrongs.fs.impl.local.f)) {
        ((com.estrongs.fs.impl.local.f)paramh).a(localFile.lastModified());
      }
      return i;
    }
  }
  
  public static cv a(Activity paramActivity, q paramq)
  {
    return a(paramActivity, paramq, null);
  }
  
  public static cv a(Activity paramActivity, q paramq, String paramString)
  {
    Boolean[] arrayOfBoolean = new Boolean[1];
    arrayOfBoolean[0] = Boolean.valueOf(true);
    bh localbh = new bh(paramActivity, paramq, arrayOfBoolean);
    bi localbi = new bi(paramActivity, paramq, arrayOfBoolean);
    bj localbj = new bj(paramActivity, paramq, arrayOfBoolean);
    paramq = paramString;
    if (paramString == null) {
      paramq = paramActivity.getString(2131231221);
    }
    if (ad.a(paramActivity).a(0L) != null) {}
    for (paramq = new cv(paramActivity).a(paramq).b(2131231957).d(2131232267, localbi).e(2131232468, localbj).f(2131230863, localbh);; paramq = new cv(paramActivity).a(paramq).b(2131231957).c(2131232267, localbi).b(2131230863, localbh))
    {
      paramq.a(new bk(arrayOfBoolean, paramActivity));
      paramq.c();
      return paramq;
    }
  }
  
  private static File a()
  {
    File localFile = new File(com.estrongs.android.pop.a.k);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    return localFile;
  }
  
  public static void a(Activity paramActivity, u paramu, List<h> paramList)
  {
    Object localObject = ad.a(paramActivity).ad();
    if ((localObject == null) || ("".equals(localObject)))
    {
      localObject = paramActivity.getString(2131231917, new Object[] { Build.MODEL });
      localObject = new dl(paramActivity, paramActivity.getString(2131231918), (String)localObject);
      ((dl)localObject).a(new bf(paramActivity, paramu, paramList));
      ((dl)localObject).a();
    }
    do
    {
      return;
      paramu = paramu.g() + "/files" + "/" + (String)localObject;
      a(paramActivity, paramList, d.m(paramu), true);
    } while ((b.a().h(paramu) != null) || (b.a().h(com.estrongs.android.util.ap.ce(paramu)) != null));
    b.a().a(new com.estrongs.fs.z(paramu, false));
  }
  
  public static void a(Activity paramActivity, h paramh)
  {
    String str = null;
    if ((paramActivity instanceof FileExplorerActivity)) {
      str = ((FileExplorerActivity)paramActivity).P();
    }
    if (com.estrongs.android.util.ap.bg(str))
    {
      ak.a(paramActivity, 2131231075, 1);
      return;
    }
    er localer = new er(paramActivity, paramActivity.getString(2131230881), paramh.getName());
    localer.a(new ap(paramh, paramActivity, str));
    localer.b(paramh.getFileType().b());
    localer.a(true);
    localer.show();
  }
  
  @TargetApi(11)
  public static void a(Activity paramActivity, String paramString)
  {
    a(paramActivity, paramString, null);
  }
  
  public static void a(Activity paramActivity, String paramString, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    paramString = com.estrongs.android.util.ap.cd(paramString);
    u localu = u.a();
    if ((com.estrongs.android.util.ap.aL(paramString)) && (!localu.b())) {
      return;
    }
    try
    {
      new ca(paramActivity, paramString, paramOnDismissListener).a();
      return;
    }
    catch (Exception paramActivity)
    {
      paramActivity.printStackTrace();
    }
  }
  
  /* Error */
  @TargetApi(11)
  public static void a(Activity paramActivity, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +10 -> 11
    //   4: aload_1
    //   5: invokevirtual 310	java/lang/String:length	()I
    //   8: ifne +4 -> 12
    //   11: return
    //   12: aload_1
    //   13: invokestatic 313	com/estrongs/android/util/ap:bm	(Ljava/lang/String;)Z
    //   16: ifne +10 -> 26
    //   19: aload_1
    //   20: invokestatic 316	com/estrongs/android/util/ap:v	(Ljava/lang/String;)Z
    //   23: ifeq +421 -> 444
    //   26: aload_1
    //   27: invokestatic 321	com/estrongs/fs/impl/o/b:o	(Ljava/lang/String;)Z
    //   30: ifeq +97 -> 127
    //   33: aload_1
    //   34: invokestatic 293	com/estrongs/android/util/ap:aL	(Ljava/lang/String;)Z
    //   37: ifeq +84 -> 121
    //   40: invokestatic 290	com/estrongs/android/ui/pcs/u:a	()Lcom/estrongs/android/ui/pcs/u;
    //   43: invokevirtual 294	com/estrongs/android/ui/pcs/u:b	()Z
    //   46: ifne +75 -> 121
    //   49: new 323	com/estrongs/android/pop/utils/bb
    //   52: dup
    //   53: aload_0
    //   54: aload_1
    //   55: invokespecial 325	com/estrongs/android/pop/utils/bb:<init>	(Landroid/app/Activity;Ljava/lang/String;)V
    //   58: astore_2
    //   59: ldc_w 327
    //   62: aload_1
    //   63: invokestatic 330	com/estrongs/android/util/ap:A	(Ljava/lang/String;)Ljava/lang/String;
    //   66: invokevirtual 147	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   69: ifeq +33 -> 102
    //   72: aload_0
    //   73: invokestatic 76	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   76: lconst_0
    //   77: invokevirtual 79	com/estrongs/android/pop/ad:a	(J)Ljava/lang/String;
    //   80: ifnull +22 -> 102
    //   83: new 332	com/estrongs/android/ui/pcs/c
    //   86: dup
    //   87: aload_0
    //   88: invokespecial 333	com/estrongs/android/ui/pcs/c:<init>	(Landroid/content/Context;)V
    //   91: astore_0
    //   92: aload_0
    //   93: aload_2
    //   94: invokevirtual 336	com/estrongs/android/ui/pcs/c:a	(Lcom/estrongs/android/ui/pcs/q;)V
    //   97: aload_0
    //   98: invokevirtual 337	com/estrongs/android/ui/pcs/c:a	()V
    //   101: return
    //   102: new 339	com/estrongs/android/ui/pcs/l
    //   105: dup
    //   106: aload_0
    //   107: invokespecial 340	com/estrongs/android/ui/pcs/l:<init>	(Landroid/content/Context;)V
    //   110: astore_0
    //   111: aload_0
    //   112: aload_2
    //   113: invokevirtual 341	com/estrongs/android/ui/pcs/l:a	(Lcom/estrongs/android/ui/pcs/q;)V
    //   116: aload_0
    //   117: invokevirtual 342	com/estrongs/android/ui/pcs/l:show	()V
    //   120: return
    //   121: aload_0
    //   122: aload_1
    //   123: invokestatic 344	com/estrongs/android/pop/utils/ao:b	(Landroid/app/Activity;Ljava/lang/String;)V
    //   126: return
    //   127: aload_0
    //   128: invokestatic 347	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   131: aload_1
    //   132: invokevirtual 350	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   135: astore 7
    //   137: aload 7
    //   139: invokeinterface 247 1 0
    //   144: ldc_w 352
    //   147: ldc_w 354
    //   150: invokevirtual 358	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   153: invokevirtual 361	java/lang/String:trim	()Ljava/lang/String;
    //   156: astore 6
    //   158: ldc -115
    //   160: aload 6
    //   162: invokevirtual 147	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   165: ifne +15 -> 180
    //   168: aload 6
    //   170: astore 5
    //   172: aload 6
    //   174: invokestatic 365	com/estrongs/fs/util/j:f	(Ljava/lang/String;)Z
    //   177: ifne +48 -> 225
    //   180: new 367	java/text/SimpleDateFormat
    //   183: dup
    //   184: ldc_w 369
    //   187: invokespecial 370	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   190: astore 5
    //   192: new 174	java/lang/StringBuilder
    //   195: dup
    //   196: invokespecial 176	java/lang/StringBuilder:<init>	()V
    //   199: ldc_w 372
    //   202: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   205: aload 5
    //   207: new 374	java/util/Date
    //   210: dup
    //   211: invokespecial 375	java/util/Date:<init>	()V
    //   214: invokevirtual 381	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   217: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: invokevirtual 192	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   223: astore 5
    //   225: aload 5
    //   227: astore 6
    //   229: aload_1
    //   230: invokestatic 384	com/estrongs/android/util/ap:aQ	(Ljava/lang/String;)Z
    //   233: ifeq +33 -> 266
    //   236: new 174	java/lang/StringBuilder
    //   239: dup
    //   240: invokespecial 176	java/lang/StringBuilder:<init>	()V
    //   243: aload 5
    //   245: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   248: aload 7
    //   250: invokeinterface 387 1 0
    //   255: invokestatic 392	com/estrongs/android/pop/spfs/PhotoInfoManager:getPhotoExtension	(Ljava/lang/String;)Ljava/lang/String;
    //   258: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: invokevirtual 192	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   264: astore 6
    //   266: aload 6
    //   268: astore_1
    //   269: aload_2
    //   270: invokestatic 397	com/estrongs/android/util/bk:b	(Ljava/lang/CharSequence;)Z
    //   273: ifeq +18 -> 291
    //   276: aload 6
    //   278: aload_2
    //   279: invokestatic 399	com/estrongs/android/util/ap:j	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   282: astore_1
    //   283: aload 7
    //   285: aload_1
    //   286: invokeinterface 402 2 0
    //   291: aload 7
    //   293: ldc_w 404
    //   296: aload_1
    //   297: invokeinterface 34 3 0
    //   302: pop
    //   303: aload_0
    //   304: invokestatic 347	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   307: invokestatic 406	com/estrongs/android/pop/utils/ao:a	()Ljava/io/File;
    //   310: invokevirtual 407	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   313: invokevirtual 350	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   316: astore_1
    //   317: new 409	com/estrongs/fs/b/r
    //   320: dup
    //   321: aload_0
    //   322: invokestatic 347	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   325: aload 7
    //   327: aload_1
    //   328: invokespecial 412	com/estrongs/fs/b/r:<init>	(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V
    //   331: astore_2
    //   332: aload_2
    //   333: iconst_0
    //   334: invokevirtual 414	com/estrongs/fs/b/r:c	(Z)V
    //   337: aload_2
    //   338: getfield 418	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   341: iconst_0
    //   342: putfield 423	com/estrongs/a/a/m:k	Z
    //   345: aload_2
    //   346: iconst_0
    //   347: invokevirtual 424	com/estrongs/fs/b/r:b	(Z)V
    //   350: aload_2
    //   351: iconst_0
    //   352: invokevirtual 427	com/estrongs/fs/b/r:setCanHide	(Z)V
    //   355: aload_2
    //   356: aload_0
    //   357: ldc_w 428
    //   360: invokevirtual 71	android/app/Activity:getString	(I)Ljava/lang/String;
    //   363: iconst_1
    //   364: anewarray 4	java/lang/Object
    //   367: dup
    //   368: iconst_0
    //   369: aload_1
    //   370: invokeinterface 14 1 0
    //   375: invokestatic 431	com/estrongs/android/util/ap:cc	(Ljava/lang/String;)Ljava/lang/String;
    //   378: aastore
    //   379: invokestatic 434	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   382: invokevirtual 437	com/estrongs/fs/b/r:setDescription	(Ljava/lang/String;)V
    //   385: aload_2
    //   386: new 439	com/estrongs/android/pop/utils/bc
    //   389: dup
    //   390: aload_0
    //   391: aload_1
    //   392: aload 7
    //   394: invokespecial 442	com/estrongs/android/pop/utils/bc:<init>	(Landroid/app/Activity;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V
    //   397: invokevirtual 446	com/estrongs/fs/b/r:addTaskStatusChangeListener	(Lcom/estrongs/a/a/p;)V
    //   400: new 448	com/estrongs/android/pop/utils/bd
    //   403: dup
    //   404: aload_0
    //   405: aload_0
    //   406: ldc_w 449
    //   409: invokevirtual 71	android/app/Activity:getString	(I)Ljava/lang/String;
    //   412: aload_2
    //   413: iconst_0
    //   414: invokespecial 452	com/estrongs/android/pop/utils/bd:<init>	(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Z)V
    //   417: aload_0
    //   418: ldc_w 453
    //   421: invokevirtual 71	android/app/Activity:getString	(I)Ljava/lang/String;
    //   424: aconst_null
    //   425: invokevirtual 456	com/estrongs/android/pop/utils/bd:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/jh;
    //   428: invokevirtual 459	com/estrongs/android/ui/dialog/jh:show	()V
    //   431: aload_2
    //   432: invokevirtual 462	com/estrongs/fs/b/r:execute	()V
    //   435: return
    //   436: astore_1
    //   437: aload_1
    //   438: invokevirtual 463	com/estrongs/android/pop/spfs/PhotoInfoException:printStackTrace	()V
    //   441: goto -138 -> 303
    //   444: aload_1
    //   445: invokestatic 466	com/estrongs/android/util/ap:bV	(Ljava/lang/String;)Ljava/lang/String;
    //   448: astore 12
    //   450: new 468	android/content/Intent
    //   453: dup
    //   454: invokespecial 469	android/content/Intent:<init>	()V
    //   457: astore 11
    //   459: aload 11
    //   461: ldc_w 471
    //   464: invokevirtual 475	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   467: pop
    //   468: new 8	java/io/File
    //   471: dup
    //   472: aload_1
    //   473: invokespecial 18	java/io/File:<init>	(Ljava/lang/String;)V
    //   476: invokestatic 481	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   479: astore_1
    //   480: aload 12
    //   482: invokestatic 483	com/estrongs/fs/util/j:b	(Ljava/lang/String;)Ljava/lang/String;
    //   485: astore 13
    //   487: aconst_null
    //   488: astore 9
    //   490: aconst_null
    //   491: astore 8
    //   493: aconst_null
    //   494: astore 7
    //   496: aload 13
    //   498: invokestatic 485	com/estrongs/android/pop/utils/ao:a	(Ljava/lang/String;)Z
    //   501: ifne +1419 -> 1920
    //   504: aload 12
    //   506: invokestatic 490	com/estrongs/android/util/bg:b	(Ljava/lang/String;)I
    //   509: invokestatic 493	com/estrongs/android/util/bg:H	(I)Ljava/lang/String;
    //   512: astore 5
    //   514: aload 5
    //   516: astore_2
    //   517: aload 5
    //   519: ifnonnull +1398 -> 1917
    //   522: aload 12
    //   524: invokestatic 496	com/estrongs/android/util/bg:U	(Ljava/lang/String;)Ljava/lang/String;
    //   527: astore 5
    //   529: aload 5
    //   531: astore_2
    //   532: aload 5
    //   534: ifnull +1383 -> 1917
    //   537: aload 5
    //   539: astore_2
    //   540: aload 5
    //   542: ldc_w 498
    //   545: invokevirtual 147	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   548: ifeq +1369 -> 1917
    //   551: aconst_null
    //   552: astore_2
    //   553: aload_0
    //   554: invokevirtual 502	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   557: getstatic 508	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   560: iconst_1
    //   561: anewarray 143	java/lang/String
    //   564: dup
    //   565: iconst_0
    //   566: ldc_w 510
    //   569: aastore
    //   570: ldc_w 512
    //   573: iconst_1
    //   574: anewarray 143	java/lang/String
    //   577: dup
    //   578: iconst_0
    //   579: aload 12
    //   581: aastore
    //   582: aconst_null
    //   583: invokevirtual 518	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   586: astore 5
    //   588: aload 5
    //   590: ifnull +1320 -> 1910
    //   593: aload 5
    //   595: astore 6
    //   597: aload 5
    //   599: invokeinterface 523 1 0
    //   604: ifle +1306 -> 1910
    //   607: aload 5
    //   609: astore 6
    //   611: aload 5
    //   613: invokeinterface 526 1 0
    //   618: pop
    //   619: aload 5
    //   621: astore 6
    //   623: aload 5
    //   625: iconst_0
    //   626: invokeinterface 530 2 0
    //   631: istore_3
    //   632: aload 5
    //   634: astore 6
    //   636: getstatic 508	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   639: invokevirtual 531	android/net/Uri:toString	()Ljava/lang/String;
    //   642: astore 7
    //   644: aload 5
    //   646: astore 6
    //   648: new 174	java/lang/StringBuilder
    //   651: dup
    //   652: invokespecial 176	java/lang/StringBuilder:<init>	()V
    //   655: aload 7
    //   657: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   660: ldc -67
    //   662: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   665: iload_3
    //   666: invokevirtual 534	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   669: invokevirtual 192	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   672: invokestatic 538	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   675: astore 7
    //   677: aload 7
    //   679: astore_1
    //   680: aload_2
    //   681: ifnull +734 -> 1415
    //   684: aload 5
    //   686: astore 6
    //   688: aload_2
    //   689: ldc_w 540
    //   692: invokevirtual 543	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   695: istore 4
    //   697: iload 4
    //   699: ifeq +716 -> 1415
    //   702: aload_2
    //   703: astore 9
    //   705: aload_1
    //   706: astore 7
    //   708: aload 9
    //   710: astore 6
    //   712: aload 5
    //   714: ifnull +1185 -> 1899
    //   717: aload 5
    //   719: invokeinterface 546 1 0
    //   724: aload_1
    //   725: astore 5
    //   727: aload 5
    //   729: astore_1
    //   730: aload 9
    //   732: astore 6
    //   734: aload 9
    //   736: ifnonnull +194 -> 930
    //   739: aload_0
    //   740: invokevirtual 502	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   743: getstatic 549	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   746: iconst_1
    //   747: anewarray 143	java/lang/String
    //   750: dup
    //   751: iconst_0
    //   752: ldc_w 510
    //   755: aastore
    //   756: ldc_w 512
    //   759: iconst_1
    //   760: anewarray 143	java/lang/String
    //   763: dup
    //   764: iconst_0
    //   765: aload 12
    //   767: aastore
    //   768: aconst_null
    //   769: invokevirtual 518	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   772: astore 10
    //   774: aload 5
    //   776: astore 7
    //   778: aload 9
    //   780: astore 8
    //   782: aload 10
    //   784: ifnull +120 -> 904
    //   787: aload 5
    //   789: astore 7
    //   791: aload 9
    //   793: astore 8
    //   795: aload 10
    //   797: astore 6
    //   799: aload 10
    //   801: invokeinterface 523 1 0
    //   806: ifle +98 -> 904
    //   809: aload 10
    //   811: astore 6
    //   813: aload 10
    //   815: invokeinterface 526 1 0
    //   820: pop
    //   821: aload 10
    //   823: astore 6
    //   825: aload 10
    //   827: iconst_0
    //   828: invokeinterface 530 2 0
    //   833: istore_3
    //   834: aload 10
    //   836: astore 6
    //   838: getstatic 549	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   841: invokevirtual 531	android/net/Uri:toString	()Ljava/lang/String;
    //   844: astore_1
    //   845: aload 10
    //   847: astore 6
    //   849: new 174	java/lang/StringBuilder
    //   852: dup
    //   853: invokespecial 176	java/lang/StringBuilder:<init>	()V
    //   856: aload_1
    //   857: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   860: ldc -67
    //   862: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   865: iload_3
    //   866: invokevirtual 534	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   869: invokevirtual 192	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   872: invokestatic 538	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   875: astore_1
    //   876: aload_2
    //   877: ifnull +603 -> 1480
    //   880: aload 10
    //   882: astore 6
    //   884: aload_2
    //   885: ldc_w 551
    //   888: invokevirtual 543	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   891: istore 4
    //   893: iload 4
    //   895: ifeq +585 -> 1480
    //   898: aload_2
    //   899: astore 8
    //   901: aload_1
    //   902: astore 7
    //   904: aload 7
    //   906: astore_1
    //   907: aload 8
    //   909: astore 6
    //   911: aload 10
    //   913: ifnull +17 -> 930
    //   916: aload 10
    //   918: invokeinterface 546 1 0
    //   923: aload 8
    //   925: astore 6
    //   927: aload 7
    //   929: astore_1
    //   930: aload 6
    //   932: ifnonnull +951 -> 1883
    //   935: aload_0
    //   936: invokevirtual 502	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   939: getstatic 554	android/provider/MediaStore$Video$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   942: iconst_1
    //   943: anewarray 143	java/lang/String
    //   946: dup
    //   947: iconst_0
    //   948: ldc_w 510
    //   951: aastore
    //   952: ldc_w 512
    //   955: iconst_1
    //   956: anewarray 143	java/lang/String
    //   959: dup
    //   960: iconst_0
    //   961: aload 12
    //   963: aastore
    //   964: aconst_null
    //   965: invokevirtual 518	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   968: astore 7
    //   970: aload 7
    //   972: ifnull +902 -> 1874
    //   975: aload 7
    //   977: astore 5
    //   979: aload 7
    //   981: invokeinterface 523 1 0
    //   986: ifle +888 -> 1874
    //   989: aload 7
    //   991: astore 5
    //   993: aload 7
    //   995: invokeinterface 526 1 0
    //   1000: pop
    //   1001: aload 7
    //   1003: astore 5
    //   1005: aload 7
    //   1007: iconst_0
    //   1008: invokeinterface 530 2 0
    //   1013: istore_3
    //   1014: aload 7
    //   1016: astore 5
    //   1018: getstatic 554	android/provider/MediaStore$Video$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   1021: invokevirtual 531	android/net/Uri:toString	()Ljava/lang/String;
    //   1024: astore 8
    //   1026: aload 7
    //   1028: astore 5
    //   1030: new 174	java/lang/StringBuilder
    //   1033: dup
    //   1034: invokespecial 176	java/lang/StringBuilder:<init>	()V
    //   1037: aload 8
    //   1039: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1042: ldc -67
    //   1044: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1047: iload_3
    //   1048: invokevirtual 534	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1051: invokevirtual 192	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1054: invokestatic 538	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   1057: astore 8
    //   1059: aload_2
    //   1060: ifnull +541 -> 1601
    //   1063: aload 7
    //   1065: astore 5
    //   1067: aload_2
    //   1068: ldc_w 556
    //   1071: invokevirtual 543	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1074: istore 4
    //   1076: iload 4
    //   1078: ifeq +523 -> 1601
    //   1081: aload_2
    //   1082: astore_1
    //   1083: aload 8
    //   1085: astore 5
    //   1087: aload 7
    //   1089: ifnull +782 -> 1871
    //   1092: aload 7
    //   1094: invokeinterface 546 1 0
    //   1099: aload_1
    //   1100: ifnonnull +759 -> 1859
    //   1103: invokestatic 560	com/estrongs/android/pop/ac:a	()I
    //   1106: bipush 11
    //   1108: if_icmplt +751 -> 1859
    //   1111: aconst_null
    //   1112: astore 6
    //   1114: aload_0
    //   1115: invokevirtual 502	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   1118: ldc_w 562
    //   1121: invokestatic 567	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   1124: iconst_2
    //   1125: anewarray 143	java/lang/String
    //   1128: dup
    //   1129: iconst_0
    //   1130: ldc_w 510
    //   1133: aastore
    //   1134: dup
    //   1135: iconst_1
    //   1136: ldc_w 569
    //   1139: aastore
    //   1140: ldc_w 512
    //   1143: iconst_1
    //   1144: anewarray 143	java/lang/String
    //   1147: dup
    //   1148: iconst_0
    //   1149: aload 12
    //   1151: aastore
    //   1152: aconst_null
    //   1153: invokevirtual 518	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   1156: astore 7
    //   1158: aload 7
    //   1160: astore 6
    //   1162: aload 6
    //   1164: ifnull +692 -> 1856
    //   1167: aload 6
    //   1169: astore 7
    //   1171: aload 6
    //   1173: invokeinterface 523 1 0
    //   1178: ifle +678 -> 1856
    //   1181: aload 6
    //   1183: astore 7
    //   1185: aload 6
    //   1187: invokeinterface 526 1 0
    //   1192: pop
    //   1193: aload 6
    //   1195: astore 7
    //   1197: aload 6
    //   1199: iconst_0
    //   1200: invokeinterface 530 2 0
    //   1205: pop
    //   1206: aload 6
    //   1208: astore 7
    //   1210: aload 6
    //   1212: iconst_1
    //   1213: invokeinterface 570 2 0
    //   1218: astore 8
    //   1220: aload 8
    //   1222: astore_1
    //   1223: aload 6
    //   1225: astore 7
    //   1227: ldc_w 562
    //   1230: invokestatic 567	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   1233: invokevirtual 531	android/net/Uri:toString	()Ljava/lang/String;
    //   1236: pop
    //   1237: aload_1
    //   1238: astore 7
    //   1240: aload 6
    //   1242: ifnull +608 -> 1850
    //   1245: aload 6
    //   1247: invokeinterface 546 1 0
    //   1252: aload_1
    //   1253: astore 6
    //   1255: aload_1
    //   1256: ifnonnull +6 -> 1262
    //   1259: aload_2
    //   1260: astore 6
    //   1262: aload 6
    //   1264: astore_1
    //   1265: aload 6
    //   1267: ifnonnull +9 -> 1276
    //   1270: aload 12
    //   1272: invokestatic 571	com/estrongs/android/pop/utils/ao:b	(Ljava/lang/String;)Ljava/lang/String;
    //   1275: astore_1
    //   1276: aload_1
    //   1277: ifnull +10 -> 1287
    //   1280: aload 11
    //   1282: aload_1
    //   1283: invokevirtual 574	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   1286: pop
    //   1287: aload 11
    //   1289: ldc_w 576
    //   1292: aload 5
    //   1294: invokevirtual 579	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   1297: pop
    //   1298: aload_0
    //   1299: invokevirtual 583	android/app/Activity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   1302: aload 11
    //   1304: iconst_0
    //   1305: invokevirtual 589	android/content/pm/PackageManager:queryIntentActivities	(Landroid/content/Intent;I)Ljava/util/List;
    //   1308: astore_1
    //   1309: aload_1
    //   1310: ifnull +535 -> 1845
    //   1313: iconst_0
    //   1314: istore_3
    //   1315: iload_3
    //   1316: aload_1
    //   1317: invokeinterface 594 1 0
    //   1322: if_icmpge +523 -> 1845
    //   1325: aload_1
    //   1326: iload_3
    //   1327: invokeinterface 598 2 0
    //   1332: checkcast 600	android/content/pm/ResolveInfo
    //   1335: getfield 604	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   1338: getfield 610	android/content/pm/ActivityInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   1341: getfield 615	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   1344: invokevirtual 618	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1347: ldc_w 620
    //   1350: invokevirtual 623	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   1353: iconst_m1
    //   1354: if_icmpeq +359 -> 1713
    //   1357: iconst_1
    //   1358: istore_3
    //   1359: iload_3
    //   1360: ifne +32 -> 1392
    //   1363: aload 11
    //   1365: invokevirtual 626	android/content/Intent:getType	()Ljava/lang/String;
    //   1368: astore_1
    //   1369: aload_1
    //   1370: ifnull +22 -> 1392
    //   1373: aload_1
    //   1374: ldc_w 540
    //   1377: invokevirtual 543	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1380: ifeq +340 -> 1720
    //   1383: aload 11
    //   1385: ldc_w 628
    //   1388: invokevirtual 574	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   1391: pop
    //   1392: aload_0
    //   1393: aload 11
    //   1395: aload_0
    //   1396: ldc_w 629
    //   1399: invokevirtual 71	android/app/Activity:getString	(I)Ljava/lang/String;
    //   1402: invokestatic 633	android/content/Intent:createChooser	(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    //   1405: invokevirtual 637	android/app/Activity:startActivity	(Landroid/content/Intent;)V
    //   1408: return
    //   1409: astore_0
    //   1410: aload_0
    //   1411: invokevirtual 638	android/content/ActivityNotFoundException:printStackTrace	()V
    //   1414: return
    //   1415: ldc_w 628
    //   1418: astore 9
    //   1420: goto -715 -> 705
    //   1423: astore 7
    //   1425: aconst_null
    //   1426: astore 5
    //   1428: aload 5
    //   1430: astore 6
    //   1432: aload 7
    //   1434: invokevirtual 302	java/lang/Exception:printStackTrace	()V
    //   1437: aload_1
    //   1438: astore 7
    //   1440: aload 8
    //   1442: astore 6
    //   1444: aload 5
    //   1446: ifnull +453 -> 1899
    //   1449: aload 5
    //   1451: invokeinterface 546 1 0
    //   1456: aload_1
    //   1457: astore 5
    //   1459: goto -732 -> 727
    //   1462: astore_0
    //   1463: aconst_null
    //   1464: astore 6
    //   1466: aload 6
    //   1468: ifnull +10 -> 1478
    //   1471: aload 6
    //   1473: invokeinterface 546 1 0
    //   1478: aload_0
    //   1479: athrow
    //   1480: aload 10
    //   1482: astore 6
    //   1484: aload 13
    //   1486: ldc_w 640
    //   1489: invokevirtual 643	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1492: ifeq +14 -> 1506
    //   1495: ldc_w 645
    //   1498: astore 8
    //   1500: aload_1
    //   1501: astore 7
    //   1503: goto -599 -> 904
    //   1506: aload 10
    //   1508: astore 6
    //   1510: aload 13
    //   1512: ldc_w 647
    //   1515: invokevirtual 643	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1518: ifeq +14 -> 1532
    //   1521: ldc_w 649
    //   1524: astore 8
    //   1526: aload_1
    //   1527: astore 7
    //   1529: goto -625 -> 904
    //   1532: ldc_w 651
    //   1535: astore 8
    //   1537: aload_1
    //   1538: astore 7
    //   1540: goto -636 -> 904
    //   1543: astore 6
    //   1545: aconst_null
    //   1546: astore 10
    //   1548: aload 5
    //   1550: astore_1
    //   1551: aload 6
    //   1553: astore 5
    //   1555: aload 10
    //   1557: astore 6
    //   1559: aload 5
    //   1561: invokevirtual 302	java/lang/Exception:printStackTrace	()V
    //   1564: aload 10
    //   1566: ifnull +326 -> 1892
    //   1569: aload 10
    //   1571: invokeinterface 546 1 0
    //   1576: aload 9
    //   1578: astore 6
    //   1580: goto -650 -> 930
    //   1583: astore_0
    //   1584: aconst_null
    //   1585: astore 6
    //   1587: aload 6
    //   1589: ifnull +10 -> 1599
    //   1592: aload 6
    //   1594: invokeinterface 546 1 0
    //   1599: aload_0
    //   1600: athrow
    //   1601: ldc_w 653
    //   1604: astore_1
    //   1605: aload 8
    //   1607: astore 5
    //   1609: goto -522 -> 1087
    //   1612: astore 9
    //   1614: aconst_null
    //   1615: astore 7
    //   1617: aload 7
    //   1619: astore 5
    //   1621: aload 9
    //   1623: invokevirtual 302	java/lang/Exception:printStackTrace	()V
    //   1626: aload 7
    //   1628: ifnull +234 -> 1862
    //   1631: aload 7
    //   1633: invokeinterface 546 1 0
    //   1638: aload_1
    //   1639: astore 5
    //   1641: aload 6
    //   1643: astore_1
    //   1644: goto -545 -> 1099
    //   1647: astore_0
    //   1648: aconst_null
    //   1649: astore 5
    //   1651: aload 5
    //   1653: ifnull +10 -> 1663
    //   1656: aload 5
    //   1658: invokeinterface 546 1 0
    //   1663: aload_0
    //   1664: athrow
    //   1665: astore 8
    //   1667: aconst_null
    //   1668: astore 6
    //   1670: aload 6
    //   1672: astore 7
    //   1674: aload 8
    //   1676: invokevirtual 302	java/lang/Exception:printStackTrace	()V
    //   1679: aload_1
    //   1680: astore 7
    //   1682: aload 6
    //   1684: ifnull +166 -> 1850
    //   1687: aload 6
    //   1689: invokeinterface 546 1 0
    //   1694: goto -442 -> 1252
    //   1697: astore_0
    //   1698: aload 6
    //   1700: astore_1
    //   1701: aload_1
    //   1702: ifnull +9 -> 1711
    //   1705: aload_1
    //   1706: invokeinterface 546 1 0
    //   1711: aload_0
    //   1712: athrow
    //   1713: iload_3
    //   1714: iconst_1
    //   1715: iadd
    //   1716: istore_3
    //   1717: goto -402 -> 1315
    //   1720: aload_1
    //   1721: ldc_w 551
    //   1724: invokevirtual 543	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1727: ifeq +15 -> 1742
    //   1730: aload 11
    //   1732: ldc_w 651
    //   1735: invokevirtual 574	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   1738: pop
    //   1739: goto -347 -> 1392
    //   1742: aload_1
    //   1743: ldc_w 556
    //   1746: invokevirtual 543	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1749: ifeq +15 -> 1764
    //   1752: aload 11
    //   1754: ldc_w 653
    //   1757: invokevirtual 574	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   1760: pop
    //   1761: goto -369 -> 1392
    //   1764: aload 11
    //   1766: ldc_w 655
    //   1769: invokevirtual 574	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   1772: pop
    //   1773: goto -381 -> 1392
    //   1776: astore_0
    //   1777: aload 7
    //   1779: astore_1
    //   1780: goto -79 -> 1701
    //   1783: astore 8
    //   1785: goto -115 -> 1670
    //   1788: astore 8
    //   1790: goto -120 -> 1670
    //   1793: astore_0
    //   1794: goto -143 -> 1651
    //   1797: astore 9
    //   1799: goto -182 -> 1617
    //   1802: astore 9
    //   1804: aload 8
    //   1806: astore_1
    //   1807: goto -190 -> 1617
    //   1810: astore_0
    //   1811: goto -224 -> 1587
    //   1814: astore 6
    //   1816: aload 5
    //   1818: astore_1
    //   1819: aload 6
    //   1821: astore 5
    //   1823: goto -268 -> 1555
    //   1826: astore 5
    //   1828: goto -273 -> 1555
    //   1831: astore_0
    //   1832: goto -366 -> 1466
    //   1835: astore 7
    //   1837: goto -409 -> 1428
    //   1840: astore 7
    //   1842: goto -414 -> 1428
    //   1845: iconst_0
    //   1846: istore_3
    //   1847: goto -488 -> 1359
    //   1850: aload 7
    //   1852: astore_1
    //   1853: goto -601 -> 1252
    //   1856: goto -619 -> 1237
    //   1859: goto -607 -> 1252
    //   1862: aload_1
    //   1863: astore 5
    //   1865: aload 6
    //   1867: astore_1
    //   1868: goto -769 -> 1099
    //   1871: goto -772 -> 1099
    //   1874: aload_1
    //   1875: astore 5
    //   1877: aload 6
    //   1879: astore_1
    //   1880: goto -793 -> 1087
    //   1883: aload_1
    //   1884: astore 5
    //   1886: aload 6
    //   1888: astore_1
    //   1889: goto -790 -> 1099
    //   1892: aload 9
    //   1894: astore 6
    //   1896: goto -966 -> 930
    //   1899: aload 7
    //   1901: astore 5
    //   1903: aload 6
    //   1905: astore 9
    //   1907: goto -1180 -> 727
    //   1910: aload 7
    //   1912: astore 9
    //   1914: goto -1209 -> 705
    //   1917: goto -1364 -> 553
    //   1920: aconst_null
    //   1921: astore_2
    //   1922: goto -1369 -> 553
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1925	0	paramActivity	Activity
    //   0	1925	1	paramString1	String
    //   0	1925	2	paramString2	String
    //   631	1216	3	i	int
    //   695	382	4	bool	boolean
    //   170	1652	5	localObject1	Object
    //   1826	1	5	localException1	Exception
    //   1863	39	5	localObject2	Object
    //   156	1353	6	localObject3	Object
    //   1543	9	6	localException2	Exception
    //   1557	142	6	localObject4	Object
    //   1814	73	6	localException3	Exception
    //   1894	10	6	localObject5	Object
    //   135	1104	7	localObject6	Object
    //   1423	10	7	localException4	Exception
    //   1438	340	7	localObject7	Object
    //   1835	1	7	localException5	Exception
    //   1840	71	7	localException6	Exception
    //   491	1115	8	localObject8	Object
    //   1665	10	8	localException7	Exception
    //   1783	1	8	localException8	Exception
    //   1788	17	8	localException9	Exception
    //   488	1089	9	str1	String
    //   1612	10	9	localException10	Exception
    //   1797	1	9	localException11	Exception
    //   1802	91	9	localException12	Exception
    //   1905	8	9	localObject9	Object
    //   772	798	10	localCursor	android.database.Cursor
    //   457	1308	11	localIntent	Intent
    //   448	823	12	str2	String
    //   485	1026	13	str3	String
    // Exception table:
    //   from	to	target	type
    //   137	168	436	com/estrongs/android/pop/spfs/PhotoInfoException
    //   172	180	436	com/estrongs/android/pop/spfs/PhotoInfoException
    //   180	225	436	com/estrongs/android/pop/spfs/PhotoInfoException
    //   229	266	436	com/estrongs/android/pop/spfs/PhotoInfoException
    //   269	291	436	com/estrongs/android/pop/spfs/PhotoInfoException
    //   291	303	436	com/estrongs/android/pop/spfs/PhotoInfoException
    //   1392	1408	1409	android/content/ActivityNotFoundException
    //   553	588	1423	java/lang/Exception
    //   553	588	1462	finally
    //   739	774	1543	java/lang/Exception
    //   739	774	1583	finally
    //   935	970	1612	java/lang/Exception
    //   935	970	1647	finally
    //   1114	1158	1665	java/lang/Exception
    //   1114	1158	1697	finally
    //   1171	1181	1776	finally
    //   1185	1193	1776	finally
    //   1197	1206	1776	finally
    //   1210	1220	1776	finally
    //   1227	1237	1776	finally
    //   1674	1679	1776	finally
    //   1171	1181	1783	java/lang/Exception
    //   1185	1193	1783	java/lang/Exception
    //   1197	1206	1783	java/lang/Exception
    //   1210	1220	1783	java/lang/Exception
    //   1227	1237	1788	java/lang/Exception
    //   979	989	1793	finally
    //   993	1001	1793	finally
    //   1005	1014	1793	finally
    //   1018	1026	1793	finally
    //   1030	1059	1793	finally
    //   1067	1076	1793	finally
    //   1621	1626	1793	finally
    //   979	989	1797	java/lang/Exception
    //   993	1001	1797	java/lang/Exception
    //   1005	1014	1797	java/lang/Exception
    //   1018	1026	1797	java/lang/Exception
    //   1030	1059	1797	java/lang/Exception
    //   1067	1076	1802	java/lang/Exception
    //   799	809	1810	finally
    //   813	821	1810	finally
    //   825	834	1810	finally
    //   838	845	1810	finally
    //   849	876	1810	finally
    //   884	893	1810	finally
    //   1484	1495	1810	finally
    //   1510	1521	1810	finally
    //   1559	1564	1810	finally
    //   799	809	1814	java/lang/Exception
    //   813	821	1814	java/lang/Exception
    //   825	834	1814	java/lang/Exception
    //   838	845	1814	java/lang/Exception
    //   849	876	1814	java/lang/Exception
    //   884	893	1826	java/lang/Exception
    //   1484	1495	1826	java/lang/Exception
    //   1510	1521	1826	java/lang/Exception
    //   597	607	1831	finally
    //   611	619	1831	finally
    //   623	632	1831	finally
    //   636	644	1831	finally
    //   648	677	1831	finally
    //   688	697	1831	finally
    //   1432	1437	1831	finally
    //   597	607	1835	java/lang/Exception
    //   611	619	1835	java/lang/Exception
    //   623	632	1835	java/lang/Exception
    //   636	644	1835	java/lang/Exception
    //   648	677	1835	java/lang/Exception
    //   688	697	1840	java/lang/Exception
  }
  
  public static void a(Activity paramActivity, List<h> paramList)
  {
    if ((!u.a().b()) || (u.a().c()))
    {
      a(paramActivity);
      return;
    }
    com.estrongs.android.widget.f localf = new com.estrongs.android.widget.f(paramActivity, String.format("pcs://%1s@pcs/files/", new Object[] { u.a().e() }), new av(), 16);
    localf.b(paramActivity.getString(2131231270), new aw(paramActivity, paramList, localf));
    localf.c(paramActivity.getString(2131231265), (DialogInterface.OnClickListener)null);
    localf.a(paramActivity.getString(2131231058));
    localf.j();
  }
  
  public static void a(Activity paramActivity, List<h> paramList, h paramh, boolean paramBoolean)
  {
    a(paramActivity, paramList, paramh, paramBoolean, false);
  }
  
  public static void a(Activity paramActivity, List<h> paramList, h paramh, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramActivity, paramList, paramh, paramBoolean1, paramBoolean2, null);
  }
  
  public static void a(Activity paramActivity, List<h> paramList, h paramh, boolean paramBoolean1, boolean paramBoolean2, p paramp)
  {
    r localr;
    if (paramBoolean1)
    {
      if ((com.estrongs.android.util.ap.ci(paramh.getAbsolutePath())) || ((com.estrongs.android.util.ap.ci(((h)paramList.get(0)).getAbsolutePath())) && (!com.estrongs.android.util.ap.aL(paramh.getAbsolutePath()))))
      {
        ak.a(paramActivity, 2131231914, 0);
        return;
      }
      localr = new r(d.a(paramActivity), paramList, paramh);
      localr.b(paramBoolean2);
      localr.setDescription(String.format(paramActivity.getString(2131231286), new Object[] { com.estrongs.android.util.ap.cc(paramh.getAbsolutePath()) }));
      localr.a(true);
      if (paramp != null) {
        localr.addTaskStatusChangeListener(paramp);
      }
      if ((paramActivity instanceof FileExplorerActivity))
      {
        localr.addTaskStatusChangeListener(new bo(((FileExplorerActivity)paramActivity).O(), paramh, paramActivity));
        localr.addPostListener(new bq());
      }
      paramh = paramActivity.getString(2131232173);
      if (!com.estrongs.android.util.ap.ci(((h)paramList.get(0)).getAbsolutePath())) {
        break label327;
      }
    }
    label327:
    for (paramList = paramActivity.getString(2131231058);; paramList = paramh)
    {
      new jh(paramActivity, paramList, localr).show();
      localr.execute();
      return;
      if (com.estrongs.android.util.ap.aJ(paramh.getPath()))
      {
        if (u.a().b())
        {
          c(paramActivity, paramList, paramh, paramBoolean2);
          return;
        }
        paramList = new br(paramActivity, paramList, paramh, paramBoolean2);
        if (ad.a(paramActivity).a(0L) != null)
        {
          paramActivity = new com.estrongs.android.ui.pcs.c(paramActivity);
          paramActivity.a(paramList);
          paramActivity.a();
          return;
        }
        paramActivity = new l(paramActivity);
        paramActivity.a(paramList);
        paramActivity.show();
        return;
      }
      c(paramActivity, paramList, paramh, paramBoolean2);
      return;
    }
  }
  
  public static void a(Activity paramActivity, List<h> paramList, h paramh, boolean paramBoolean1, boolean paramBoolean2, p paramp, boolean paramBoolean3)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return;
    }
    if (paramBoolean3)
    {
      cx localcx = new cx(paramActivity, paramList, paramh, paramBoolean1);
      localcx.setConfirmButton(paramActivity.getString(2131231270), new bm(paramActivity, paramList, paramh, paramBoolean1, paramBoolean2, paramp));
      localcx.setCancelButton(paramActivity.getString(2131231265), new bn());
      localcx.show();
      return;
    }
    a(paramActivity, paramList, paramh, paramBoolean1, paramBoolean2, paramp);
  }
  
  public static void a(Activity paramActivity, List<h> paramList, boolean paramBoolean)
  {
    paramList = new y(paramActivity, paramList);
    paramList.setDescription(paramActivity.getString(2131230843));
    if ((paramActivity instanceof FileExplorerActivity))
    {
      Object localObject = ((FileExplorerActivity)paramActivity).O();
      if ((localObject != null) && ((localObject instanceof bx)))
      {
        localObject = (bx)localObject;
        if (((bx)localObject).t() != null) {
          paramList.addTaskStatusChangeListener(((bx)localObject).t());
        }
      }
    }
    if (paramBoolean) {
      paramList.addTaskStatusChangeListener(new bg(paramActivity, paramList));
    }
    new jh(paramActivity, paramActivity.getString(2131232176), paramList).show();
    paramList.execute();
    try
    {
      paramActivity = com.estrongs.android.j.c.a(paramActivity);
      if (paramActivity != null) {
        paramActivity.a("function", "decrypt_dialog_show");
      }
      return;
    }
    catch (Exception paramActivity)
    {
      paramActivity.printStackTrace();
    }
  }
  
  public static void a(Context paramContext)
  {
    new cv(paramContext).a(2131231058).b(2131231057).b(2131231273, new ay(paramContext)).c(2131231269, new ax()).c();
  }
  
  public static void a(com.estrongs.android.pop.app.d.a parama, List<h> paramList)
  {
    String str = null;
    if ((parama instanceof FileExplorerActivity)) {
      str = ((FileExplorerActivity)parama).P();
    }
    if (com.estrongs.android.util.ap.bg(str))
    {
      ak.a(parama.n(), 2131231075, 1);
      return;
    }
    new ar(parama, paramList, str).a();
  }
  
  public static void a(com.estrongs.android.pop.app.d.a parama, List<h> paramList, h paramh, boolean paramBoolean)
  {
    if (paramList.size() == 0) {
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = paramList.iterator();
    while (localIterator1.hasNext())
    {
      Object localObject = (h)localIterator1.next();
      if (com.estrongs.android.util.ap.aQ(((h)localObject).getPath()))
      {
        String str;
        if (((h)localObject).getFileType().a())
        {
          try
          {
            localObject = d.a(parama.n()).a((h)localObject, false, new bu());
            Iterator localIterator2 = ((List)localObject).iterator();
            while (localIterator2.hasNext())
            {
              h localh = (h)localIterator2.next();
              try
              {
                str = localh.getName().replaceAll("[@\\/:*?\"<>|()　 ]", "_").trim();
                if (!"".equals(str))
                {
                  paramList = str;
                  if (j.f(str)) {}
                }
                else
                {
                  paramList = new SimpleDateFormat("yyyyMMdd_HHmmss_SSS");
                  paramList = "download_" + paramList.format(new Date());
                }
                localh.putExtra("item_paste_name", paramList + PhotoInfoManager.getPhotoExtension(localh.getPath()));
              }
              catch (PhotoInfoException paramList)
              {
                paramList.printStackTrace();
              }
            }
          }
          catch (FileSystemException paramList)
          {
            paramList.printStackTrace();
          }
          localArrayList.addAll((Collection)localObject);
        }
        else
        {
          try
          {
            str = ((h)localObject).getName().replaceAll("[@\\/:*?\"<>|()　 ]", "_").trim();
            if (!"".equals(str))
            {
              paramList = str;
              if (j.f(str)) {}
            }
            else
            {
              paramList = new SimpleDateFormat("yyyyMMdd_HHmmss_SSS");
              paramList = "download_" + paramList.format(new Date());
            }
            ((h)localObject).putExtra("item_paste_name", paramList + PhotoInfoManager.getPhotoExtension(((h)localObject).getPath()));
          }
          catch (PhotoInfoException paramList)
          {
            for (;;)
            {
              paramList.printStackTrace();
            }
          }
          localArrayList.add(localObject);
        }
      }
      else if (((h)localObject).getFileType().a())
      {
        try
        {
          localArrayList.addAll(d.a(parama.n()).a((h)localObject, false, new au()));
        }
        catch (FileSystemException paramList)
        {
          paramList.printStackTrace();
        }
      }
      else
      {
        localArrayList.add(localObject);
      }
    }
    a(parama.G(), localArrayList, paramh, paramBoolean);
  }
  
  public static void a(com.estrongs.android.pop.app.d.a parama, List<h> paramList, boolean paramBoolean1, boolean paramBoolean2, p paramp, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5)
  {
    bv.a(new bv(null), parama, paramList, paramBoolean1, paramBoolean2, paramp, paramBoolean3, paramBoolean4, paramBoolean5);
  }
  
  public static boolean a(Activity paramActivity, h paramh, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject = paramh.getAbsolutePath();
    if (paramString1 != null)
    {
      if (com.estrongs.android.util.ap.br(paramString2))
      {
        ad.a(paramActivity).c((String)localObject, paramString1);
        paramh.setName(paramString1);
        return true;
      }
      boolean[] arrayOfBoolean = new boolean[1];
      localObject = new be(paramActivity, paramh, paramString1, (String)localObject, arrayOfBoolean, paramBoolean2);
      if (paramBoolean1)
      {
        ((Thread)localObject).start();
        if (com.estrongs.android.util.ap.bm(paramString2)) {
          a.a(paramActivity, paramActivity.getString(2131232275, new Object[] { paramh.getName(), paramString1 }));
        }
        return true;
      }
      ((Thread)localObject).run();
      return arrayOfBoolean[0];
    }
    return false;
  }
  
  public static boolean a(com.estrongs.android.pop.app.d.a parama, List<h> paramList, p paramp, ck paramck)
  {
    return new bv(null).a(parama, paramList, null, paramp, paramck);
  }
  
  public static boolean a(com.estrongs.android.pop.app.d.a parama, List<h> paramList, cr paramcr)
  {
    return new bv(null).a(parama, paramList, paramcr, null);
  }
  
  public static boolean a(com.estrongs.android.pop.app.d.a parama, List<h> paramList, cr paramcr, p paramp, int paramInt, String paramString, boolean paramBoolean)
  {
    return new bv(null).a(parama, paramList, paramcr, paramp, null, paramInt, paramString, paramBoolean);
  }
  
  private static boolean a(String paramString)
  {
    boolean bool2 = true;
    if (ac.a() >= 11) {}
    label302:
    for (;;)
    {
      boolean bool1 = false;
      return bool1;
      if (ac.a() < 9)
      {
        String[] arrayOfString = new String[31];
        arrayOfString[0] = "apk";
        arrayOfString[1] = "xml";
        arrayOfString[2] = "rss";
        arrayOfString[3] = "c";
        arrayOfString[4] = "java";
        arrayOfString[5] = "h";
        arrayOfString[6] = "docx";
        arrayOfString[7] = "xlsx";
        arrayOfString[8] = "bat";
        arrayOfString[9] = "exe";
        arrayOfString[10] = "dll";
        arrayOfString[11] = "lib";
        arrayOfString[12] = "pptx";
        arrayOfString[13] = "chm";
        arrayOfString[14] = "esj";
        arrayOfString[15] = "epub";
        arrayOfString[16] = "tar";
        arrayOfString[17] = "rar";
        arrayOfString[18] = "odt";
        arrayOfString[19] = "pgn";
        arrayOfString[20] = "xqf";
        arrayOfString[21] = "gzip";
        arrayOfString[22] = "torrent";
        arrayOfString[23] = "mobi";
        arrayOfString[24] = "prc";
        arrayOfString[25] = "vcf";
        arrayOfString[26] = "ics";
        arrayOfString[27] = "ical";
        arrayOfString[28] = "icalendar";
        arrayOfString[29] = "nzb";
        arrayOfString[30] = "umd";
        int j = arrayOfString.length;
        int i = 0;
        for (;;)
        {
          if (i >= j) {
            break label302;
          }
          bool1 = bool2;
          if (paramString.equalsIgnoreCase(arrayOfString[i])) {
            break;
          }
          i += 1;
        }
      }
    }
  }
  
  private static boolean a(List<String> paramList)
  {
    int i = 0;
    while (i < paramList.size())
    {
      if (!com.estrongs.android.util.bg.c((String)paramList.get(i))) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private static String b(String paramString)
  {
    if (a(j.b(paramString))) {
      return "application/*";
    }
    if ((com.estrongs.android.util.bg.e(paramString)) || (com.estrongs.android.util.bg.d(paramString))) {
      return "image/*";
    }
    if (com.estrongs.android.util.bg.g(paramString)) {
      return "audio/*";
    }
    if (com.estrongs.android.util.bg.h(paramString)) {
      return "video/*";
    }
    if (com.estrongs.android.util.bg.i(paramString)) {
      return "text/plain";
    }
    if (com.estrongs.android.util.bg.F(paramString)) {
      return "text/html";
    }
    if (com.estrongs.android.util.bg.H(paramString)) {
      return "text/xml";
    }
    if (com.estrongs.android.util.bg.C(paramString)) {
      return "application/msword";
    }
    if (com.estrongs.android.util.bg.D(paramString)) {
      return "application/vnd.ms-excel";
    }
    if (com.estrongs.android.util.bg.G(paramString)) {
      return "application/vnd.ms-powerpoint";
    }
    if (com.estrongs.android.util.bg.E(paramString)) {
      return "application/x-chm";
    }
    if (com.estrongs.android.util.bg.q(paramString)) {
      return "application/pdf";
    }
    if (com.estrongs.android.util.bg.s(paramString)) {
      return "application/epub+zip";
    }
    if (com.estrongs.android.util.bg.t(paramString)) {
      return "application/x-mobipocket-ebook";
    }
    if (com.estrongs.android.util.bg.j(paramString)) {
      return "application/x-rar-compressed";
    }
    if (com.estrongs.android.util.bg.r(paramString)) {
      return "application/esj";
    }
    if (com.estrongs.android.util.bg.J(paramString)) {
      return "audio/vnd.qcelp";
    }
    if (com.estrongs.android.util.bg.u(paramString)) {
      return "application/x-bittorrent";
    }
    if (com.estrongs.android.util.bg.z(paramString)) {
      return "application/x-chess-pgn";
    }
    if (com.estrongs.android.util.bg.B(paramString)) {
      return "application/vnd.oasis.opendocument.text";
    }
    if (com.estrongs.android.util.bg.k(paramString)) {
      return "application/x-shockwave-flash";
    }
    if (com.estrongs.android.util.bg.A(paramString)) {
      return "application/x-nzb";
    }
    if (com.estrongs.android.util.bg.I(paramString)) {
      return "text/calendar";
    }
    if (com.estrongs.android.util.bg.v(paramString)) {
      return "application/umd";
    }
    if (com.estrongs.android.util.bg.w(paramString)) {
      return "application/x-plucker";
    }
    if ((com.estrongs.android.util.bg.x(paramString)) || (com.estrongs.android.util.bg.y(paramString))) {
      return "application/x-expandedbook";
    }
    return "text/*";
  }
  
  public static void b(Activity paramActivity, String paramString)
  {
    a(paramActivity, com.estrongs.android.util.ap.cd(paramString), null);
  }
  
  public static void b(Activity paramActivity, List<String> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return;
    }
    boolean bool1 = com.estrongs.android.util.ap.bm((String)paramList.get(0));
    boolean bool2 = com.estrongs.android.util.ap.aQ((String)paramList.get(0));
    Object localObject2;
    if (bool1)
    {
      localObject2 = d.a(paramActivity).j(a().getAbsolutePath());
      ArrayList localArrayList2 = new ArrayList();
      ArrayList localArrayList1 = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        paramList = (String)localIterator.next();
        h localh = d.a(paramActivity).j(paramList);
        try
        {
          localObject1 = localh.getName().replaceAll("[@\\/:*?\"<>|()　 ]", "_").trim();
          if (!"".equals(localObject1))
          {
            paramList = (List<String>)localObject1;
            if (j.f((String)localObject1)) {}
          }
          else
          {
            paramList = new SimpleDateFormat("yyyyMMdd_HHmmss_SSS");
            paramList = "download_" + paramList.format(new Date());
          }
          localObject1 = paramList;
          if (bool2) {
            localObject1 = paramList + PhotoInfoManager.getPhotoExtension(localh.getPath());
          }
          localh.putExtra("item_paste_name", localObject1);
          localArrayList2.add(localh);
          localArrayList1.add(new File(((h)localObject2).getAbsolutePath(), (String)localObject1).getAbsolutePath());
        }
        catch (PhotoInfoException paramList)
        {
          paramList.printStackTrace();
        }
      }
      paramList = new r(d.a(paramActivity), localArrayList2, (h)localObject2);
      processData.k = false;
      paramList.b(false);
      paramList.setCanHide(false);
      paramList.setDescription(String.format(paramActivity.getString(2131231286), new Object[] { com.estrongs.android.util.ap.cc(((h)localObject2).getAbsolutePath()) }));
      paramList.addTaskStatusChangeListener(new ba(paramActivity, localArrayList1));
      new jh(paramActivity, paramActivity.getString(2131232173), paramList).a(paramActivity.getString(2131232005), null).show();
      paramList.execute();
      return;
    }
    if (paramList.size() > 100)
    {
      ak.a(paramActivity, paramActivity.getString(2131232344), 0);
      return;
    }
    Object localObject1 = new Intent();
    ((Intent)localObject1).setAction("android.intent.action.SEND_MULTIPLE");
    ((Intent)localObject1).setType("*/*");
    if (a(paramList)) {
      ((Intent)localObject1).setType("image/*");
    }
    for (;;)
    {
      localObject2 = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        ((ArrayList)localObject2).add(Uri.fromFile(new File((String)paramList.next())));
      }
      if ((com.estrongs.android.pop.z.au) && (b(paramList))) {
        ((Intent)localObject1).setType("audio/*");
      }
    }
    ((Intent)localObject1).putParcelableArrayListExtra("android.intent.extra.STREAM", (ArrayList)localObject2);
    try
    {
      paramActivity.startActivity(Intent.createChooser((Intent)localObject1, paramActivity.getString(2131230893)));
      return;
    }
    catch (ActivityNotFoundException paramActivity)
    {
      paramActivity.printStackTrace();
      return;
    }
    catch (Exception paramActivity)
    {
      paramActivity.printStackTrace();
    }
  }
  
  private static boolean b(List<String> paramList)
  {
    int i = 0;
    while (i < paramList.size())
    {
      if (!com.estrongs.android.util.bg.g((String)paramList.get(i))) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private static int c(h paramh)
  {
    String[] arrayOfString = new File(paramh.getAbsolutePath()).list(new az());
    if (arrayOfString == null) {}
    for (int i = 0;; i = arrayOfString.length)
    {
      paramh.putExtra("item_count", Integer.valueOf(i));
      return i;
    }
  }
  
  public static void c(Activity paramActivity, List<h> paramList)
  {
    u localu = u.a();
    if (localu.b())
    {
      a(paramActivity, localu, paramList);
      return;
    }
    a(paramActivity, new bl(paramActivity, localu, paramList), paramActivity.getString(2131231410)).a(null);
  }
  
  private static void c(Activity paramActivity, List<h> paramList, h paramh, boolean paramBoolean)
  {
    aq localaq = new aq(d.a(paramActivity), paramList, paramh);
    localaq.addPostListener(new bs(localaq, paramActivity, paramh, paramList));
    localaq.b(paramBoolean);
    localaq.setDescription(String.format(paramActivity.getString(2131231733), new Object[] { com.estrongs.android.util.ap.cc(paramh.getAbsolutePath()) }));
    localaq.a(true);
    new jh(paramActivity, paramActivity.getString(2131232184), localaq).show();
    localaq.execute();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */