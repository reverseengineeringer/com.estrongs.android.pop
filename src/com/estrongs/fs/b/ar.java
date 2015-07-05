package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.a.p;
import com.estrongs.android.pop.utils.cd;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.fs.impl.media.d;
import com.estrongs.fs.m;
import java.io.File;
import java.util.List;

public class ar
  extends com.estrongs.a.a
{
  private h a;
  private String b;
  private String c;
  private Activity d;
  private List<String> e = null;
  private List<String> f = null;
  private List<String> g = null;
  private List<String> h = null;
  private String i = null;
  private String j = null;
  private int k = 1;
  private boolean l = false;
  
  public ar(Activity paramActivity, h paramh, String paramString1, String paramString2)
  {
    d = paramActivity;
    a = paramh;
    b = paramString2;
    c = paramString1;
    processData.j = paramh.getName();
    processData.p = false;
    processData.l = false;
    processData.m = false;
    processData.n = false;
  }
  
  private void a(File paramFile, List<String> paramList1, List<String> paramList2, List<String> paramList3, List<String> paramList4)
  {
    if (paramFile.isDirectory())
    {
      paramFile = paramFile.listFiles();
      if (paramFile != null)
      {
        int n = paramFile.length;
        int m = 0;
        while (m < n)
        {
          a(paramFile[m], paramList1, paramList2, paramList3, paramList4);
          m += 1;
        }
      }
    }
    else
    {
      k |= com.estrongs.fs.a.a.g(paramFile.getAbsolutePath());
      if (!bd.f()) {
        break label88;
      }
      paramList4.add(paramFile.getAbsolutePath());
    }
    label88:
    do
    {
      return;
      if (com.estrongs.fs.impl.media.a.a(paramFile.getAbsolutePath()))
      {
        paramList1.add(paramFile.getAbsolutePath());
        return;
      }
      if (com.estrongs.fs.impl.media.a.b(paramFile.getAbsolutePath()))
      {
        paramList2.add(paramFile.getAbsolutePath());
        return;
      }
    } while (!com.estrongs.fs.impl.media.a.c(paramFile.getAbsolutePath()));
    paramList3.add(paramFile.getAbsolutePath());
  }
  
  protected void a()
  {
    if ((!l) || (am.aO(a.getPath()))) {
      return;
    }
    boolean bool = a.getFileType().b();
    if ((a.getFileType().a()) && (!i.endsWith("/"))) {
      i += "/";
    }
    try
    {
      if (!bd.f()) {
        break label215;
      }
      if ((i != null) && (bool) && (i.equalsIgnoreCase(j)))
      {
        d.a(i, j);
        return;
      }
    }
    catch (MediaStoreInsertException localMediaStoreInsertException)
    {
      localMediaStoreInsertException.printStackTrace();
      cd.b();
      return;
    }
    if (i != null)
    {
      if (!bool) {
        break label196;
      }
      d.f(i);
    }
    while ((a.getFileType().a()) && (h.size() == 0))
    {
      d.e(j);
      return;
      label196:
      d.g(i);
    }
    d.a(h, null);
    return;
    label215:
    if ((i != null) && (bool) && (i.equalsIgnoreCase(j)))
    {
      com.estrongs.fs.impl.k.b.c().a(i, j);
      com.estrongs.fs.impl.i.b.c().a(i, j);
      com.estrongs.fs.impl.q.b.c().a(i, j);
      return;
    }
    if (i != null)
    {
      if (!bool) {
        break label397;
      }
      com.estrongs.fs.impl.k.b.c().b(i);
      com.estrongs.fs.impl.i.b.c().b(i);
      com.estrongs.fs.impl.q.b.c().b(i);
    }
    for (;;)
    {
      if (e.size() > 0) {
        com.estrongs.fs.impl.k.b.c().a(e);
      }
      if (f.size() > 0) {
        com.estrongs.fs.impl.i.b.c().a(f);
      }
      if (g.size() <= 0) {
        break;
      }
      com.estrongs.fs.impl.q.b.c().a(g);
      return;
      label397:
      com.estrongs.fs.impl.k.b.c().c(i);
      com.estrongs.fs.impl.i.b.c().c(i);
      com.estrongs.fs.impl.q.b.c().c(i);
    }
  }
  
  protected void postTask()
  {
    super.postTask();
    if (a.getFileType().a()) {
      a();
    }
    int m = getTaskResulta;
    if ((m == 0) || (4 == m)) {
      FileExplorerActivity.h(true);
    }
  }
  
  /* Error */
  public boolean task()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   6: ifnonnull +5 -> 11
    //   9: iconst_0
    //   10: ireturn
    //   11: aload_0
    //   12: getfield 56	com/estrongs/fs/b/ar:processData	Lcom/estrongs/a/a/m;
    //   15: lconst_1
    //   16: putfield 239	com/estrongs/a/a/m:c	J
    //   19: aload_0
    //   20: getfield 56	com/estrongs/fs/b/ar:processData	Lcom/estrongs/a/a/m;
    //   23: lconst_1
    //   24: putfield 241	com/estrongs/a/a/m:e	J
    //   27: aload_0
    //   28: aload_0
    //   29: getfield 56	com/estrongs/fs/b/ar:processData	Lcom/estrongs/a/a/m;
    //   32: invokevirtual 245	com/estrongs/fs/b/ar:onProgress	(Lcom/estrongs/a/a/m;)V
    //   35: aload_0
    //   36: invokevirtual 248	com/estrongs/fs/b/ar:taskStopped	()Z
    //   39: ifeq +5 -> 44
    //   42: iconst_0
    //   43: ireturn
    //   44: aload_0
    //   45: aload_0
    //   46: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   49: invokeinterface 249 1 0
    //   54: putfield 38	com/estrongs/fs/b/ar:i	Ljava/lang/String;
    //   57: aload_0
    //   58: getfield 56	com/estrongs/fs/b/ar:processData	Lcom/estrongs/a/a/m;
    //   61: aload_0
    //   62: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   65: invokeinterface 62 1 0
    //   70: putfield 251	com/estrongs/a/a/m:a	Ljava/lang/String;
    //   73: aload_0
    //   74: aload_0
    //   75: getfield 56	com/estrongs/fs/b/ar:processData	Lcom/estrongs/a/a/m;
    //   78: invokevirtual 245	com/estrongs/fs/b/ar:onProgress	(Lcom/estrongs/a/a/m;)V
    //   81: aload_0
    //   82: getfield 46	com/estrongs/fs/b/ar:d	Landroid/app/Activity;
    //   85: aload_0
    //   86: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   89: aload_0
    //   90: getfield 52	com/estrongs/fs/b/ar:c	Ljava/lang/String;
    //   93: aload_0
    //   94: getfield 50	com/estrongs/fs/b/ar:b	Ljava/lang/String;
    //   97: iconst_0
    //   98: iconst_0
    //   99: invokestatic 256	com/estrongs/android/pop/utils/aj:a	(Landroid/app/Activity;Lcom/estrongs/fs/h;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    //   102: istore_2
    //   103: iload_2
    //   104: istore_1
    //   105: iload_1
    //   106: ifne +233 -> 339
    //   109: iload_1
    //   110: ifeq +206 -> 316
    //   113: aload_0
    //   114: new 147	java/lang/StringBuilder
    //   117: dup
    //   118: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   121: aload_0
    //   122: getfield 38	com/estrongs/fs/b/ar:i	Ljava/lang/String;
    //   125: invokestatic 259	com/estrongs/android/util/am:e	(Ljava/lang/String;)Ljava/lang/String;
    //   128: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: ldc -116
    //   133: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: aload_0
    //   137: getfield 52	com/estrongs/fs/b/ar:c	Ljava/lang/String;
    //   140: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: putfield 40	com/estrongs/fs/b/ar:j	Ljava/lang/String;
    //   149: aload_0
    //   150: getfield 38	com/estrongs/fs/b/ar:i	Ljava/lang/String;
    //   153: invokestatic 262	com/estrongs/android/util/am:bl	(Ljava/lang/String;)Z
    //   156: ifeq +102 -> 258
    //   159: aload_0
    //   160: new 264	java/util/ArrayList
    //   163: dup
    //   164: invokespecial 265	java/util/ArrayList:<init>	()V
    //   167: putfield 30	com/estrongs/fs/b/ar:e	Ljava/util/List;
    //   170: aload_0
    //   171: new 264	java/util/ArrayList
    //   174: dup
    //   175: invokespecial 265	java/util/ArrayList:<init>	()V
    //   178: putfield 32	com/estrongs/fs/b/ar:f	Ljava/util/List;
    //   181: aload_0
    //   182: new 264	java/util/ArrayList
    //   185: dup
    //   186: invokespecial 265	java/util/ArrayList:<init>	()V
    //   189: putfield 34	com/estrongs/fs/b/ar:g	Ljava/util/List;
    //   192: aload_0
    //   193: new 264	java/util/ArrayList
    //   196: dup
    //   197: invokespecial 265	java/util/ArrayList:<init>	()V
    //   200: putfield 36	com/estrongs/fs/b/ar:h	Ljava/util/List;
    //   203: aload_0
    //   204: new 79	java/io/File
    //   207: dup
    //   208: aload_0
    //   209: getfield 40	com/estrongs/fs/b/ar:j	Ljava/lang/String;
    //   212: invokespecial 267	java/io/File:<init>	(Ljava/lang/String;)V
    //   215: aload_0
    //   216: getfield 30	com/estrongs/fs/b/ar:e	Ljava/util/List;
    //   219: aload_0
    //   220: getfield 32	com/estrongs/fs/b/ar:f	Ljava/util/List;
    //   223: aload_0
    //   224: getfield 34	com/estrongs/fs/b/ar:g	Ljava/util/List;
    //   227: aload_0
    //   228: getfield 36	com/estrongs/fs/b/ar:h	Ljava/util/List;
    //   231: invokespecial 89	com/estrongs/fs/b/ar:a	(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    //   234: aload_0
    //   235: iconst_1
    //   236: putfield 44	com/estrongs/fs/b/ar:l	Z
    //   239: aload_0
    //   240: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   243: invokeinterface 132 1 0
    //   248: invokevirtual 136	com/estrongs/fs/m:b	()Z
    //   251: ifeq +7 -> 258
    //   254: aload_0
    //   255: invokevirtual 220	com/estrongs/fs/b/ar:a	()V
    //   258: aload_0
    //   259: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   262: invokeinterface 249 1 0
    //   267: invokestatic 270	com/estrongs/android/util/am:N	(Ljava/lang/String;)Z
    //   270: ifne +18 -> 288
    //   273: aload_0
    //   274: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   277: invokeinterface 249 1 0
    //   282: invokestatic 273	com/estrongs/android/util/am:P	(Ljava/lang/String;)Z
    //   285: ifeq +33 -> 318
    //   288: invokestatic 278	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   291: aload_0
    //   292: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   295: invokeinterface 249 1 0
    //   300: aload_0
    //   301: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   304: invokeinterface 249 1 0
    //   309: aload_0
    //   310: getfield 52	com/estrongs/fs/b/ar:c	Ljava/lang/String;
    //   313: invokevirtual 281	com/estrongs/fs/a/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   316: iconst_0
    //   317: ireturn
    //   318: invokestatic 278	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   321: aload_0
    //   322: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   325: aload_0
    //   326: getfield 40	com/estrongs/fs/b/ar:j	Ljava/lang/String;
    //   329: aload_0
    //   330: getfield 42	com/estrongs/fs/b/ar:k	I
    //   333: invokevirtual 284	com/estrongs/fs/a/b:a	(Lcom/estrongs/fs/h;Ljava/lang/String;I)V
    //   336: goto -20 -> 316
    //   339: aload_0
    //   340: getfield 56	com/estrongs/fs/b/ar:processData	Lcom/estrongs/a/a/m;
    //   343: lconst_1
    //   344: putfield 286	com/estrongs/a/a/m:d	J
    //   347: aload_0
    //   348: getfield 56	com/estrongs/fs/b/ar:processData	Lcom/estrongs/a/a/m;
    //   351: lconst_1
    //   352: putfield 288	com/estrongs/a/a/m:f	J
    //   355: aload_0
    //   356: aload_0
    //   357: getfield 56	com/estrongs/fs/b/ar:processData	Lcom/estrongs/a/a/m;
    //   360: invokevirtual 245	com/estrongs/fs/b/ar:onProgress	(Lcom/estrongs/a/a/m;)V
    //   363: aload_0
    //   364: iconst_0
    //   365: aconst_null
    //   366: invokevirtual 292	com/estrongs/fs/b/ar:setTaskResult	(ILjava/lang/Object;)V
    //   369: iload_1
    //   370: ifeq +728 -> 1098
    //   373: aload_0
    //   374: new 147	java/lang/StringBuilder
    //   377: dup
    //   378: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   381: aload_0
    //   382: getfield 38	com/estrongs/fs/b/ar:i	Ljava/lang/String;
    //   385: invokestatic 259	com/estrongs/android/util/am:e	(Ljava/lang/String;)Ljava/lang/String;
    //   388: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   391: ldc -116
    //   393: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   396: aload_0
    //   397: getfield 52	com/estrongs/fs/b/ar:c	Ljava/lang/String;
    //   400: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   403: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   406: putfield 40	com/estrongs/fs/b/ar:j	Ljava/lang/String;
    //   409: aload_0
    //   410: getfield 38	com/estrongs/fs/b/ar:i	Ljava/lang/String;
    //   413: invokestatic 262	com/estrongs/android/util/am:bl	(Ljava/lang/String;)Z
    //   416: ifeq +102 -> 518
    //   419: aload_0
    //   420: new 264	java/util/ArrayList
    //   423: dup
    //   424: invokespecial 265	java/util/ArrayList:<init>	()V
    //   427: putfield 30	com/estrongs/fs/b/ar:e	Ljava/util/List;
    //   430: aload_0
    //   431: new 264	java/util/ArrayList
    //   434: dup
    //   435: invokespecial 265	java/util/ArrayList:<init>	()V
    //   438: putfield 32	com/estrongs/fs/b/ar:f	Ljava/util/List;
    //   441: aload_0
    //   442: new 264	java/util/ArrayList
    //   445: dup
    //   446: invokespecial 265	java/util/ArrayList:<init>	()V
    //   449: putfield 34	com/estrongs/fs/b/ar:g	Ljava/util/List;
    //   452: aload_0
    //   453: new 264	java/util/ArrayList
    //   456: dup
    //   457: invokespecial 265	java/util/ArrayList:<init>	()V
    //   460: putfield 36	com/estrongs/fs/b/ar:h	Ljava/util/List;
    //   463: aload_0
    //   464: new 79	java/io/File
    //   467: dup
    //   468: aload_0
    //   469: getfield 40	com/estrongs/fs/b/ar:j	Ljava/lang/String;
    //   472: invokespecial 267	java/io/File:<init>	(Ljava/lang/String;)V
    //   475: aload_0
    //   476: getfield 30	com/estrongs/fs/b/ar:e	Ljava/util/List;
    //   479: aload_0
    //   480: getfield 32	com/estrongs/fs/b/ar:f	Ljava/util/List;
    //   483: aload_0
    //   484: getfield 34	com/estrongs/fs/b/ar:g	Ljava/util/List;
    //   487: aload_0
    //   488: getfield 36	com/estrongs/fs/b/ar:h	Ljava/util/List;
    //   491: invokespecial 89	com/estrongs/fs/b/ar:a	(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    //   494: aload_0
    //   495: iconst_1
    //   496: putfield 44	com/estrongs/fs/b/ar:l	Z
    //   499: aload_0
    //   500: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   503: invokeinterface 132 1 0
    //   508: invokevirtual 136	com/estrongs/fs/m:b	()Z
    //   511: ifeq +7 -> 518
    //   514: aload_0
    //   515: invokevirtual 220	com/estrongs/fs/b/ar:a	()V
    //   518: aload_0
    //   519: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   522: invokeinterface 249 1 0
    //   527: invokestatic 270	com/estrongs/android/util/am:N	(Ljava/lang/String;)Z
    //   530: ifne +18 -> 548
    //   533: aload_0
    //   534: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   537: invokeinterface 249 1 0
    //   542: invokestatic 273	com/estrongs/android/util/am:P	(Ljava/lang/String;)Z
    //   545: ifeq +33 -> 578
    //   548: invokestatic 278	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   551: aload_0
    //   552: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   555: invokeinterface 249 1 0
    //   560: aload_0
    //   561: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   564: invokeinterface 249 1 0
    //   569: aload_0
    //   570: getfield 52	com/estrongs/fs/b/ar:c	Ljava/lang/String;
    //   573: invokevirtual 281	com/estrongs/fs/a/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   576: iload_1
    //   577: ireturn
    //   578: invokestatic 278	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   581: aload_0
    //   582: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   585: aload_0
    //   586: getfield 40	com/estrongs/fs/b/ar:j	Ljava/lang/String;
    //   589: aload_0
    //   590: getfield 42	com/estrongs/fs/b/ar:k	I
    //   593: invokevirtual 284	com/estrongs/fs/a/b:a	(Lcom/estrongs/fs/h;Ljava/lang/String;I)V
    //   596: iload_1
    //   597: ireturn
    //   598: astore_3
    //   599: iconst_0
    //   600: istore_1
    //   601: aload_3
    //   602: invokevirtual 293	java/lang/Exception:printStackTrace	()V
    //   605: aload_0
    //   606: sipush 10000
    //   609: new 295	com/estrongs/a/q
    //   612: dup
    //   613: aload_3
    //   614: invokevirtual 296	java/lang/Exception:toString	()Ljava/lang/String;
    //   617: aload_3
    //   618: invokespecial 299	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   621: invokevirtual 292	com/estrongs/fs/b/ar:setTaskResult	(ILjava/lang/Object;)V
    //   624: iload_1
    //   625: ifeq +471 -> 1096
    //   628: aload_0
    //   629: new 147	java/lang/StringBuilder
    //   632: dup
    //   633: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   636: aload_0
    //   637: getfield 38	com/estrongs/fs/b/ar:i	Ljava/lang/String;
    //   640: invokestatic 259	com/estrongs/android/util/am:e	(Ljava/lang/String;)Ljava/lang/String;
    //   643: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   646: ldc -116
    //   648: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   651: aload_0
    //   652: getfield 52	com/estrongs/fs/b/ar:c	Ljava/lang/String;
    //   655: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   658: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   661: putfield 40	com/estrongs/fs/b/ar:j	Ljava/lang/String;
    //   664: aload_0
    //   665: getfield 38	com/estrongs/fs/b/ar:i	Ljava/lang/String;
    //   668: invokestatic 262	com/estrongs/android/util/am:bl	(Ljava/lang/String;)Z
    //   671: ifeq +102 -> 773
    //   674: aload_0
    //   675: new 264	java/util/ArrayList
    //   678: dup
    //   679: invokespecial 265	java/util/ArrayList:<init>	()V
    //   682: putfield 30	com/estrongs/fs/b/ar:e	Ljava/util/List;
    //   685: aload_0
    //   686: new 264	java/util/ArrayList
    //   689: dup
    //   690: invokespecial 265	java/util/ArrayList:<init>	()V
    //   693: putfield 32	com/estrongs/fs/b/ar:f	Ljava/util/List;
    //   696: aload_0
    //   697: new 264	java/util/ArrayList
    //   700: dup
    //   701: invokespecial 265	java/util/ArrayList:<init>	()V
    //   704: putfield 34	com/estrongs/fs/b/ar:g	Ljava/util/List;
    //   707: aload_0
    //   708: new 264	java/util/ArrayList
    //   711: dup
    //   712: invokespecial 265	java/util/ArrayList:<init>	()V
    //   715: putfield 36	com/estrongs/fs/b/ar:h	Ljava/util/List;
    //   718: aload_0
    //   719: new 79	java/io/File
    //   722: dup
    //   723: aload_0
    //   724: getfield 40	com/estrongs/fs/b/ar:j	Ljava/lang/String;
    //   727: invokespecial 267	java/io/File:<init>	(Ljava/lang/String;)V
    //   730: aload_0
    //   731: getfield 30	com/estrongs/fs/b/ar:e	Ljava/util/List;
    //   734: aload_0
    //   735: getfield 32	com/estrongs/fs/b/ar:f	Ljava/util/List;
    //   738: aload_0
    //   739: getfield 34	com/estrongs/fs/b/ar:g	Ljava/util/List;
    //   742: aload_0
    //   743: getfield 36	com/estrongs/fs/b/ar:h	Ljava/util/List;
    //   746: invokespecial 89	com/estrongs/fs/b/ar:a	(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    //   749: aload_0
    //   750: iconst_1
    //   751: putfield 44	com/estrongs/fs/b/ar:l	Z
    //   754: aload_0
    //   755: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   758: invokeinterface 132 1 0
    //   763: invokevirtual 136	com/estrongs/fs/m:b	()Z
    //   766: ifeq +7 -> 773
    //   769: aload_0
    //   770: invokevirtual 220	com/estrongs/fs/b/ar:a	()V
    //   773: aload_0
    //   774: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   777: invokeinterface 249 1 0
    //   782: invokestatic 270	com/estrongs/android/util/am:N	(Ljava/lang/String;)Z
    //   785: ifne +18 -> 803
    //   788: aload_0
    //   789: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   792: invokeinterface 249 1 0
    //   797: invokestatic 273	com/estrongs/android/util/am:P	(Ljava/lang/String;)Z
    //   800: ifeq +33 -> 833
    //   803: invokestatic 278	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   806: aload_0
    //   807: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   810: invokeinterface 249 1 0
    //   815: aload_0
    //   816: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   819: invokeinterface 249 1 0
    //   824: aload_0
    //   825: getfield 52	com/estrongs/fs/b/ar:c	Ljava/lang/String;
    //   828: invokevirtual 281	com/estrongs/fs/a/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   831: iload_1
    //   832: ireturn
    //   833: invokestatic 278	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   836: aload_0
    //   837: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   840: aload_0
    //   841: getfield 40	com/estrongs/fs/b/ar:j	Ljava/lang/String;
    //   844: aload_0
    //   845: getfield 42	com/estrongs/fs/b/ar:k	I
    //   848: invokevirtual 284	com/estrongs/fs/a/b:a	(Lcom/estrongs/fs/h;Ljava/lang/String;I)V
    //   851: iload_1
    //   852: ireturn
    //   853: astore_3
    //   854: iload_1
    //   855: ifeq +206 -> 1061
    //   858: aload_0
    //   859: new 147	java/lang/StringBuilder
    //   862: dup
    //   863: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   866: aload_0
    //   867: getfield 38	com/estrongs/fs/b/ar:i	Ljava/lang/String;
    //   870: invokestatic 259	com/estrongs/android/util/am:e	(Ljava/lang/String;)Ljava/lang/String;
    //   873: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   876: ldc -116
    //   878: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   881: aload_0
    //   882: getfield 52	com/estrongs/fs/b/ar:c	Ljava/lang/String;
    //   885: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   888: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   891: putfield 40	com/estrongs/fs/b/ar:j	Ljava/lang/String;
    //   894: aload_0
    //   895: getfield 38	com/estrongs/fs/b/ar:i	Ljava/lang/String;
    //   898: invokestatic 262	com/estrongs/android/util/am:bl	(Ljava/lang/String;)Z
    //   901: ifeq +102 -> 1003
    //   904: aload_0
    //   905: new 264	java/util/ArrayList
    //   908: dup
    //   909: invokespecial 265	java/util/ArrayList:<init>	()V
    //   912: putfield 30	com/estrongs/fs/b/ar:e	Ljava/util/List;
    //   915: aload_0
    //   916: new 264	java/util/ArrayList
    //   919: dup
    //   920: invokespecial 265	java/util/ArrayList:<init>	()V
    //   923: putfield 32	com/estrongs/fs/b/ar:f	Ljava/util/List;
    //   926: aload_0
    //   927: new 264	java/util/ArrayList
    //   930: dup
    //   931: invokespecial 265	java/util/ArrayList:<init>	()V
    //   934: putfield 34	com/estrongs/fs/b/ar:g	Ljava/util/List;
    //   937: aload_0
    //   938: new 264	java/util/ArrayList
    //   941: dup
    //   942: invokespecial 265	java/util/ArrayList:<init>	()V
    //   945: putfield 36	com/estrongs/fs/b/ar:h	Ljava/util/List;
    //   948: aload_0
    //   949: new 79	java/io/File
    //   952: dup
    //   953: aload_0
    //   954: getfield 40	com/estrongs/fs/b/ar:j	Ljava/lang/String;
    //   957: invokespecial 267	java/io/File:<init>	(Ljava/lang/String;)V
    //   960: aload_0
    //   961: getfield 30	com/estrongs/fs/b/ar:e	Ljava/util/List;
    //   964: aload_0
    //   965: getfield 32	com/estrongs/fs/b/ar:f	Ljava/util/List;
    //   968: aload_0
    //   969: getfield 34	com/estrongs/fs/b/ar:g	Ljava/util/List;
    //   972: aload_0
    //   973: getfield 36	com/estrongs/fs/b/ar:h	Ljava/util/List;
    //   976: invokespecial 89	com/estrongs/fs/b/ar:a	(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    //   979: aload_0
    //   980: iconst_1
    //   981: putfield 44	com/estrongs/fs/b/ar:l	Z
    //   984: aload_0
    //   985: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   988: invokeinterface 132 1 0
    //   993: invokevirtual 136	com/estrongs/fs/m:b	()Z
    //   996: ifeq +7 -> 1003
    //   999: aload_0
    //   1000: invokevirtual 220	com/estrongs/fs/b/ar:a	()V
    //   1003: aload_0
    //   1004: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   1007: invokeinterface 249 1 0
    //   1012: invokestatic 270	com/estrongs/android/util/am:N	(Ljava/lang/String;)Z
    //   1015: ifne +18 -> 1033
    //   1018: aload_0
    //   1019: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   1022: invokeinterface 249 1 0
    //   1027: invokestatic 273	com/estrongs/android/util/am:P	(Ljava/lang/String;)Z
    //   1030: ifeq +33 -> 1063
    //   1033: invokestatic 278	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   1036: aload_0
    //   1037: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   1040: invokeinterface 249 1 0
    //   1045: aload_0
    //   1046: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   1049: invokeinterface 249 1 0
    //   1054: aload_0
    //   1055: getfield 52	com/estrongs/fs/b/ar:c	Ljava/lang/String;
    //   1058: invokevirtual 281	com/estrongs/fs/a/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   1061: aload_3
    //   1062: athrow
    //   1063: invokestatic 278	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   1066: aload_0
    //   1067: getfield 48	com/estrongs/fs/b/ar:a	Lcom/estrongs/fs/h;
    //   1070: aload_0
    //   1071: getfield 40	com/estrongs/fs/b/ar:j	Ljava/lang/String;
    //   1074: aload_0
    //   1075: getfield 42	com/estrongs/fs/b/ar:k	I
    //   1078: invokevirtual 284	com/estrongs/fs/a/b:a	(Lcom/estrongs/fs/h;Ljava/lang/String;I)V
    //   1081: goto -20 -> 1061
    //   1084: astore_3
    //   1085: goto -231 -> 854
    //   1088: astore_3
    //   1089: goto -235 -> 854
    //   1092: astore_3
    //   1093: goto -492 -> 601
    //   1096: iload_1
    //   1097: ireturn
    //   1098: iload_1
    //   1099: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1100	0	this	ar
    //   1	1098	1	bool1	boolean
    //   102	2	2	bool2	boolean
    //   598	20	3	localException1	Exception
    //   853	209	3	localObject1	Object
    //   1084	1	3	localObject2	Object
    //   1088	1	3	localObject3	Object
    //   1092	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   2	9	598	java/lang/Exception
    //   11	42	598	java/lang/Exception
    //   44	103	598	java/lang/Exception
    //   2	9	853	finally
    //   11	42	853	finally
    //   44	103	853	finally
    //   339	369	1084	finally
    //   601	624	1088	finally
    //   339	369	1092	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */