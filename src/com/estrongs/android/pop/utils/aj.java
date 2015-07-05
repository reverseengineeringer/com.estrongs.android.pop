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
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.by;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.dialog.dj;
import com.estrongs.android.ui.dialog.eo;
import com.estrongs.android.ui.dialog.ix;
import com.estrongs.android.ui.pcs.n;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.android.widget.g;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.a.b;
import com.estrongs.fs.b.y;
import com.estrongs.fs.d;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.f;
import com.estrongs.fs.m;
import com.estrongs.fs.o;
import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class aj
{
  public static int a(h paramh)
  {
    File localFile = new File(paramh.getAbsolutePath());
    String[] arrayOfString = localFile.list();
    if (arrayOfString == null) {}
    for (int i = 0;; i = arrayOfString.length)
    {
      paramh.putExtra("child_count", Integer.valueOf(i));
      if ((paramh instanceof f)) {
        ((f)paramh).a(localFile.lastModified());
      }
      return i;
    }
  }
  
  public static ct a(Activity paramActivity, n paramn)
  {
    return a(paramActivity, paramn, null);
  }
  
  public static ct a(Activity paramActivity, n paramn, String paramString)
  {
    Boolean[] arrayOfBoolean = new Boolean[1];
    arrayOfBoolean[0] = Boolean.valueOf(true);
    az localaz = new az(paramActivity, paramn, arrayOfBoolean);
    ba localba = new ba(paramActivity, paramn, arrayOfBoolean);
    bb localbb = new bb(paramActivity, paramn, arrayOfBoolean);
    paramn = paramString;
    if (paramString == null) {
      paramn = paramActivity.getString(2131428332);
    }
    if (ad.a(paramActivity).a(0L) != null) {}
    for (paramn = new ct(paramActivity).a(paramn).b(2131428595).d(2131427901, localba).e(2131428554, localbb).f(2131428201, localaz);; paramn = new ct(paramActivity).a(paramn).b(2131428595).c(2131427901, localba).b(2131428201, localaz))
    {
      paramn.a(new bc(arrayOfBoolean, paramActivity));
      paramn.c();
      paramActivity = com.estrongs.android.util.a.a();
      if (paramActivity != null) {
        paramActivity.e("PCS_Home_Page_UV", "PCS_Home_Page_UV");
      }
      return paramn;
    }
  }
  
  private static File a()
  {
    File localFile = new File(com.estrongs.android.pop.a.i);
    if (!localFile.exists()) {
      localFile.mkdirs();
    }
    return localFile;
  }
  
  public static void a(Activity paramActivity, h paramh)
  {
    String str = null;
    if ((paramActivity instanceof FileExplorerActivity)) {
      str = ((FileExplorerActivity)paramActivity).z();
    }
    if (am.aV(str))
    {
      ag.a(paramActivity, 2131427758, 1);
      return;
    }
    eo localeo = new eo(paramActivity, paramActivity.getString(2131427355), paramh.getName());
    localeo.a(new ak(paramh, paramActivity, str));
    localeo.b(paramh.getFileType().b());
    localeo.a(true);
    localeo.show();
  }
  
  @TargetApi(11)
  public static void a(Activity paramActivity, String paramString)
  {
    a(paramActivity, paramString, null);
  }
  
  public static void a(Activity paramActivity, String paramString, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    paramString = am.bM(paramString);
    com.estrongs.android.ui.pcs.r localr = com.estrongs.android.ui.pcs.r.a();
    if ((am.aB(paramString)) && (!localr.b())) {
      return;
    }
    try
    {
      new by(paramActivity, paramString, paramOnDismissListener).a();
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
    //   5: invokevirtual 239	java/lang/String:length	()I
    //   8: ifne +4 -> 12
    //   11: return
    //   12: aload_1
    //   13: invokestatic 242	com/estrongs/android/util/am:bb	(Ljava/lang/String;)Z
    //   16: ifne +10 -> 26
    //   19: aload_1
    //   20: invokestatic 245	com/estrongs/android/util/am:t	(Ljava/lang/String;)Z
    //   23: ifeq +422 -> 445
    //   26: aload_1
    //   27: invokestatic 250	com/estrongs/fs/impl/j/b:o	(Ljava/lang/String;)Z
    //   30: ifeq +97 -> 127
    //   33: aload_1
    //   34: invokestatic 219	com/estrongs/android/util/am:aB	(Ljava/lang/String;)Z
    //   37: ifeq +84 -> 121
    //   40: invokestatic 216	com/estrongs/android/ui/pcs/r:a	()Lcom/estrongs/android/ui/pcs/r;
    //   43: invokevirtual 220	com/estrongs/android/ui/pcs/r:b	()Z
    //   46: ifne +75 -> 121
    //   49: new 252	com/estrongs/android/pop/utils/at
    //   52: dup
    //   53: aload_0
    //   54: aload_1
    //   55: invokespecial 254	com/estrongs/android/pop/utils/at:<init>	(Landroid/app/Activity;Ljava/lang/String;)V
    //   58: astore_2
    //   59: ldc_w 256
    //   62: aload_1
    //   63: invokestatic 259	com/estrongs/android/util/am:y	(Ljava/lang/String;)Ljava/lang/String;
    //   66: invokevirtual 263	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   69: ifeq +33 -> 102
    //   72: aload_0
    //   73: invokestatic 76	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   76: lconst_0
    //   77: invokevirtual 79	com/estrongs/android/pop/ad:a	(J)Ljava/lang/String;
    //   80: ifnull +22 -> 102
    //   83: new 265	com/estrongs/android/ui/pcs/a
    //   86: dup
    //   87: aload_0
    //   88: invokespecial 266	com/estrongs/android/ui/pcs/a:<init>	(Landroid/content/Context;)V
    //   91: astore_0
    //   92: aload_0
    //   93: aload_2
    //   94: invokevirtual 269	com/estrongs/android/ui/pcs/a:a	(Lcom/estrongs/android/ui/pcs/n;)V
    //   97: aload_0
    //   98: invokevirtual 270	com/estrongs/android/ui/pcs/a:a	()V
    //   101: return
    //   102: new 272	com/estrongs/android/ui/pcs/j
    //   105: dup
    //   106: aload_0
    //   107: invokespecial 273	com/estrongs/android/ui/pcs/j:<init>	(Landroid/content/Context;)V
    //   110: astore_0
    //   111: aload_0
    //   112: aload_2
    //   113: invokevirtual 274	com/estrongs/android/ui/pcs/j:a	(Lcom/estrongs/android/ui/pcs/n;)V
    //   116: aload_0
    //   117: invokevirtual 275	com/estrongs/android/ui/pcs/j:show	()V
    //   120: return
    //   121: aload_0
    //   122: aload_1
    //   123: invokestatic 277	com/estrongs/android/pop/utils/aj:b	(Landroid/app/Activity;Ljava/lang/String;)V
    //   126: return
    //   127: aload_0
    //   128: invokestatic 282	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   131: aload_1
    //   132: invokevirtual 286	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   135: astore 7
    //   137: aload 7
    //   139: invokeinterface 169 1 0
    //   144: ldc_w 288
    //   147: ldc_w 290
    //   150: invokevirtual 294	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   153: invokevirtual 297	java/lang/String:trim	()Ljava/lang/String;
    //   156: astore 6
    //   158: ldc_w 299
    //   161: aload 6
    //   163: invokevirtual 263	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   166: ifne +15 -> 181
    //   169: aload 6
    //   171: astore 5
    //   173: aload 6
    //   175: invokestatic 303	com/estrongs/fs/util/j:f	(Ljava/lang/String;)Z
    //   178: ifne +48 -> 226
    //   181: new 305	java/text/SimpleDateFormat
    //   184: dup
    //   185: ldc_w 307
    //   188: invokespecial 308	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   191: astore 5
    //   193: new 310	java/lang/StringBuilder
    //   196: dup
    //   197: invokespecial 312	java/lang/StringBuilder:<init>	()V
    //   200: ldc_w 314
    //   203: invokevirtual 318	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: aload 5
    //   208: new 320	java/util/Date
    //   211: dup
    //   212: invokespecial 321	java/util/Date:<init>	()V
    //   215: invokevirtual 327	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   218: invokevirtual 318	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: invokevirtual 330	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   224: astore 5
    //   226: aload 5
    //   228: astore 6
    //   230: aload_1
    //   231: invokestatic 333	com/estrongs/android/util/am:aG	(Ljava/lang/String;)Z
    //   234: ifeq +33 -> 267
    //   237: new 310	java/lang/StringBuilder
    //   240: dup
    //   241: invokespecial 312	java/lang/StringBuilder:<init>	()V
    //   244: aload 5
    //   246: invokevirtual 318	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   249: aload 7
    //   251: invokeinterface 336 1 0
    //   256: invokestatic 341	com/estrongs/android/pop/spfs/PhotoInfoManager:getPhotoExtension	(Ljava/lang/String;)Ljava/lang/String;
    //   259: invokevirtual 318	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: invokevirtual 330	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   265: astore 6
    //   267: aload 6
    //   269: astore_1
    //   270: aload_2
    //   271: invokestatic 346	com/estrongs/android/util/bd:b	(Ljava/lang/CharSequence;)Z
    //   274: ifeq +18 -> 292
    //   277: aload 6
    //   279: aload_2
    //   280: invokestatic 348	com/estrongs/android/util/am:j	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   283: astore_1
    //   284: aload 7
    //   286: aload_1
    //   287: invokeinterface 351 2 0
    //   292: aload 7
    //   294: ldc_w 353
    //   297: aload_1
    //   298: invokeinterface 34 3 0
    //   303: pop
    //   304: aload_0
    //   305: invokestatic 282	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   308: invokestatic 355	com/estrongs/android/pop/utils/aj:a	()Ljava/io/File;
    //   311: invokevirtual 356	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   314: invokevirtual 286	com/estrongs/fs/d:j	(Ljava/lang/String;)Lcom/estrongs/fs/h;
    //   317: astore_1
    //   318: new 358	com/estrongs/fs/b/r
    //   321: dup
    //   322: aload_0
    //   323: invokestatic 282	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   326: aload 7
    //   328: aload_1
    //   329: invokespecial 361	com/estrongs/fs/b/r:<init>	(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V
    //   332: astore_2
    //   333: aload_2
    //   334: iconst_0
    //   335: invokevirtual 363	com/estrongs/fs/b/r:c	(Z)V
    //   338: aload_2
    //   339: getfield 367	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   342: iconst_0
    //   343: putfield 373	com/estrongs/a/a/m:k	Z
    //   346: aload_2
    //   347: iconst_0
    //   348: invokevirtual 374	com/estrongs/fs/b/r:b	(Z)V
    //   351: aload_2
    //   352: iconst_0
    //   353: invokevirtual 377	com/estrongs/fs/b/r:setCanHide	(Z)V
    //   356: aload_2
    //   357: aload_0
    //   358: ldc_w 378
    //   361: invokevirtual 71	android/app/Activity:getString	(I)Ljava/lang/String;
    //   364: iconst_1
    //   365: anewarray 4	java/lang/Object
    //   368: dup
    //   369: iconst_0
    //   370: aload_1
    //   371: invokeinterface 14 1 0
    //   376: invokestatic 381	com/estrongs/android/util/am:bL	(Ljava/lang/String;)Ljava/lang/String;
    //   379: aastore
    //   380: invokestatic 384	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   383: invokevirtual 387	com/estrongs/fs/b/r:setDescription	(Ljava/lang/String;)V
    //   386: aload_2
    //   387: new 389	com/estrongs/android/pop/utils/au
    //   390: dup
    //   391: aload_0
    //   392: aload_1
    //   393: aload 7
    //   395: invokespecial 392	com/estrongs/android/pop/utils/au:<init>	(Landroid/app/Activity;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V
    //   398: invokevirtual 396	com/estrongs/fs/b/r:addTaskStatusChangeListener	(Lcom/estrongs/a/a/p;)V
    //   401: new 398	com/estrongs/android/pop/utils/av
    //   404: dup
    //   405: aload_0
    //   406: aload_0
    //   407: ldc_w 399
    //   410: invokevirtual 71	android/app/Activity:getString	(I)Ljava/lang/String;
    //   413: aload_2
    //   414: iconst_0
    //   415: invokespecial 402	com/estrongs/android/pop/utils/av:<init>	(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Z)V
    //   418: aload_0
    //   419: ldc_w 403
    //   422: invokevirtual 71	android/app/Activity:getString	(I)Ljava/lang/String;
    //   425: aconst_null
    //   426: invokevirtual 406	com/estrongs/android/pop/utils/av:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/ix;
    //   429: invokevirtual 409	com/estrongs/android/ui/dialog/ix:show	()V
    //   432: aload_2
    //   433: invokevirtual 412	com/estrongs/fs/b/r:execute	()V
    //   436: return
    //   437: astore_1
    //   438: aload_1
    //   439: invokevirtual 413	com/estrongs/android/pop/spfs/PhotoInfoException:printStackTrace	()V
    //   442: goto -138 -> 304
    //   445: aload_1
    //   446: invokestatic 416	com/estrongs/android/util/am:bE	(Ljava/lang/String;)Ljava/lang/String;
    //   449: astore 12
    //   451: new 418	android/content/Intent
    //   454: dup
    //   455: invokespecial 419	android/content/Intent:<init>	()V
    //   458: astore 11
    //   460: aload 11
    //   462: ldc_w 421
    //   465: invokevirtual 425	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   468: pop
    //   469: new 8	java/io/File
    //   472: dup
    //   473: aload_1
    //   474: invokespecial 18	java/io/File:<init>	(Ljava/lang/String;)V
    //   477: invokestatic 431	android/net/Uri:fromFile	(Ljava/io/File;)Landroid/net/Uri;
    //   480: astore_1
    //   481: aload 12
    //   483: invokestatic 433	com/estrongs/fs/util/j:b	(Ljava/lang/String;)Ljava/lang/String;
    //   486: astore 13
    //   488: aconst_null
    //   489: astore 9
    //   491: aconst_null
    //   492: astore 8
    //   494: aconst_null
    //   495: astore 7
    //   497: aload 13
    //   499: invokestatic 435	com/estrongs/android/pop/utils/aj:a	(Ljava/lang/String;)Z
    //   502: ifne +1422 -> 1924
    //   505: aload 12
    //   507: invokestatic 440	com/estrongs/android/util/bc:b	(Ljava/lang/String;)I
    //   510: invokestatic 443	com/estrongs/android/util/bc:E	(I)Ljava/lang/String;
    //   513: astore 5
    //   515: aload 5
    //   517: astore_2
    //   518: aload 5
    //   520: ifnonnull +1401 -> 1921
    //   523: aload 12
    //   525: invokestatic 446	com/estrongs/android/util/bc:S	(Ljava/lang/String;)Ljava/lang/String;
    //   528: astore 5
    //   530: aload 5
    //   532: astore_2
    //   533: aload 5
    //   535: ifnull +1386 -> 1921
    //   538: aload 5
    //   540: astore_2
    //   541: aload 5
    //   543: ldc_w 448
    //   546: invokevirtual 263	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   549: ifeq +1372 -> 1921
    //   552: aconst_null
    //   553: astore_2
    //   554: aload_0
    //   555: invokevirtual 452	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   558: getstatic 458	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   561: iconst_1
    //   562: anewarray 235	java/lang/String
    //   565: dup
    //   566: iconst_0
    //   567: ldc_w 460
    //   570: aastore
    //   571: ldc_w 462
    //   574: iconst_1
    //   575: anewarray 235	java/lang/String
    //   578: dup
    //   579: iconst_0
    //   580: aload 12
    //   582: aastore
    //   583: aconst_null
    //   584: invokevirtual 468	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   587: astore 5
    //   589: aload 5
    //   591: ifnull +1323 -> 1914
    //   594: aload 5
    //   596: astore 6
    //   598: aload 5
    //   600: invokeinterface 473 1 0
    //   605: ifle +1309 -> 1914
    //   608: aload 5
    //   610: astore 6
    //   612: aload 5
    //   614: invokeinterface 476 1 0
    //   619: pop
    //   620: aload 5
    //   622: astore 6
    //   624: aload 5
    //   626: iconst_0
    //   627: invokeinterface 480 2 0
    //   632: istore_3
    //   633: aload 5
    //   635: astore 6
    //   637: getstatic 458	android/provider/MediaStore$Images$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   640: invokevirtual 481	android/net/Uri:toString	()Ljava/lang/String;
    //   643: astore 7
    //   645: aload 5
    //   647: astore 6
    //   649: new 310	java/lang/StringBuilder
    //   652: dup
    //   653: invokespecial 312	java/lang/StringBuilder:<init>	()V
    //   656: aload 7
    //   658: invokevirtual 318	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   661: ldc_w 483
    //   664: invokevirtual 318	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   667: iload_3
    //   668: invokevirtual 486	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   671: invokevirtual 330	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   674: invokestatic 490	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   677: astore 7
    //   679: aload 7
    //   681: astore_1
    //   682: aload_2
    //   683: ifnull +736 -> 1419
    //   686: aload 5
    //   688: astore 6
    //   690: aload_2
    //   691: ldc_w 492
    //   694: invokevirtual 495	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   697: istore 4
    //   699: iload 4
    //   701: ifeq +718 -> 1419
    //   704: aload_2
    //   705: astore 9
    //   707: aload_1
    //   708: astore 7
    //   710: aload 9
    //   712: astore 6
    //   714: aload 5
    //   716: ifnull +1187 -> 1903
    //   719: aload 5
    //   721: invokeinterface 498 1 0
    //   726: aload_1
    //   727: astore 5
    //   729: aload 5
    //   731: astore_1
    //   732: aload 9
    //   734: astore 6
    //   736: aload 9
    //   738: ifnonnull +195 -> 933
    //   741: aload_0
    //   742: invokevirtual 452	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   745: getstatic 501	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   748: iconst_1
    //   749: anewarray 235	java/lang/String
    //   752: dup
    //   753: iconst_0
    //   754: ldc_w 460
    //   757: aastore
    //   758: ldc_w 462
    //   761: iconst_1
    //   762: anewarray 235	java/lang/String
    //   765: dup
    //   766: iconst_0
    //   767: aload 12
    //   769: aastore
    //   770: aconst_null
    //   771: invokevirtual 468	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   774: astore 10
    //   776: aload 5
    //   778: astore 7
    //   780: aload 9
    //   782: astore 8
    //   784: aload 10
    //   786: ifnull +121 -> 907
    //   789: aload 5
    //   791: astore 7
    //   793: aload 9
    //   795: astore 8
    //   797: aload 10
    //   799: astore 6
    //   801: aload 10
    //   803: invokeinterface 473 1 0
    //   808: ifle +99 -> 907
    //   811: aload 10
    //   813: astore 6
    //   815: aload 10
    //   817: invokeinterface 476 1 0
    //   822: pop
    //   823: aload 10
    //   825: astore 6
    //   827: aload 10
    //   829: iconst_0
    //   830: invokeinterface 480 2 0
    //   835: istore_3
    //   836: aload 10
    //   838: astore 6
    //   840: getstatic 501	android/provider/MediaStore$Audio$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   843: invokevirtual 481	android/net/Uri:toString	()Ljava/lang/String;
    //   846: astore_1
    //   847: aload 10
    //   849: astore 6
    //   851: new 310	java/lang/StringBuilder
    //   854: dup
    //   855: invokespecial 312	java/lang/StringBuilder:<init>	()V
    //   858: aload_1
    //   859: invokevirtual 318	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   862: ldc_w 483
    //   865: invokevirtual 318	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   868: iload_3
    //   869: invokevirtual 486	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   872: invokevirtual 330	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   875: invokestatic 490	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   878: astore_1
    //   879: aload_2
    //   880: ifnull +604 -> 1484
    //   883: aload 10
    //   885: astore 6
    //   887: aload_2
    //   888: ldc_w 503
    //   891: invokevirtual 495	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   894: istore 4
    //   896: iload 4
    //   898: ifeq +586 -> 1484
    //   901: aload_2
    //   902: astore 8
    //   904: aload_1
    //   905: astore 7
    //   907: aload 7
    //   909: astore_1
    //   910: aload 8
    //   912: astore 6
    //   914: aload 10
    //   916: ifnull +17 -> 933
    //   919: aload 10
    //   921: invokeinterface 498 1 0
    //   926: aload 8
    //   928: astore 6
    //   930: aload 7
    //   932: astore_1
    //   933: aload 6
    //   935: ifnonnull +952 -> 1887
    //   938: aload_0
    //   939: invokevirtual 452	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   942: getstatic 506	android/provider/MediaStore$Video$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   945: iconst_1
    //   946: anewarray 235	java/lang/String
    //   949: dup
    //   950: iconst_0
    //   951: ldc_w 460
    //   954: aastore
    //   955: ldc_w 462
    //   958: iconst_1
    //   959: anewarray 235	java/lang/String
    //   962: dup
    //   963: iconst_0
    //   964: aload 12
    //   966: aastore
    //   967: aconst_null
    //   968: invokevirtual 468	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   971: astore 7
    //   973: aload 7
    //   975: ifnull +903 -> 1878
    //   978: aload 7
    //   980: astore 5
    //   982: aload 7
    //   984: invokeinterface 473 1 0
    //   989: ifle +889 -> 1878
    //   992: aload 7
    //   994: astore 5
    //   996: aload 7
    //   998: invokeinterface 476 1 0
    //   1003: pop
    //   1004: aload 7
    //   1006: astore 5
    //   1008: aload 7
    //   1010: iconst_0
    //   1011: invokeinterface 480 2 0
    //   1016: istore_3
    //   1017: aload 7
    //   1019: astore 5
    //   1021: getstatic 506	android/provider/MediaStore$Video$Media:EXTERNAL_CONTENT_URI	Landroid/net/Uri;
    //   1024: invokevirtual 481	android/net/Uri:toString	()Ljava/lang/String;
    //   1027: astore 8
    //   1029: aload 7
    //   1031: astore 5
    //   1033: new 310	java/lang/StringBuilder
    //   1036: dup
    //   1037: invokespecial 312	java/lang/StringBuilder:<init>	()V
    //   1040: aload 8
    //   1042: invokevirtual 318	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1045: ldc_w 483
    //   1048: invokevirtual 318	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1051: iload_3
    //   1052: invokevirtual 486	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1055: invokevirtual 330	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1058: invokestatic 490	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   1061: astore 8
    //   1063: aload_2
    //   1064: ifnull +541 -> 1605
    //   1067: aload 7
    //   1069: astore 5
    //   1071: aload_2
    //   1072: ldc_w 508
    //   1075: invokevirtual 495	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1078: istore 4
    //   1080: iload 4
    //   1082: ifeq +523 -> 1605
    //   1085: aload_2
    //   1086: astore_1
    //   1087: aload 8
    //   1089: astore 5
    //   1091: aload 7
    //   1093: ifnull +782 -> 1875
    //   1096: aload 7
    //   1098: invokeinterface 498 1 0
    //   1103: aload_1
    //   1104: ifnonnull +759 -> 1863
    //   1107: invokestatic 512	com/estrongs/android/pop/ac:a	()I
    //   1110: bipush 11
    //   1112: if_icmplt +751 -> 1863
    //   1115: aconst_null
    //   1116: astore 6
    //   1118: aload_0
    //   1119: invokevirtual 452	android/app/Activity:getContentResolver	()Landroid/content/ContentResolver;
    //   1122: ldc_w 514
    //   1125: invokestatic 519	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   1128: iconst_2
    //   1129: anewarray 235	java/lang/String
    //   1132: dup
    //   1133: iconst_0
    //   1134: ldc_w 460
    //   1137: aastore
    //   1138: dup
    //   1139: iconst_1
    //   1140: ldc_w 521
    //   1143: aastore
    //   1144: ldc_w 462
    //   1147: iconst_1
    //   1148: anewarray 235	java/lang/String
    //   1151: dup
    //   1152: iconst_0
    //   1153: aload 12
    //   1155: aastore
    //   1156: aconst_null
    //   1157: invokevirtual 468	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   1160: astore 7
    //   1162: aload 7
    //   1164: astore 6
    //   1166: aload 6
    //   1168: ifnull +692 -> 1860
    //   1171: aload 6
    //   1173: astore 7
    //   1175: aload 6
    //   1177: invokeinterface 473 1 0
    //   1182: ifle +678 -> 1860
    //   1185: aload 6
    //   1187: astore 7
    //   1189: aload 6
    //   1191: invokeinterface 476 1 0
    //   1196: pop
    //   1197: aload 6
    //   1199: astore 7
    //   1201: aload 6
    //   1203: iconst_0
    //   1204: invokeinterface 480 2 0
    //   1209: pop
    //   1210: aload 6
    //   1212: astore 7
    //   1214: aload 6
    //   1216: iconst_1
    //   1217: invokeinterface 522 2 0
    //   1222: astore 8
    //   1224: aload 8
    //   1226: astore_1
    //   1227: aload 6
    //   1229: astore 7
    //   1231: ldc_w 514
    //   1234: invokestatic 519	android/provider/MediaStore$Files:getContentUri	(Ljava/lang/String;)Landroid/net/Uri;
    //   1237: invokevirtual 481	android/net/Uri:toString	()Ljava/lang/String;
    //   1240: pop
    //   1241: aload_1
    //   1242: astore 7
    //   1244: aload 6
    //   1246: ifnull +608 -> 1854
    //   1249: aload 6
    //   1251: invokeinterface 498 1 0
    //   1256: aload_1
    //   1257: astore 6
    //   1259: aload_1
    //   1260: ifnonnull +6 -> 1266
    //   1263: aload_2
    //   1264: astore 6
    //   1266: aload 6
    //   1268: astore_1
    //   1269: aload 6
    //   1271: ifnonnull +9 -> 1280
    //   1274: aload 12
    //   1276: invokestatic 523	com/estrongs/android/pop/utils/aj:b	(Ljava/lang/String;)Ljava/lang/String;
    //   1279: astore_1
    //   1280: aload_1
    //   1281: ifnull +10 -> 1291
    //   1284: aload 11
    //   1286: aload_1
    //   1287: invokevirtual 526	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   1290: pop
    //   1291: aload 11
    //   1293: ldc_w 528
    //   1296: aload 5
    //   1298: invokevirtual 531	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   1301: pop
    //   1302: aload_0
    //   1303: invokevirtual 535	android/app/Activity:getPackageManager	()Landroid/content/pm/PackageManager;
    //   1306: aload 11
    //   1308: iconst_0
    //   1309: invokevirtual 541	android/content/pm/PackageManager:queryIntentActivities	(Landroid/content/Intent;I)Ljava/util/List;
    //   1312: astore_1
    //   1313: aload_1
    //   1314: ifnull +535 -> 1849
    //   1317: iconst_0
    //   1318: istore_3
    //   1319: iload_3
    //   1320: aload_1
    //   1321: invokeinterface 546 1 0
    //   1326: if_icmpge +523 -> 1849
    //   1329: aload_1
    //   1330: iload_3
    //   1331: invokeinterface 550 2 0
    //   1336: checkcast 552	android/content/pm/ResolveInfo
    //   1339: getfield 556	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   1342: getfield 562	android/content/pm/ActivityInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   1345: getfield 567	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   1348: invokevirtual 570	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1351: ldc_w 572
    //   1354: invokevirtual 575	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   1357: iconst_m1
    //   1358: if_icmpeq +359 -> 1717
    //   1361: iconst_1
    //   1362: istore_3
    //   1363: iload_3
    //   1364: ifne +32 -> 1396
    //   1367: aload 11
    //   1369: invokevirtual 578	android/content/Intent:getType	()Ljava/lang/String;
    //   1372: astore_1
    //   1373: aload_1
    //   1374: ifnull +22 -> 1396
    //   1377: aload_1
    //   1378: ldc_w 492
    //   1381: invokevirtual 495	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1384: ifeq +340 -> 1724
    //   1387: aload 11
    //   1389: ldc_w 580
    //   1392: invokevirtual 526	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   1395: pop
    //   1396: aload_0
    //   1397: aload 11
    //   1399: aload_0
    //   1400: ldc_w 581
    //   1403: invokevirtual 71	android/app/Activity:getString	(I)Ljava/lang/String;
    //   1406: invokestatic 585	android/content/Intent:createChooser	(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    //   1409: invokevirtual 589	android/app/Activity:startActivity	(Landroid/content/Intent;)V
    //   1412: return
    //   1413: astore_0
    //   1414: aload_0
    //   1415: invokevirtual 590	android/content/ActivityNotFoundException:printStackTrace	()V
    //   1418: return
    //   1419: ldc_w 580
    //   1422: astore 9
    //   1424: goto -717 -> 707
    //   1427: astore 7
    //   1429: aconst_null
    //   1430: astore 5
    //   1432: aload 5
    //   1434: astore 6
    //   1436: aload 7
    //   1438: invokevirtual 229	java/lang/Exception:printStackTrace	()V
    //   1441: aload_1
    //   1442: astore 7
    //   1444: aload 8
    //   1446: astore 6
    //   1448: aload 5
    //   1450: ifnull +453 -> 1903
    //   1453: aload 5
    //   1455: invokeinterface 498 1 0
    //   1460: aload_1
    //   1461: astore 5
    //   1463: goto -734 -> 729
    //   1466: astore_0
    //   1467: aconst_null
    //   1468: astore 6
    //   1470: aload 6
    //   1472: ifnull +10 -> 1482
    //   1475: aload 6
    //   1477: invokeinterface 498 1 0
    //   1482: aload_0
    //   1483: athrow
    //   1484: aload 10
    //   1486: astore 6
    //   1488: aload 13
    //   1490: ldc_w 592
    //   1493: invokevirtual 595	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1496: ifeq +14 -> 1510
    //   1499: ldc_w 597
    //   1502: astore 8
    //   1504: aload_1
    //   1505: astore 7
    //   1507: goto -600 -> 907
    //   1510: aload 10
    //   1512: astore 6
    //   1514: aload 13
    //   1516: ldc_w 599
    //   1519: invokevirtual 595	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1522: ifeq +14 -> 1536
    //   1525: ldc_w 601
    //   1528: astore 8
    //   1530: aload_1
    //   1531: astore 7
    //   1533: goto -626 -> 907
    //   1536: ldc_w 603
    //   1539: astore 8
    //   1541: aload_1
    //   1542: astore 7
    //   1544: goto -637 -> 907
    //   1547: astore 6
    //   1549: aconst_null
    //   1550: astore 10
    //   1552: aload 5
    //   1554: astore_1
    //   1555: aload 6
    //   1557: astore 5
    //   1559: aload 10
    //   1561: astore 6
    //   1563: aload 5
    //   1565: invokevirtual 229	java/lang/Exception:printStackTrace	()V
    //   1568: aload 10
    //   1570: ifnull +326 -> 1896
    //   1573: aload 10
    //   1575: invokeinterface 498 1 0
    //   1580: aload 9
    //   1582: astore 6
    //   1584: goto -651 -> 933
    //   1587: astore_0
    //   1588: aconst_null
    //   1589: astore 6
    //   1591: aload 6
    //   1593: ifnull +10 -> 1603
    //   1596: aload 6
    //   1598: invokeinterface 498 1 0
    //   1603: aload_0
    //   1604: athrow
    //   1605: ldc_w 605
    //   1608: astore_1
    //   1609: aload 8
    //   1611: astore 5
    //   1613: goto -522 -> 1091
    //   1616: astore 9
    //   1618: aconst_null
    //   1619: astore 7
    //   1621: aload 7
    //   1623: astore 5
    //   1625: aload 9
    //   1627: invokevirtual 229	java/lang/Exception:printStackTrace	()V
    //   1630: aload 7
    //   1632: ifnull +234 -> 1866
    //   1635: aload 7
    //   1637: invokeinterface 498 1 0
    //   1642: aload_1
    //   1643: astore 5
    //   1645: aload 6
    //   1647: astore_1
    //   1648: goto -545 -> 1103
    //   1651: astore_0
    //   1652: aconst_null
    //   1653: astore 5
    //   1655: aload 5
    //   1657: ifnull +10 -> 1667
    //   1660: aload 5
    //   1662: invokeinterface 498 1 0
    //   1667: aload_0
    //   1668: athrow
    //   1669: astore 8
    //   1671: aconst_null
    //   1672: astore 6
    //   1674: aload 6
    //   1676: astore 7
    //   1678: aload 8
    //   1680: invokevirtual 229	java/lang/Exception:printStackTrace	()V
    //   1683: aload_1
    //   1684: astore 7
    //   1686: aload 6
    //   1688: ifnull +166 -> 1854
    //   1691: aload 6
    //   1693: invokeinterface 498 1 0
    //   1698: goto -442 -> 1256
    //   1701: astore_0
    //   1702: aload 6
    //   1704: astore_1
    //   1705: aload_1
    //   1706: ifnull +9 -> 1715
    //   1709: aload_1
    //   1710: invokeinterface 498 1 0
    //   1715: aload_0
    //   1716: athrow
    //   1717: iload_3
    //   1718: iconst_1
    //   1719: iadd
    //   1720: istore_3
    //   1721: goto -402 -> 1319
    //   1724: aload_1
    //   1725: ldc_w 503
    //   1728: invokevirtual 495	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1731: ifeq +15 -> 1746
    //   1734: aload 11
    //   1736: ldc_w 603
    //   1739: invokevirtual 526	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   1742: pop
    //   1743: goto -347 -> 1396
    //   1746: aload_1
    //   1747: ldc_w 508
    //   1750: invokevirtual 495	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1753: ifeq +15 -> 1768
    //   1756: aload 11
    //   1758: ldc_w 605
    //   1761: invokevirtual 526	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   1764: pop
    //   1765: goto -369 -> 1396
    //   1768: aload 11
    //   1770: ldc_w 607
    //   1773: invokevirtual 526	android/content/Intent:setType	(Ljava/lang/String;)Landroid/content/Intent;
    //   1776: pop
    //   1777: goto -381 -> 1396
    //   1780: astore_0
    //   1781: aload 7
    //   1783: astore_1
    //   1784: goto -79 -> 1705
    //   1787: astore 8
    //   1789: goto -115 -> 1674
    //   1792: astore 8
    //   1794: goto -120 -> 1674
    //   1797: astore_0
    //   1798: goto -143 -> 1655
    //   1801: astore 9
    //   1803: goto -182 -> 1621
    //   1806: astore 9
    //   1808: aload 8
    //   1810: astore_1
    //   1811: goto -190 -> 1621
    //   1814: astore_0
    //   1815: goto -224 -> 1591
    //   1818: astore 6
    //   1820: aload 5
    //   1822: astore_1
    //   1823: aload 6
    //   1825: astore 5
    //   1827: goto -268 -> 1559
    //   1830: astore 5
    //   1832: goto -273 -> 1559
    //   1835: astore_0
    //   1836: goto -366 -> 1470
    //   1839: astore 7
    //   1841: goto -409 -> 1432
    //   1844: astore 7
    //   1846: goto -414 -> 1432
    //   1849: iconst_0
    //   1850: istore_3
    //   1851: goto -488 -> 1363
    //   1854: aload 7
    //   1856: astore_1
    //   1857: goto -601 -> 1256
    //   1860: goto -619 -> 1241
    //   1863: goto -607 -> 1256
    //   1866: aload_1
    //   1867: astore 5
    //   1869: aload 6
    //   1871: astore_1
    //   1872: goto -769 -> 1103
    //   1875: goto -772 -> 1103
    //   1878: aload_1
    //   1879: astore 5
    //   1881: aload 6
    //   1883: astore_1
    //   1884: goto -793 -> 1091
    //   1887: aload_1
    //   1888: astore 5
    //   1890: aload 6
    //   1892: astore_1
    //   1893: goto -790 -> 1103
    //   1896: aload 9
    //   1898: astore 6
    //   1900: goto -967 -> 933
    //   1903: aload 7
    //   1905: astore 5
    //   1907: aload 6
    //   1909: astore 9
    //   1911: goto -1182 -> 729
    //   1914: aload 7
    //   1916: astore 9
    //   1918: goto -1211 -> 707
    //   1921: goto -1367 -> 554
    //   1924: aconst_null
    //   1925: astore_2
    //   1926: goto -1372 -> 554
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1929	0	paramActivity	Activity
    //   0	1929	1	paramString1	String
    //   0	1929	2	paramString2	String
    //   632	1219	3	i	int
    //   697	384	4	bool	boolean
    //   171	1655	5	localObject1	Object
    //   1830	1	5	localException1	Exception
    //   1867	39	5	localObject2	Object
    //   156	1357	6	localObject3	Object
    //   1547	9	6	localException2	Exception
    //   1561	142	6	localObject4	Object
    //   1818	73	6	localException3	Exception
    //   1898	10	6	localObject5	Object
    //   135	1108	7	localObject6	Object
    //   1427	10	7	localException4	Exception
    //   1442	340	7	localObject7	Object
    //   1839	1	7	localException5	Exception
    //   1844	71	7	localException6	Exception
    //   492	1118	8	localObject8	Object
    //   1669	10	8	localException7	Exception
    //   1787	1	8	localException8	Exception
    //   1792	17	8	localException9	Exception
    //   489	1092	9	str1	String
    //   1616	10	9	localException10	Exception
    //   1801	1	9	localException11	Exception
    //   1806	91	9	localException12	Exception
    //   1909	8	9	localObject9	Object
    //   774	800	10	localCursor	android.database.Cursor
    //   458	1311	11	localIntent	Intent
    //   449	826	12	str2	String
    //   486	1029	13	str3	String
    // Exception table:
    //   from	to	target	type
    //   137	169	437	com/estrongs/android/pop/spfs/PhotoInfoException
    //   173	181	437	com/estrongs/android/pop/spfs/PhotoInfoException
    //   181	226	437	com/estrongs/android/pop/spfs/PhotoInfoException
    //   230	267	437	com/estrongs/android/pop/spfs/PhotoInfoException
    //   270	292	437	com/estrongs/android/pop/spfs/PhotoInfoException
    //   292	304	437	com/estrongs/android/pop/spfs/PhotoInfoException
    //   1396	1412	1413	android/content/ActivityNotFoundException
    //   554	589	1427	java/lang/Exception
    //   554	589	1466	finally
    //   741	776	1547	java/lang/Exception
    //   741	776	1587	finally
    //   938	973	1616	java/lang/Exception
    //   938	973	1651	finally
    //   1118	1162	1669	java/lang/Exception
    //   1118	1162	1701	finally
    //   1175	1185	1780	finally
    //   1189	1197	1780	finally
    //   1201	1210	1780	finally
    //   1214	1224	1780	finally
    //   1231	1241	1780	finally
    //   1678	1683	1780	finally
    //   1175	1185	1787	java/lang/Exception
    //   1189	1197	1787	java/lang/Exception
    //   1201	1210	1787	java/lang/Exception
    //   1214	1224	1787	java/lang/Exception
    //   1231	1241	1792	java/lang/Exception
    //   982	992	1797	finally
    //   996	1004	1797	finally
    //   1008	1017	1797	finally
    //   1021	1029	1797	finally
    //   1033	1063	1797	finally
    //   1071	1080	1797	finally
    //   1625	1630	1797	finally
    //   982	992	1801	java/lang/Exception
    //   996	1004	1801	java/lang/Exception
    //   1008	1017	1801	java/lang/Exception
    //   1021	1029	1801	java/lang/Exception
    //   1033	1063	1801	java/lang/Exception
    //   1071	1080	1806	java/lang/Exception
    //   801	811	1814	finally
    //   815	823	1814	finally
    //   827	836	1814	finally
    //   840	847	1814	finally
    //   851	879	1814	finally
    //   887	896	1814	finally
    //   1488	1499	1814	finally
    //   1514	1525	1814	finally
    //   1563	1568	1814	finally
    //   801	811	1818	java/lang/Exception
    //   815	823	1818	java/lang/Exception
    //   827	836	1818	java/lang/Exception
    //   840	847	1818	java/lang/Exception
    //   851	879	1818	java/lang/Exception
    //   887	896	1830	java/lang/Exception
    //   1488	1499	1830	java/lang/Exception
    //   1514	1525	1830	java/lang/Exception
    //   598	608	1835	finally
    //   612	620	1835	finally
    //   624	633	1835	finally
    //   637	645	1835	finally
    //   649	679	1835	finally
    //   690	699	1835	finally
    //   1436	1441	1835	finally
    //   598	608	1839	java/lang/Exception
    //   612	620	1839	java/lang/Exception
    //   624	633	1839	java/lang/Exception
    //   637	645	1839	java/lang/Exception
    //   649	679	1839	java/lang/Exception
    //   690	699	1844	java/lang/Exception
  }
  
  public static void a(Activity paramActivity, List<h> paramList)
  {
    if ((!com.estrongs.android.ui.pcs.r.a().b()) || (com.estrongs.android.ui.pcs.r.a().c()))
    {
      a(paramActivity);
      return;
    }
    g localg = new g(paramActivity, String.format("pcs://%1s@pcs/files/", new Object[] { com.estrongs.android.ui.pcs.r.a().e() }), new an(), 16);
    localg.b(paramActivity.getString(2131427339), new ao(paramActivity, paramList, localg));
    localg.c(paramActivity.getString(2131427340), (DialogInterface.OnClickListener)null);
    localg.a(paramActivity.getString(2131428701));
    localg.j();
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
    com.estrongs.fs.b.r localr;
    if (paramBoolean1)
    {
      if ((am.bQ(paramh.getAbsolutePath())) || ((am.bQ(((h)paramList.get(0)).getAbsolutePath())) && (!am.aB(paramh.getAbsolutePath()))))
      {
        ag.a(paramActivity, 2131428090, 0);
        return;
      }
      localr = new com.estrongs.fs.b.r(d.a(paramActivity), paramList, paramh);
      localr.b(paramBoolean2);
      localr.setDescription(String.format(paramActivity.getString(2131428031), new Object[] { am.bL(paramh.getAbsolutePath()) }));
      localr.a(true);
      if (paramp != null) {
        localr.addTaskStatusChangeListener(paramp);
      }
      localr.addTaskStatusChangeListener(new bg(paramActivity, ((FileExplorerActivity)paramActivity).y(), paramh));
      paramh = paramActivity.getString(2131427460);
      if (!am.bQ(((h)paramList.get(0)).getAbsolutePath())) {
        break label308;
      }
    }
    label308:
    for (paramList = paramActivity.getString(2131428701);; paramList = paramh)
    {
      new ix(paramActivity, paramList, localr).show();
      localr.execute();
      return;
      if (am.az(paramh.getPath()))
      {
        if (com.estrongs.android.ui.pcs.r.a().b())
        {
          c(paramActivity, paramList, paramh, paramBoolean2);
          return;
        }
        paramList = new bi(paramActivity, paramList, paramh, paramBoolean2);
        if (ad.a(paramActivity).a(0L) != null)
        {
          paramActivity = new com.estrongs.android.ui.pcs.a(paramActivity);
          paramActivity.a(paramList);
          paramActivity.a();
          return;
        }
        paramActivity = new com.estrongs.android.ui.pcs.j(paramActivity);
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
      cv localcv = new cv(paramActivity, paramList, paramh, paramBoolean1);
      localcv.setConfirmButton(paramActivity.getString(2131427339), new be(paramActivity, paramList, paramh, paramBoolean1, paramBoolean2, paramp));
      localcv.setCancelButton(paramActivity.getString(2131427340), new bf());
      localcv.show();
      return;
    }
    a(paramActivity, paramList, paramh, paramBoolean1, paramBoolean2, paramp);
  }
  
  public static void a(Activity paramActivity, List<h> paramList, boolean paramBoolean)
  {
    paramList = new y(paramActivity, paramList);
    paramList.setDescription(paramActivity.getString(2131428479));
    if (paramBoolean) {
      paramList.addTaskStatusChangeListener(new ay(paramActivity, paramList));
    }
    new ix(paramActivity, paramActivity.getString(2131428481), paramList).show();
    paramList.execute();
  }
  
  public static void a(Context paramContext)
  {
    new ct(paramContext).a(2131428701).b(2131428702).b(2131427341, new aq(paramContext)).c(2131427342, new ap()).c();
  }
  
  public static void a(ESActivity paramESActivity, com.estrongs.android.ui.pcs.r paramr, List<h> paramList)
  {
    Object localObject = ad.a(paramESActivity).ac();
    if ((localObject == null) || ("".equals(localObject)))
    {
      localObject = paramESActivity.getString(2131428609, new Object[] { Build.MODEL });
      localObject = new dj(paramESActivity, paramESActivity.getString(2131428597), (String)localObject);
      ((dj)localObject).a(new aw(paramESActivity, paramr, paramList));
      ((dj)localObject).a();
    }
    do
    {
      return;
      paramr = paramr.g() + "/files" + "/" + (String)localObject;
      a(paramESActivity, paramList, d.m(paramr), true);
    } while ((b.a().h(paramr) != null) || (b.a().h(am.bN(paramr)) != null));
    b.a().a(new o(paramr, false));
  }
  
  public static void a(ESActivity paramESActivity, List<h> paramList)
  {
    String str = null;
    if ((paramESActivity instanceof FileExplorerActivity)) {
      str = ((FileExplorerActivity)paramESActivity).z();
    }
    if (am.aV(str))
    {
      ag.a(paramESActivity, 2131427758, 1);
      return;
    }
    new com.estrongs.android.ui.dialog.ap(paramESActivity, paramList, str).a();
  }
  
  public static void a(ESActivity paramESActivity, List<h> paramList, h paramh, boolean paramBoolean)
  {
    if (paramList.size() == 0) {
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = paramList.iterator();
    while (localIterator1.hasNext())
    {
      Object localObject = (h)localIterator1.next();
      if (am.aG(((h)localObject).getPath()))
      {
        String str;
        if (((h)localObject).getFileType().a())
        {
          try
          {
            localObject = d.a(paramESActivity).a((h)localObject, false, new bl());
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
                  if (com.estrongs.fs.util.j.f(str)) {}
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
              if (com.estrongs.fs.util.j.f(str)) {}
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
          localArrayList.addAll(d.a(paramESActivity).a((h)localObject, false, new bm()));
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
    a(paramESActivity, localArrayList, paramh, paramBoolean);
  }
  
  public static void a(ESActivity paramESActivity, List<h> paramList, boolean paramBoolean1, boolean paramBoolean2, p paramp, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5)
  {
    bn.a(new bn(null), paramESActivity, paramList, paramBoolean1, paramBoolean2, paramp, paramBoolean3, paramBoolean4, paramBoolean5);
  }
  
  public static boolean a(Activity paramActivity, h paramh, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject = paramh.getAbsolutePath();
    if (paramString1 != null)
    {
      if (am.bg(paramString2))
      {
        ad.a(paramActivity).c((String)localObject, paramString1);
        paramh.setName(paramString1);
        return true;
      }
      boolean[] arrayOfBoolean = new boolean[1];
      localObject = new ax(paramActivity, paramh, paramString1, (String)localObject, arrayOfBoolean, paramBoolean2);
      if (paramBoolean1)
      {
        ((Thread)localObject).start();
        if (am.bb(paramString2)) {
          a.a(paramActivity, paramActivity.getString(2131428166, new Object[] { paramh.getName(), paramString1 }));
        }
        return true;
      }
      ((Thread)localObject).run();
      return arrayOfBoolean[0];
    }
    return false;
  }
  
  public static boolean a(ESActivity paramESActivity, List<h> paramList, p paramp, cb paramcb)
  {
    return new bn(null).a(paramESActivity, paramList, null, paramp, paramcb);
  }
  
  public static boolean a(ESActivity paramESActivity, List<h> paramList, com.estrongs.android.view.aw paramaw)
  {
    return new bn(null).a(paramESActivity, paramList, paramaw, null);
  }
  
  public static boolean a(ESActivity paramESActivity, List<h> paramList, com.estrongs.android.view.aw paramaw, p paramp, int paramInt, String paramString, boolean paramBoolean)
  {
    return new bn(null).a(paramESActivity, paramList, paramaw, paramp, null, paramInt, paramString, paramBoolean);
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
      if (!com.estrongs.android.util.bc.c((String)paramList.get(i))) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private static String b(String paramString)
  {
    if (a(com.estrongs.fs.util.j.b(paramString))) {
      return "application/*";
    }
    if ((com.estrongs.android.util.bc.e(paramString)) || (com.estrongs.android.util.bc.d(paramString))) {
      return "image/*";
    }
    if (com.estrongs.android.util.bc.g(paramString)) {
      return "audio/*";
    }
    if (com.estrongs.android.util.bc.h(paramString)) {
      return "video/*";
    }
    if (com.estrongs.android.util.bc.i(paramString)) {
      return "text/plain";
    }
    if (com.estrongs.android.util.bc.F(paramString)) {
      return "text/html";
    }
    if (com.estrongs.android.util.bc.H(paramString)) {
      return "text/xml";
    }
    if (com.estrongs.android.util.bc.C(paramString)) {
      return "application/msword";
    }
    if (com.estrongs.android.util.bc.D(paramString)) {
      return "application/vnd.ms-excel";
    }
    if (com.estrongs.android.util.bc.G(paramString)) {
      return "application/vnd.ms-powerpoint";
    }
    if (com.estrongs.android.util.bc.E(paramString)) {
      return "application/x-chm";
    }
    if (com.estrongs.android.util.bc.q(paramString)) {
      return "application/pdf";
    }
    if (com.estrongs.android.util.bc.s(paramString)) {
      return "application/epub+zip";
    }
    if (com.estrongs.android.util.bc.t(paramString)) {
      return "application/x-mobipocket-ebook";
    }
    if (com.estrongs.android.util.bc.j(paramString)) {
      return "application/x-rar-compressed";
    }
    if (com.estrongs.android.util.bc.r(paramString)) {
      return "application/esj";
    }
    if (com.estrongs.android.util.bc.J(paramString)) {
      return "audio/vnd.qcelp";
    }
    if (com.estrongs.android.util.bc.u(paramString)) {
      return "application/x-bittorrent";
    }
    if (com.estrongs.android.util.bc.z(paramString)) {
      return "application/x-chess-pgn";
    }
    if (com.estrongs.android.util.bc.B(paramString)) {
      return "application/vnd.oasis.opendocument.text";
    }
    if (com.estrongs.android.util.bc.k(paramString)) {
      return "application/x-shockwave-flash";
    }
    if (com.estrongs.android.util.bc.A(paramString)) {
      return "application/x-nzb";
    }
    if (com.estrongs.android.util.bc.I(paramString)) {
      return "text/calendar";
    }
    if (com.estrongs.android.util.bc.v(paramString)) {
      return "application/umd";
    }
    if (com.estrongs.android.util.bc.w(paramString)) {
      return "application/x-plucker";
    }
    if ((com.estrongs.android.util.bc.x(paramString)) || (com.estrongs.android.util.bc.y(paramString))) {
      return "application/x-expandedbook";
    }
    return "text/*";
  }
  
  public static void b(Activity paramActivity, String paramString)
  {
    a(paramActivity, am.bM(paramString), null);
  }
  
  public static void b(Activity paramActivity, List<String> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      return;
    }
    boolean bool1 = am.bb((String)paramList.get(0));
    boolean bool2 = am.aG((String)paramList.get(0));
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
            if (com.estrongs.fs.util.j.f((String)localObject1)) {}
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
      paramList = new com.estrongs.fs.b.r(d.a(paramActivity), localArrayList2, (h)localObject2);
      processData.k = false;
      paramList.b(false);
      paramList.setCanHide(false);
      paramList.setDescription(String.format(paramActivity.getString(2131428031), new Object[] { am.bL(((h)localObject2).getAbsolutePath()) }));
      paramList.addTaskStatusChangeListener(new as(paramActivity, localArrayList1));
      new ix(paramActivity, paramActivity.getString(2131427460), paramList).a(paramActivity.getString(2131427869), null).show();
      paramList.execute();
      return;
    }
    if (paramList.size() > 100)
    {
      ag.a(paramActivity, paramActivity.getString(2131428341), 0);
      return;
    }
    Object localObject1 = new Intent();
    ((Intent)localObject1).setAction("android.intent.action.SEND_MULTIPLE");
    ((Intent)localObject1).setType("*/*");
    if (a(paramList)) {
      ((Intent)localObject1).setType("image/*");
    }
    Object localObject2 = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      ((ArrayList)localObject2).add(Uri.fromFile(new File((String)paramList.next())));
    }
    ((Intent)localObject1).putParcelableArrayListExtra("android.intent.extra.STREAM", (ArrayList)localObject2);
    try
    {
      paramActivity.startActivity(Intent.createChooser((Intent)localObject1, paramActivity.getString(2131427389)));
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
  
  public static void b(ESActivity paramESActivity, List<h> paramList)
  {
    com.estrongs.android.ui.pcs.r localr = com.estrongs.android.ui.pcs.r.a();
    if (localr.b())
    {
      a(paramESActivity, localr, paramList);
      return;
    }
    a(paramESActivity, new bd(paramESActivity, localr, paramList), paramESActivity.getString(2131428596)).a(null);
  }
  
  private static int c(h paramh)
  {
    String[] arrayOfString = new File(paramh.getAbsolutePath()).list(new ar());
    if (arrayOfString == null) {}
    for (int i = 0;; i = arrayOfString.length)
    {
      paramh.putExtra("item_count", Integer.valueOf(i));
      return i;
    }
  }
  
  private static void c(Activity paramActivity, List<h> paramList, h paramh, boolean paramBoolean)
  {
    com.estrongs.fs.b.ao localao = new com.estrongs.fs.b.ao(d.a(paramActivity), paramList, paramh);
    localao.addPostListener(new bj(localao, paramActivity, paramh, paramList));
    localao.b(paramBoolean);
    localao.setDescription(String.format(paramActivity.getString(2131428032), new Object[] { am.bL(paramh.getAbsolutePath()) }));
    localao.a(true);
    new ix(paramActivity, paramActivity.getString(2131427459), localao).show();
    localao.execute();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */