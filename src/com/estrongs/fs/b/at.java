package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.a.p;
import com.estrongs.android.pop.utils.cm;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.fs.impl.media.b;
import com.estrongs.fs.impl.media.e;
import com.estrongs.fs.impl.n.d;
import com.estrongs.fs.w;
import java.io.File;
import java.util.List;

public class at
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
  
  public at(Activity paramActivity, h paramh, String paramString1, String paramString2)
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
      if (!bk.f()) {
        break label88;
      }
      paramList4.add(paramFile.getAbsolutePath());
    }
    label88:
    do
    {
      return;
      if (b.a(paramFile.getAbsolutePath()))
      {
        paramList1.add(paramFile.getAbsolutePath());
        return;
      }
      if (b.b(paramFile.getAbsolutePath()))
      {
        paramList2.add(paramFile.getAbsolutePath());
        return;
      }
    } while (!b.c(paramFile.getAbsolutePath()));
    paramList3.add(paramFile.getAbsolutePath());
  }
  
  protected void a()
  {
    if ((!l) || (ap.aY(a.getPath()))) {
      return;
    }
    boolean bool = a.getFileType().b();
    if ((a.getFileType().a()) && (!i.endsWith("/"))) {
      i += "/";
    }
    try
    {
      if (!bk.f()) {
        break label215;
      }
      if ((i != null) && (bool) && (i.equalsIgnoreCase(j)))
      {
        e.a(i, j);
        return;
      }
    }
    catch (MediaStoreInsertException localMediaStoreInsertException)
    {
      localMediaStoreInsertException.printStackTrace();
      cm.b();
      return;
    }
    if (i != null)
    {
      if (!bool) {
        break label196;
      }
      e.f(i);
    }
    while ((a.getFileType().a()) && (h.size() == 0))
    {
      e.e(j);
      return;
      label196:
      e.g(i);
    }
    e.a(h, null);
    return;
    label215:
    if ((i != null) && (bool) && (i.equalsIgnoreCase(j)))
    {
      com.estrongs.fs.impl.p.c.b().a(i, j);
      d.b().a(i, j);
      com.estrongs.fs.impl.v.c.b().a(i, j);
      return;
    }
    if (i != null)
    {
      if (!bool) {
        break label397;
      }
      com.estrongs.fs.impl.p.c.b().b(i);
      d.b().b(i);
      com.estrongs.fs.impl.v.c.b().b(i);
    }
    for (;;)
    {
      if (e.size() > 0) {
        com.estrongs.fs.impl.p.c.b().a(e);
      }
      if (f.size() > 0) {
        d.b().a(f);
      }
      if (g.size() <= 0) {
        break;
      }
      com.estrongs.fs.impl.v.c.b().a(g);
      return;
      label397:
      com.estrongs.fs.impl.p.c.b().c(i);
      d.b().c(i);
      com.estrongs.fs.impl.v.c.b().c(i);
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
      FileExplorerActivity.g(true);
    }
  }
  
  /* Error */
  public boolean task()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnonnull +12 -> 20
    //   11: invokestatic 241	com/estrongs/android/scanner/l:a	()Lcom/estrongs/android/scanner/l;
    //   14: iconst_1
    //   15: invokevirtual 243	com/estrongs/android/scanner/l:a	(Z)V
    //   18: iconst_0
    //   19: ireturn
    //   20: aload_0
    //   21: getfield 56	com/estrongs/fs/b/at:processData	Lcom/estrongs/a/a/m;
    //   24: lconst_1
    //   25: putfield 246	com/estrongs/a/a/m:c	J
    //   28: aload_0
    //   29: getfield 56	com/estrongs/fs/b/at:processData	Lcom/estrongs/a/a/m;
    //   32: lconst_1
    //   33: putfield 248	com/estrongs/a/a/m:e	J
    //   36: aload_0
    //   37: aload_0
    //   38: getfield 56	com/estrongs/fs/b/at:processData	Lcom/estrongs/a/a/m;
    //   41: invokevirtual 252	com/estrongs/fs/b/at:onProgress	(Lcom/estrongs/a/a/m;)V
    //   44: aload_0
    //   45: invokevirtual 255	com/estrongs/fs/b/at:taskStopped	()Z
    //   48: istore_2
    //   49: iload_2
    //   50: ifeq +12 -> 62
    //   53: invokestatic 241	com/estrongs/android/scanner/l:a	()Lcom/estrongs/android/scanner/l;
    //   56: iconst_1
    //   57: invokevirtual 243	com/estrongs/android/scanner/l:a	(Z)V
    //   60: iconst_0
    //   61: ireturn
    //   62: invokestatic 241	com/estrongs/android/scanner/l:a	()Lcom/estrongs/android/scanner/l;
    //   65: invokevirtual 257	com/estrongs/android/scanner/l:e	()V
    //   68: aload_0
    //   69: aload_0
    //   70: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   73: invokeinterface 258 1 0
    //   78: putfield 38	com/estrongs/fs/b/at:i	Ljava/lang/String;
    //   81: aload_0
    //   82: getfield 56	com/estrongs/fs/b/at:processData	Lcom/estrongs/a/a/m;
    //   85: aload_0
    //   86: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   89: invokeinterface 62 1 0
    //   94: putfield 260	com/estrongs/a/a/m:a	Ljava/lang/String;
    //   97: aload_0
    //   98: aload_0
    //   99: getfield 56	com/estrongs/fs/b/at:processData	Lcom/estrongs/a/a/m;
    //   102: invokevirtual 252	com/estrongs/fs/b/at:onProgress	(Lcom/estrongs/a/a/m;)V
    //   105: aload_0
    //   106: getfield 46	com/estrongs/fs/b/at:d	Landroid/app/Activity;
    //   109: aload_0
    //   110: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   113: aload_0
    //   114: getfield 52	com/estrongs/fs/b/at:c	Ljava/lang/String;
    //   117: aload_0
    //   118: getfield 50	com/estrongs/fs/b/at:b	Ljava/lang/String;
    //   121: iconst_0
    //   122: iconst_0
    //   123: invokestatic 265	com/estrongs/android/pop/utils/ao:a	(Landroid/app/Activity;Lcom/estrongs/fs/h;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    //   126: istore_2
    //   127: iload_2
    //   128: istore_1
    //   129: iload_1
    //   130: ifne +259 -> 389
    //   133: iload_1
    //   134: ifeq +225 -> 359
    //   137: aload_0
    //   138: new 147	java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   145: aload_0
    //   146: getfield 38	com/estrongs/fs/b/at:i	Ljava/lang/String;
    //   149: invokestatic 268	com/estrongs/android/util/ap:e	(Ljava/lang/String;)Ljava/lang/String;
    //   152: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: ldc -116
    //   157: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: aload_0
    //   161: getfield 52	com/estrongs/fs/b/at:c	Ljava/lang/String;
    //   164: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: putfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   173: invokestatic 241	com/estrongs/android/scanner/l:a	()Lcom/estrongs/android/scanner/l;
    //   176: aload_0
    //   177: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   180: invokeinterface 258 1 0
    //   185: aload_0
    //   186: getfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   189: invokevirtual 271	com/estrongs/android/scanner/l:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   192: aload_0
    //   193: getfield 38	com/estrongs/fs/b/at:i	Ljava/lang/String;
    //   196: invokestatic 274	com/estrongs/android/util/ap:bC	(Ljava/lang/String;)Z
    //   199: ifeq +102 -> 301
    //   202: aload_0
    //   203: new 276	java/util/ArrayList
    //   206: dup
    //   207: invokespecial 277	java/util/ArrayList:<init>	()V
    //   210: putfield 30	com/estrongs/fs/b/at:e	Ljava/util/List;
    //   213: aload_0
    //   214: new 276	java/util/ArrayList
    //   217: dup
    //   218: invokespecial 277	java/util/ArrayList:<init>	()V
    //   221: putfield 32	com/estrongs/fs/b/at:f	Ljava/util/List;
    //   224: aload_0
    //   225: new 276	java/util/ArrayList
    //   228: dup
    //   229: invokespecial 277	java/util/ArrayList:<init>	()V
    //   232: putfield 34	com/estrongs/fs/b/at:g	Ljava/util/List;
    //   235: aload_0
    //   236: new 276	java/util/ArrayList
    //   239: dup
    //   240: invokespecial 277	java/util/ArrayList:<init>	()V
    //   243: putfield 36	com/estrongs/fs/b/at:h	Ljava/util/List;
    //   246: aload_0
    //   247: new 79	java/io/File
    //   250: dup
    //   251: aload_0
    //   252: getfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   255: invokespecial 279	java/io/File:<init>	(Ljava/lang/String;)V
    //   258: aload_0
    //   259: getfield 30	com/estrongs/fs/b/at:e	Ljava/util/List;
    //   262: aload_0
    //   263: getfield 32	com/estrongs/fs/b/at:f	Ljava/util/List;
    //   266: aload_0
    //   267: getfield 34	com/estrongs/fs/b/at:g	Ljava/util/List;
    //   270: aload_0
    //   271: getfield 36	com/estrongs/fs/b/at:h	Ljava/util/List;
    //   274: invokespecial 89	com/estrongs/fs/b/at:a	(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    //   277: aload_0
    //   278: iconst_1
    //   279: putfield 44	com/estrongs/fs/b/at:l	Z
    //   282: aload_0
    //   283: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   286: invokeinterface 132 1 0
    //   291: invokevirtual 136	com/estrongs/fs/w:b	()Z
    //   294: ifeq +7 -> 301
    //   297: aload_0
    //   298: invokevirtual 220	com/estrongs/fs/b/at:a	()V
    //   301: aload_0
    //   302: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   305: invokeinterface 258 1 0
    //   310: invokestatic 282	com/estrongs/android/util/ap:P	(Ljava/lang/String;)Z
    //   313: ifne +18 -> 331
    //   316: aload_0
    //   317: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   320: invokeinterface 258 1 0
    //   325: invokestatic 285	com/estrongs/android/util/ap:R	(Ljava/lang/String;)Z
    //   328: ifeq +40 -> 368
    //   331: invokestatic 290	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   334: aload_0
    //   335: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   338: invokeinterface 258 1 0
    //   343: aload_0
    //   344: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   347: invokeinterface 258 1 0
    //   352: aload_0
    //   353: getfield 52	com/estrongs/fs/b/at:c	Ljava/lang/String;
    //   356: invokevirtual 293	com/estrongs/fs/a/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   359: invokestatic 241	com/estrongs/android/scanner/l:a	()Lcom/estrongs/android/scanner/l;
    //   362: iconst_1
    //   363: invokevirtual 243	com/estrongs/android/scanner/l:a	(Z)V
    //   366: iconst_0
    //   367: ireturn
    //   368: invokestatic 290	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   371: aload_0
    //   372: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   375: aload_0
    //   376: getfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   379: aload_0
    //   380: getfield 42	com/estrongs/fs/b/at:k	I
    //   383: invokevirtual 296	com/estrongs/fs/a/b:a	(Lcom/estrongs/fs/h;Ljava/lang/String;I)V
    //   386: goto -27 -> 359
    //   389: aload_0
    //   390: getfield 56	com/estrongs/fs/b/at:processData	Lcom/estrongs/a/a/m;
    //   393: lconst_1
    //   394: putfield 298	com/estrongs/a/a/m:d	J
    //   397: aload_0
    //   398: getfield 56	com/estrongs/fs/b/at:processData	Lcom/estrongs/a/a/m;
    //   401: lconst_1
    //   402: putfield 300	com/estrongs/a/a/m:f	J
    //   405: aload_0
    //   406: aload_0
    //   407: getfield 56	com/estrongs/fs/b/at:processData	Lcom/estrongs/a/a/m;
    //   410: invokevirtual 252	com/estrongs/fs/b/at:onProgress	(Lcom/estrongs/a/a/m;)V
    //   413: aload_0
    //   414: iconst_0
    //   415: aconst_null
    //   416: invokevirtual 304	com/estrongs/fs/b/at:setTaskResult	(ILjava/lang/Object;)V
    //   419: iload_1
    //   420: ifeq +225 -> 645
    //   423: aload_0
    //   424: new 147	java/lang/StringBuilder
    //   427: dup
    //   428: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   431: aload_0
    //   432: getfield 38	com/estrongs/fs/b/at:i	Ljava/lang/String;
    //   435: invokestatic 268	com/estrongs/android/util/ap:e	(Ljava/lang/String;)Ljava/lang/String;
    //   438: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   441: ldc -116
    //   443: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   446: aload_0
    //   447: getfield 52	com/estrongs/fs/b/at:c	Ljava/lang/String;
    //   450: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   453: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   456: putfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   459: invokestatic 241	com/estrongs/android/scanner/l:a	()Lcom/estrongs/android/scanner/l;
    //   462: aload_0
    //   463: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   466: invokeinterface 258 1 0
    //   471: aload_0
    //   472: getfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   475: invokevirtual 271	com/estrongs/android/scanner/l:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   478: aload_0
    //   479: getfield 38	com/estrongs/fs/b/at:i	Ljava/lang/String;
    //   482: invokestatic 274	com/estrongs/android/util/ap:bC	(Ljava/lang/String;)Z
    //   485: ifeq +102 -> 587
    //   488: aload_0
    //   489: new 276	java/util/ArrayList
    //   492: dup
    //   493: invokespecial 277	java/util/ArrayList:<init>	()V
    //   496: putfield 30	com/estrongs/fs/b/at:e	Ljava/util/List;
    //   499: aload_0
    //   500: new 276	java/util/ArrayList
    //   503: dup
    //   504: invokespecial 277	java/util/ArrayList:<init>	()V
    //   507: putfield 32	com/estrongs/fs/b/at:f	Ljava/util/List;
    //   510: aload_0
    //   511: new 276	java/util/ArrayList
    //   514: dup
    //   515: invokespecial 277	java/util/ArrayList:<init>	()V
    //   518: putfield 34	com/estrongs/fs/b/at:g	Ljava/util/List;
    //   521: aload_0
    //   522: new 276	java/util/ArrayList
    //   525: dup
    //   526: invokespecial 277	java/util/ArrayList:<init>	()V
    //   529: putfield 36	com/estrongs/fs/b/at:h	Ljava/util/List;
    //   532: aload_0
    //   533: new 79	java/io/File
    //   536: dup
    //   537: aload_0
    //   538: getfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   541: invokespecial 279	java/io/File:<init>	(Ljava/lang/String;)V
    //   544: aload_0
    //   545: getfield 30	com/estrongs/fs/b/at:e	Ljava/util/List;
    //   548: aload_0
    //   549: getfield 32	com/estrongs/fs/b/at:f	Ljava/util/List;
    //   552: aload_0
    //   553: getfield 34	com/estrongs/fs/b/at:g	Ljava/util/List;
    //   556: aload_0
    //   557: getfield 36	com/estrongs/fs/b/at:h	Ljava/util/List;
    //   560: invokespecial 89	com/estrongs/fs/b/at:a	(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    //   563: aload_0
    //   564: iconst_1
    //   565: putfield 44	com/estrongs/fs/b/at:l	Z
    //   568: aload_0
    //   569: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   572: invokeinterface 132 1 0
    //   577: invokevirtual 136	com/estrongs/fs/w:b	()Z
    //   580: ifeq +7 -> 587
    //   583: aload_0
    //   584: invokevirtual 220	com/estrongs/fs/b/at:a	()V
    //   587: aload_0
    //   588: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   591: invokeinterface 258 1 0
    //   596: invokestatic 282	com/estrongs/android/util/ap:P	(Ljava/lang/String;)Z
    //   599: ifne +18 -> 617
    //   602: aload_0
    //   603: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   606: invokeinterface 258 1 0
    //   611: invokestatic 285	com/estrongs/android/util/ap:R	(Ljava/lang/String;)Z
    //   614: ifeq +40 -> 654
    //   617: invokestatic 290	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   620: aload_0
    //   621: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   624: invokeinterface 258 1 0
    //   629: aload_0
    //   630: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   633: invokeinterface 258 1 0
    //   638: aload_0
    //   639: getfield 52	com/estrongs/fs/b/at:c	Ljava/lang/String;
    //   642: invokevirtual 293	com/estrongs/fs/a/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   645: invokestatic 241	com/estrongs/android/scanner/l:a	()Lcom/estrongs/android/scanner/l;
    //   648: iconst_1
    //   649: invokevirtual 243	com/estrongs/android/scanner/l:a	(Z)V
    //   652: iload_1
    //   653: ireturn
    //   654: invokestatic 290	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   657: aload_0
    //   658: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   661: aload_0
    //   662: getfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   665: aload_0
    //   666: getfield 42	com/estrongs/fs/b/at:k	I
    //   669: invokevirtual 296	com/estrongs/fs/a/b:a	(Lcom/estrongs/fs/h;Ljava/lang/String;I)V
    //   672: goto -27 -> 645
    //   675: astore_3
    //   676: iconst_0
    //   677: istore_1
    //   678: aload_3
    //   679: invokevirtual 305	java/lang/Exception:printStackTrace	()V
    //   682: aload_0
    //   683: sipush 10000
    //   686: new 307	com/estrongs/a/q
    //   689: dup
    //   690: aload_3
    //   691: invokevirtual 308	java/lang/Exception:toString	()Ljava/lang/String;
    //   694: aload_3
    //   695: invokespecial 311	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   698: invokevirtual 304	com/estrongs/fs/b/at:setTaskResult	(ILjava/lang/Object;)V
    //   701: iload_1
    //   702: ifeq +225 -> 927
    //   705: aload_0
    //   706: new 147	java/lang/StringBuilder
    //   709: dup
    //   710: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   713: aload_0
    //   714: getfield 38	com/estrongs/fs/b/at:i	Ljava/lang/String;
    //   717: invokestatic 268	com/estrongs/android/util/ap:e	(Ljava/lang/String;)Ljava/lang/String;
    //   720: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   723: ldc -116
    //   725: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   728: aload_0
    //   729: getfield 52	com/estrongs/fs/b/at:c	Ljava/lang/String;
    //   732: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   735: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   738: putfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   741: invokestatic 241	com/estrongs/android/scanner/l:a	()Lcom/estrongs/android/scanner/l;
    //   744: aload_0
    //   745: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   748: invokeinterface 258 1 0
    //   753: aload_0
    //   754: getfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   757: invokevirtual 271	com/estrongs/android/scanner/l:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   760: aload_0
    //   761: getfield 38	com/estrongs/fs/b/at:i	Ljava/lang/String;
    //   764: invokestatic 274	com/estrongs/android/util/ap:bC	(Ljava/lang/String;)Z
    //   767: ifeq +102 -> 869
    //   770: aload_0
    //   771: new 276	java/util/ArrayList
    //   774: dup
    //   775: invokespecial 277	java/util/ArrayList:<init>	()V
    //   778: putfield 30	com/estrongs/fs/b/at:e	Ljava/util/List;
    //   781: aload_0
    //   782: new 276	java/util/ArrayList
    //   785: dup
    //   786: invokespecial 277	java/util/ArrayList:<init>	()V
    //   789: putfield 32	com/estrongs/fs/b/at:f	Ljava/util/List;
    //   792: aload_0
    //   793: new 276	java/util/ArrayList
    //   796: dup
    //   797: invokespecial 277	java/util/ArrayList:<init>	()V
    //   800: putfield 34	com/estrongs/fs/b/at:g	Ljava/util/List;
    //   803: aload_0
    //   804: new 276	java/util/ArrayList
    //   807: dup
    //   808: invokespecial 277	java/util/ArrayList:<init>	()V
    //   811: putfield 36	com/estrongs/fs/b/at:h	Ljava/util/List;
    //   814: aload_0
    //   815: new 79	java/io/File
    //   818: dup
    //   819: aload_0
    //   820: getfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   823: invokespecial 279	java/io/File:<init>	(Ljava/lang/String;)V
    //   826: aload_0
    //   827: getfield 30	com/estrongs/fs/b/at:e	Ljava/util/List;
    //   830: aload_0
    //   831: getfield 32	com/estrongs/fs/b/at:f	Ljava/util/List;
    //   834: aload_0
    //   835: getfield 34	com/estrongs/fs/b/at:g	Ljava/util/List;
    //   838: aload_0
    //   839: getfield 36	com/estrongs/fs/b/at:h	Ljava/util/List;
    //   842: invokespecial 89	com/estrongs/fs/b/at:a	(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    //   845: aload_0
    //   846: iconst_1
    //   847: putfield 44	com/estrongs/fs/b/at:l	Z
    //   850: aload_0
    //   851: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   854: invokeinterface 132 1 0
    //   859: invokevirtual 136	com/estrongs/fs/w:b	()Z
    //   862: ifeq +7 -> 869
    //   865: aload_0
    //   866: invokevirtual 220	com/estrongs/fs/b/at:a	()V
    //   869: aload_0
    //   870: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   873: invokeinterface 258 1 0
    //   878: invokestatic 282	com/estrongs/android/util/ap:P	(Ljava/lang/String;)Z
    //   881: ifne +18 -> 899
    //   884: aload_0
    //   885: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   888: invokeinterface 258 1 0
    //   893: invokestatic 285	com/estrongs/android/util/ap:R	(Ljava/lang/String;)Z
    //   896: ifeq +40 -> 936
    //   899: invokestatic 290	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   902: aload_0
    //   903: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   906: invokeinterface 258 1 0
    //   911: aload_0
    //   912: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   915: invokeinterface 258 1 0
    //   920: aload_0
    //   921: getfield 52	com/estrongs/fs/b/at:c	Ljava/lang/String;
    //   924: invokevirtual 293	com/estrongs/fs/a/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   927: invokestatic 241	com/estrongs/android/scanner/l:a	()Lcom/estrongs/android/scanner/l;
    //   930: iconst_1
    //   931: invokevirtual 243	com/estrongs/android/scanner/l:a	(Z)V
    //   934: iload_1
    //   935: ireturn
    //   936: invokestatic 290	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   939: aload_0
    //   940: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   943: aload_0
    //   944: getfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   947: aload_0
    //   948: getfield 42	com/estrongs/fs/b/at:k	I
    //   951: invokevirtual 296	com/estrongs/fs/a/b:a	(Lcom/estrongs/fs/h;Ljava/lang/String;I)V
    //   954: goto -27 -> 927
    //   957: astore_3
    //   958: iload_1
    //   959: ifeq +225 -> 1184
    //   962: aload_0
    //   963: new 147	java/lang/StringBuilder
    //   966: dup
    //   967: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   970: aload_0
    //   971: getfield 38	com/estrongs/fs/b/at:i	Ljava/lang/String;
    //   974: invokestatic 268	com/estrongs/android/util/ap:e	(Ljava/lang/String;)Ljava/lang/String;
    //   977: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   980: ldc -116
    //   982: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   985: aload_0
    //   986: getfield 52	com/estrongs/fs/b/at:c	Ljava/lang/String;
    //   989: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   992: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   995: putfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   998: invokestatic 241	com/estrongs/android/scanner/l:a	()Lcom/estrongs/android/scanner/l;
    //   1001: aload_0
    //   1002: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   1005: invokeinterface 258 1 0
    //   1010: aload_0
    //   1011: getfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   1014: invokevirtual 271	com/estrongs/android/scanner/l:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   1017: aload_0
    //   1018: getfield 38	com/estrongs/fs/b/at:i	Ljava/lang/String;
    //   1021: invokestatic 274	com/estrongs/android/util/ap:bC	(Ljava/lang/String;)Z
    //   1024: ifeq +102 -> 1126
    //   1027: aload_0
    //   1028: new 276	java/util/ArrayList
    //   1031: dup
    //   1032: invokespecial 277	java/util/ArrayList:<init>	()V
    //   1035: putfield 30	com/estrongs/fs/b/at:e	Ljava/util/List;
    //   1038: aload_0
    //   1039: new 276	java/util/ArrayList
    //   1042: dup
    //   1043: invokespecial 277	java/util/ArrayList:<init>	()V
    //   1046: putfield 32	com/estrongs/fs/b/at:f	Ljava/util/List;
    //   1049: aload_0
    //   1050: new 276	java/util/ArrayList
    //   1053: dup
    //   1054: invokespecial 277	java/util/ArrayList:<init>	()V
    //   1057: putfield 34	com/estrongs/fs/b/at:g	Ljava/util/List;
    //   1060: aload_0
    //   1061: new 276	java/util/ArrayList
    //   1064: dup
    //   1065: invokespecial 277	java/util/ArrayList:<init>	()V
    //   1068: putfield 36	com/estrongs/fs/b/at:h	Ljava/util/List;
    //   1071: aload_0
    //   1072: new 79	java/io/File
    //   1075: dup
    //   1076: aload_0
    //   1077: getfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   1080: invokespecial 279	java/io/File:<init>	(Ljava/lang/String;)V
    //   1083: aload_0
    //   1084: getfield 30	com/estrongs/fs/b/at:e	Ljava/util/List;
    //   1087: aload_0
    //   1088: getfield 32	com/estrongs/fs/b/at:f	Ljava/util/List;
    //   1091: aload_0
    //   1092: getfield 34	com/estrongs/fs/b/at:g	Ljava/util/List;
    //   1095: aload_0
    //   1096: getfield 36	com/estrongs/fs/b/at:h	Ljava/util/List;
    //   1099: invokespecial 89	com/estrongs/fs/b/at:a	(Ljava/io/File;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    //   1102: aload_0
    //   1103: iconst_1
    //   1104: putfield 44	com/estrongs/fs/b/at:l	Z
    //   1107: aload_0
    //   1108: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   1111: invokeinterface 132 1 0
    //   1116: invokevirtual 136	com/estrongs/fs/w:b	()Z
    //   1119: ifeq +7 -> 1126
    //   1122: aload_0
    //   1123: invokevirtual 220	com/estrongs/fs/b/at:a	()V
    //   1126: aload_0
    //   1127: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   1130: invokeinterface 258 1 0
    //   1135: invokestatic 282	com/estrongs/android/util/ap:P	(Ljava/lang/String;)Z
    //   1138: ifne +18 -> 1156
    //   1141: aload_0
    //   1142: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   1145: invokeinterface 258 1 0
    //   1150: invokestatic 285	com/estrongs/android/util/ap:R	(Ljava/lang/String;)Z
    //   1153: ifeq +40 -> 1193
    //   1156: invokestatic 290	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   1159: aload_0
    //   1160: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   1163: invokeinterface 258 1 0
    //   1168: aload_0
    //   1169: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   1172: invokeinterface 258 1 0
    //   1177: aload_0
    //   1178: getfield 52	com/estrongs/fs/b/at:c	Ljava/lang/String;
    //   1181: invokevirtual 293	com/estrongs/fs/a/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   1184: invokestatic 241	com/estrongs/android/scanner/l:a	()Lcom/estrongs/android/scanner/l;
    //   1187: iconst_1
    //   1188: invokevirtual 243	com/estrongs/android/scanner/l:a	(Z)V
    //   1191: aload_3
    //   1192: athrow
    //   1193: invokestatic 290	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   1196: aload_0
    //   1197: getfield 48	com/estrongs/fs/b/at:a	Lcom/estrongs/fs/h;
    //   1200: aload_0
    //   1201: getfield 40	com/estrongs/fs/b/at:j	Ljava/lang/String;
    //   1204: aload_0
    //   1205: getfield 42	com/estrongs/fs/b/at:k	I
    //   1208: invokevirtual 296	com/estrongs/fs/a/b:a	(Lcom/estrongs/fs/h;Ljava/lang/String;I)V
    //   1211: goto -27 -> 1184
    //   1214: astore_3
    //   1215: goto -257 -> 958
    //   1218: astore_3
    //   1219: goto -261 -> 958
    //   1222: astore_3
    //   1223: goto -545 -> 678
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1226	0	this	at
    //   1	958	1	bool1	boolean
    //   48	80	2	bool2	boolean
    //   6	2	3	localh	h
    //   675	20	3	localException1	Exception
    //   957	235	3	localObject1	Object
    //   1214	1	3	localObject2	Object
    //   1218	1	3	localObject3	Object
    //   1222	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   2	7	675	java/lang/Exception
    //   20	49	675	java/lang/Exception
    //   62	127	675	java/lang/Exception
    //   2	7	957	finally
    //   20	49	957	finally
    //   62	127	957	finally
    //   389	419	1214	finally
    //   678	701	1218	finally
    //   389	419	1222	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */