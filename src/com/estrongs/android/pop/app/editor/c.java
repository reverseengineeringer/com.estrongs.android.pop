package com.estrongs.android.pop.app.editor;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.e;
import com.estrongs.android.util.l;
import com.estrongs.fs.b.ab;
import com.estrongs.fs.d;
import com.estrongs.fs.impl.local.i;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

public class c
{
  private static final String a = c.class.getSimpleName();
  private static String b = "UTF-8";
  private Context c = null;
  private String d = null;
  private String e = null;
  private String f = null;
  private File g = null;
  private File h = null;
  private File i = null;
  private boolean j = false;
  private boolean k = false;
  private String l = com.estrongs.android.pop.a.f;
  
  public c(Activity paramActivity, Uri paramUri)
  {
    c = paramActivity;
    d = paramUri.toString();
    if (d.startsWith("content://")) {
      j = true;
    }
    if (j) {}
    for (e = a(paramActivity.getContentResolver(), paramUri);; e = ap.d(Uri.decode(d)))
    {
      k = ap.bm(d);
      return;
    }
  }
  
  /* Error */
  private File a(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_1
    //   3: ifnull +12 -> 15
    //   6: aload_1
    //   7: ldc 69
    //   9: invokevirtual 75	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   12: ifne +9 -> 21
    //   15: aconst_null
    //   16: astore 6
    //   18: aload 6
    //   20: areturn
    //   21: invokestatic 103	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   24: ldc 105
    //   26: invokevirtual 109	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   29: ifeq +239 -> 268
    //   32: new 111	java/io/File
    //   35: dup
    //   36: new 113	java/lang/StringBuilder
    //   39: dup
    //   40: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   43: getstatic 60	com/estrongs/android/pop/a:f	Ljava/lang/String;
    //   46: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: ldc 120
    //   51: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   57: invokespecial 124	java/io/File:<init>	(Ljava/lang/String;)V
    //   60: astore 4
    //   62: aload 4
    //   64: invokevirtual 128	java/io/File:exists	()Z
    //   67: ifne +9 -> 76
    //   70: aload 4
    //   72: invokevirtual 131	java/io/File:mkdirs	()Z
    //   75: pop
    //   76: new 111	java/io/File
    //   79: dup
    //   80: new 113	java/lang/StringBuilder
    //   83: dup
    //   84: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   87: getstatic 60	com/estrongs/android/pop/a:f	Ljava/lang/String;
    //   90: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: ldc 120
    //   95: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: aload_0
    //   99: getfield 45	com/estrongs/android/pop/app/editor/c:e	Ljava/lang/String;
    //   102: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: invokespecial 124	java/io/File:<init>	(Ljava/lang/String;)V
    //   111: astore 4
    //   113: aload 4
    //   115: astore 6
    //   117: aload 4
    //   119: ifnull -101 -> 18
    //   122: aload 4
    //   124: invokevirtual 128	java/io/File:exists	()Z
    //   127: ifeq +9 -> 136
    //   130: aload 4
    //   132: invokevirtual 134	java/io/File:delete	()Z
    //   135: pop
    //   136: aload_0
    //   137: getfield 41	com/estrongs/android/pop/app/editor/c:c	Landroid/content/Context;
    //   140: invokevirtual 137	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   143: aload_1
    //   144: invokestatic 141	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   147: invokevirtual 147	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   150: astore_1
    //   151: new 149	java/io/FileOutputStream
    //   154: dup
    //   155: aload 4
    //   157: invokespecial 152	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   160: astore 5
    //   162: aload 5
    //   164: astore 7
    //   166: aload_1
    //   167: astore 6
    //   169: sipush 4096
    //   172: newarray <illegal type>
    //   174: astore 8
    //   176: iload_2
    //   177: iconst_m1
    //   178: if_icmpeq +192 -> 370
    //   181: aload 5
    //   183: astore 7
    //   185: aload_1
    //   186: astore 6
    //   188: aload_1
    //   189: aload 8
    //   191: invokevirtual 158	java/io/InputStream:read	([B)I
    //   194: istore_3
    //   195: iload_3
    //   196: istore_2
    //   197: iload_3
    //   198: ifle -22 -> 176
    //   201: aload 5
    //   203: astore 7
    //   205: aload_1
    //   206: astore 6
    //   208: aload 5
    //   210: aload 8
    //   212: iconst_0
    //   213: iload_3
    //   214: invokevirtual 164	java/io/OutputStream:write	([BII)V
    //   217: iload_3
    //   218: istore_2
    //   219: goto -43 -> 176
    //   222: astore 8
    //   224: aload 5
    //   226: astore 7
    //   228: aload_1
    //   229: astore 6
    //   231: aload 8
    //   233: invokevirtual 167	java/lang/Exception:printStackTrace	()V
    //   236: aload_1
    //   237: ifnull +7 -> 244
    //   240: aload_1
    //   241: invokevirtual 170	java/io/InputStream:close	()V
    //   244: aload 4
    //   246: astore 6
    //   248: aload 5
    //   250: ifnull -232 -> 18
    //   253: aload 5
    //   255: invokevirtual 171	java/io/OutputStream:close	()V
    //   258: aload 4
    //   260: areturn
    //   261: astore_1
    //   262: aload_1
    //   263: invokevirtual 167	java/lang/Exception:printStackTrace	()V
    //   266: aconst_null
    //   267: areturn
    //   268: aload_0
    //   269: getfield 41	com/estrongs/android/pop/app/editor/c:c	Landroid/content/Context;
    //   272: invokevirtual 175	android/content/Context:getFilesDir	()Ljava/io/File;
    //   275: astore 4
    //   277: aload 4
    //   279: ifnull +171 -> 450
    //   282: new 111	java/io/File
    //   285: dup
    //   286: new 113	java/lang/StringBuilder
    //   289: dup
    //   290: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   293: aload 4
    //   295: invokevirtual 178	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   298: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   301: ldc 120
    //   303: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   306: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   309: invokespecial 124	java/io/File:<init>	(Ljava/lang/String;)V
    //   312: astore 5
    //   314: aload 5
    //   316: invokevirtual 128	java/io/File:exists	()Z
    //   319: ifne +9 -> 328
    //   322: aload 5
    //   324: invokevirtual 131	java/io/File:mkdirs	()Z
    //   327: pop
    //   328: new 111	java/io/File
    //   331: dup
    //   332: new 113	java/lang/StringBuilder
    //   335: dup
    //   336: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   339: aload 4
    //   341: invokevirtual 178	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   344: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: ldc 120
    //   349: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   352: aload_0
    //   353: getfield 45	com/estrongs/android/pop/app/editor/c:e	Ljava/lang/String;
    //   356: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   359: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   362: invokespecial 124	java/io/File:<init>	(Ljava/lang/String;)V
    //   365: astore 4
    //   367: goto -254 -> 113
    //   370: aload_1
    //   371: ifnull +7 -> 378
    //   374: aload_1
    //   375: invokevirtual 170	java/io/InputStream:close	()V
    //   378: aload 4
    //   380: astore 6
    //   382: aload 5
    //   384: ifnull -366 -> 18
    //   387: aload 5
    //   389: invokevirtual 171	java/io/OutputStream:close	()V
    //   392: aload 4
    //   394: areturn
    //   395: aload_1
    //   396: ifnull +7 -> 403
    //   399: aload_1
    //   400: invokevirtual 170	java/io/InputStream:close	()V
    //   403: aload 7
    //   405: ifnull +8 -> 413
    //   408: aload 7
    //   410: invokevirtual 171	java/io/OutputStream:close	()V
    //   413: aload 4
    //   415: athrow
    //   416: astore 4
    //   418: aconst_null
    //   419: astore 7
    //   421: goto -26 -> 395
    //   424: astore 4
    //   426: aload 6
    //   428: astore_1
    //   429: goto -34 -> 395
    //   432: astore 8
    //   434: aconst_null
    //   435: astore 5
    //   437: aconst_null
    //   438: astore_1
    //   439: goto -215 -> 224
    //   442: astore 8
    //   444: aconst_null
    //   445: astore 5
    //   447: goto -223 -> 224
    //   450: aconst_null
    //   451: astore 4
    //   453: goto -340 -> 113
    //   456: astore 4
    //   458: aconst_null
    //   459: astore 7
    //   461: aconst_null
    //   462: astore_1
    //   463: goto -68 -> 395
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	466	0	this	c
    //   0	466	1	paramString	String
    //   1	218	2	m	int
    //   194	24	3	n	int
    //   60	354	4	localFile	File
    //   416	1	4	localObject1	Object
    //   424	1	4	localObject2	Object
    //   451	1	4	localObject3	Object
    //   456	1	4	localObject4	Object
    //   160	286	5	localObject5	Object
    //   16	411	6	localObject6	Object
    //   164	296	7	localObject7	Object
    //   174	37	8	arrayOfByte	byte[]
    //   222	10	8	localException1	Exception
    //   432	1	8	localException2	Exception
    //   442	1	8	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   169	176	222	java/lang/Exception
    //   188	195	222	java/lang/Exception
    //   208	217	222	java/lang/Exception
    //   21	76	261	java/lang/Exception
    //   76	113	261	java/lang/Exception
    //   122	136	261	java/lang/Exception
    //   240	244	261	java/lang/Exception
    //   253	258	261	java/lang/Exception
    //   268	277	261	java/lang/Exception
    //   282	328	261	java/lang/Exception
    //   328	367	261	java/lang/Exception
    //   374	378	261	java/lang/Exception
    //   387	392	261	java/lang/Exception
    //   399	403	261	java/lang/Exception
    //   408	413	261	java/lang/Exception
    //   413	416	261	java/lang/Exception
    //   151	162	416	finally
    //   169	176	424	finally
    //   188	195	424	finally
    //   208	217	424	finally
    //   231	236	424	finally
    //   136	151	432	java/lang/Exception
    //   151	162	442	java/lang/Exception
    //   136	151	456	finally
  }
  
  /* Error */
  private String a(android.content.ContentResolver paramContentResolver, Uri paramUri)
  {
    // Byte code:
    //   0: aload_1
    //   1: aload_2
    //   2: iconst_1
    //   3: anewarray 71	java/lang/String
    //   6: dup
    //   7: iconst_0
    //   8: ldc -76
    //   10: aastore
    //   11: aconst_null
    //   12: aconst_null
    //   13: aconst_null
    //   14: invokevirtual 184	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   17: astore_1
    //   18: aload_1
    //   19: invokeinterface 189 1 0
    //   24: pop
    //   25: aload_1
    //   26: ldc -76
    //   28: invokeinterface 193 2 0
    //   33: istore_3
    //   34: iload_3
    //   35: iflt +23 -> 58
    //   38: aload_1
    //   39: iload_3
    //   40: invokeinterface 197 2 0
    //   45: astore_2
    //   46: aload_1
    //   47: ifnull +9 -> 56
    //   50: aload_1
    //   51: invokeinterface 198 1 0
    //   56: aload_2
    //   57: areturn
    //   58: aload_1
    //   59: ifnull +9 -> 68
    //   62: aload_1
    //   63: invokeinterface 198 1 0
    //   68: aconst_null
    //   69: areturn
    //   70: astore_1
    //   71: aconst_null
    //   72: astore_1
    //   73: aload_1
    //   74: ifnull +9 -> 83
    //   77: aload_1
    //   78: invokeinterface 198 1 0
    //   83: aconst_null
    //   84: areturn
    //   85: astore_2
    //   86: aconst_null
    //   87: astore_1
    //   88: aload_1
    //   89: ifnull +9 -> 98
    //   92: aload_1
    //   93: invokeinterface 198 1 0
    //   98: aload_2
    //   99: athrow
    //   100: astore_2
    //   101: goto -13 -> 88
    //   104: astore_2
    //   105: goto -32 -> 73
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	c
    //   0	108	1	paramContentResolver	android.content.ContentResolver
    //   0	108	2	paramUri	Uri
    //   33	7	3	m	int
    // Exception table:
    //   from	to	target	type
    //   0	18	70	java/lang/Exception
    //   0	18	85	finally
    //   18	34	100	finally
    //   38	46	100	finally
    //   18	34	104	java/lang/Exception
    //   38	46	104	java/lang/Exception
  }
  
  public String a()
  {
    return e;
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      Object localObject2 = d;
      Object localObject1 = localObject2;
      if (((String)localObject2).startsWith("file:///")) {
        localObject1 = Uri.decode((String)localObject2);
      }
      if (paramBoolean)
      {
        localObject2 = new ArrayList(1);
        ((List)localObject2).add(d.a(c).j((String)localObject1));
        new ab(d.a(c), (List)localObject2, false, paramBoolean).execute(false);
      }
      for (;;)
      {
        localObject1 = a.a(c, g);
        if ((localObject1 != null) && (((a)localObject1).f())) {
          i.a(c, ((a)localObject1).g(), null);
        }
        ((a)localObject1).c();
        localObject1 = a.a(c, h);
        if ((localObject1 != null) && (((a)localObject1).f())) {
          i.a(c, ((a)localObject1).g(), null);
        }
        ((a)localObject1).c();
        localObject1 = a.a(c, i);
        if ((localObject1 != null) && (((a)localObject1).f())) {
          i.a(c, ((a)localObject1).g(), null);
        }
        ((a)localObject1).c();
        return;
        d.a(c).a((String)localObject1, null);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public long b()
  {
    try
    {
      if (ap.bC(g.getAbsolutePath())) {}
      for (Object localObject = new File(ap.bU(g.getAbsolutePath()));; localObject = Environment.getRootDirectory())
      {
        localObject = new StatFs(((File)localObject).getAbsolutePath());
        long l1 = ((StatFs)localObject).getBlockSize();
        return ((StatFs)localObject).getAvailableBlocks() * l1;
      }
      return 0L;
    }
    catch (Exception localException) {}
  }
  
  /* Error */
  public File c()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 57	com/estrongs/android/pop/app/editor/c:k	Z
    //   4: ifeq +515 -> 519
    //   7: aload_0
    //   8: getfield 41	com/estrongs/android/pop/app/editor/c:c	Landroid/content/Context;
    //   11: invokestatic 211	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   14: aload_0
    //   15: getfield 43	com/estrongs/android/pop/app/editor/c:d	Ljava/lang/String;
    //   18: invokevirtual 271	com/estrongs/fs/d:e	(Ljava/lang/String;)Ljava/io/InputStream;
    //   21: astore 5
    //   23: aload 5
    //   25: ifnonnull +46 -> 71
    //   28: aload 5
    //   30: ifnull +8 -> 38
    //   33: aload 5
    //   35: invokevirtual 170	java/io/InputStream:close	()V
    //   38: iconst_0
    //   39: ifeq +11 -> 50
    //   42: new 273	java/lang/NullPointerException
    //   45: dup
    //   46: invokespecial 274	java/lang/NullPointerException:<init>	()V
    //   49: athrow
    //   50: aconst_null
    //   51: areturn
    //   52: astore 5
    //   54: aload 5
    //   56: invokevirtual 275	java/io/IOException:printStackTrace	()V
    //   59: goto -21 -> 38
    //   62: astore 5
    //   64: aload 5
    //   66: invokevirtual 275	java/io/IOException:printStackTrace	()V
    //   69: aconst_null
    //   70: areturn
    //   71: new 111	java/io/File
    //   74: dup
    //   75: aload_0
    //   76: getfield 62	com/estrongs/android/pop/app/editor/c:l	Ljava/lang/String;
    //   79: invokespecial 124	java/io/File:<init>	(Ljava/lang/String;)V
    //   82: astore 6
    //   84: aload 6
    //   86: invokevirtual 128	java/io/File:exists	()Z
    //   89: ifne +9 -> 98
    //   92: aload 6
    //   94: invokevirtual 131	java/io/File:mkdirs	()Z
    //   97: pop
    //   98: new 113	java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   105: aload_0
    //   106: getfield 62	com/estrongs/android/pop/app/editor/c:l	Ljava/lang/String;
    //   109: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: ldc_w 277
    //   115: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: aload_0
    //   119: getfield 45	com/estrongs/android/pop/app/editor/c:e	Ljava/lang/String;
    //   122: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: astore 6
    //   130: aload_0
    //   131: new 111	java/io/File
    //   134: dup
    //   135: aload 6
    //   137: invokespecial 124	java/io/File:<init>	(Ljava/lang/String;)V
    //   140: putfield 49	com/estrongs/android/pop/app/editor/c:g	Ljava/io/File;
    //   143: aload_0
    //   144: getfield 49	com/estrongs/android/pop/app/editor/c:g	Ljava/io/File;
    //   147: invokevirtual 128	java/io/File:exists	()Z
    //   150: ifeq +11 -> 161
    //   153: aload_0
    //   154: getfield 49	com/estrongs/android/pop/app/editor/c:g	Ljava/io/File;
    //   157: invokevirtual 134	java/io/File:delete	()Z
    //   160: pop
    //   161: aload_0
    //   162: getfield 41	com/estrongs/android/pop/app/editor/c:c	Landroid/content/Context;
    //   165: invokestatic 211	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   168: aload_0
    //   169: getfield 43	com/estrongs/android/pop/app/editor/c:d	Ljava/lang/String;
    //   172: invokevirtual 280	com/estrongs/fs/d:d	(Ljava/lang/String;)J
    //   175: lstore_3
    //   176: aload_0
    //   177: invokevirtual 282	com/estrongs/android/pop/app/editor/c:b	()J
    //   180: lload_3
    //   181: lcmp
    //   182: ifgt +190 -> 372
    //   185: getstatic 30	com/estrongs/android/pop/app/editor/c:a	Ljava/lang/String;
    //   188: new 113	java/lang/StringBuilder
    //   191: dup
    //   192: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   195: ldc_w 284
    //   198: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: aload_0
    //   202: invokevirtual 282	com/estrongs/android/pop/app/editor/c:b	()J
    //   205: invokevirtual 287	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   208: ldc_w 289
    //   211: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: lload_3
    //   215: invokevirtual 287	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   218: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   221: invokestatic 294	com/estrongs/android/util/l:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   224: new 268	java/io/IOException
    //   227: dup
    //   228: aload_0
    //   229: getfield 41	com/estrongs/android/pop/app/editor/c:c	Landroid/content/Context;
    //   232: ldc_w 295
    //   235: invokevirtual 296	android/content/Context:getString	(I)Ljava/lang/String;
    //   238: invokespecial 297	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   241: athrow
    //   242: astore 8
    //   244: aconst_null
    //   245: astore 6
    //   247: aload 6
    //   249: astore 7
    //   251: aload 5
    //   253: astore 9
    //   255: aload 8
    //   257: invokevirtual 167	java/lang/Exception:printStackTrace	()V
    //   260: aload 6
    //   262: astore 7
    //   264: aload 5
    //   266: astore 9
    //   268: aload_0
    //   269: getfield 49	com/estrongs/android/pop/app/editor/c:g	Ljava/io/File;
    //   272: ifnull +37 -> 309
    //   275: aload 6
    //   277: astore 7
    //   279: aload 5
    //   281: astore 9
    //   283: aload_0
    //   284: getfield 49	com/estrongs/android/pop/app/editor/c:g	Ljava/io/File;
    //   287: invokevirtual 128	java/io/File:exists	()Z
    //   290: ifeq +19 -> 309
    //   293: aload 6
    //   295: astore 7
    //   297: aload 5
    //   299: astore 9
    //   301: aload_0
    //   302: getfield 49	com/estrongs/android/pop/app/editor/c:g	Ljava/io/File;
    //   305: invokevirtual 134	java/io/File:delete	()Z
    //   308: pop
    //   309: aload 6
    //   311: astore 7
    //   313: aload 5
    //   315: astore 9
    //   317: aload_0
    //   318: aconst_null
    //   319: putfield 49	com/estrongs/android/pop/app/editor/c:g	Ljava/io/File;
    //   322: aload 6
    //   324: astore 7
    //   326: aload 5
    //   328: astore 9
    //   330: new 268	java/io/IOException
    //   333: dup
    //   334: aload 8
    //   336: invokevirtual 300	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   339: invokespecial 297	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   342: athrow
    //   343: astore 6
    //   345: aload 9
    //   347: astore 5
    //   349: aload 5
    //   351: ifnull +8 -> 359
    //   354: aload 5
    //   356: invokevirtual 170	java/io/InputStream:close	()V
    //   359: aload 7
    //   361: ifnull +8 -> 369
    //   364: aload 7
    //   366: invokevirtual 301	java/io/FileOutputStream:close	()V
    //   369: aload 6
    //   371: athrow
    //   372: new 149	java/io/FileOutputStream
    //   375: dup
    //   376: aload 6
    //   378: invokespecial 302	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   381: astore 6
    //   383: aload 6
    //   385: astore 7
    //   387: aload 5
    //   389: astore 9
    //   391: sipush 4096
    //   394: newarray <illegal type>
    //   396: astore 8
    //   398: iconst_0
    //   399: istore_1
    //   400: iload_1
    //   401: iconst_m1
    //   402: if_icmpeq +52 -> 454
    //   405: aload 6
    //   407: astore 7
    //   409: aload 5
    //   411: astore 9
    //   413: aload 5
    //   415: aload 8
    //   417: invokevirtual 158	java/io/InputStream:read	([B)I
    //   420: istore_2
    //   421: iload_2
    //   422: istore_1
    //   423: iload_2
    //   424: ifle -24 -> 400
    //   427: aload 6
    //   429: astore 7
    //   431: aload 5
    //   433: astore 9
    //   435: aload 6
    //   437: aload 8
    //   439: iconst_0
    //   440: iload_2
    //   441: invokevirtual 303	java/io/FileOutputStream:write	([BII)V
    //   444: iload_2
    //   445: istore_1
    //   446: goto -46 -> 400
    //   449: astore 8
    //   451: goto -204 -> 247
    //   454: aload 5
    //   456: ifnull +8 -> 464
    //   459: aload 5
    //   461: invokevirtual 170	java/io/InputStream:close	()V
    //   464: aload 6
    //   466: ifnull +8 -> 474
    //   469: aload 6
    //   471: invokevirtual 301	java/io/FileOutputStream:close	()V
    //   474: aload_0
    //   475: getfield 49	com/estrongs/android/pop/app/editor/c:g	Ljava/io/File;
    //   478: areturn
    //   479: astore 5
    //   481: aload 5
    //   483: invokevirtual 275	java/io/IOException:printStackTrace	()V
    //   486: goto -22 -> 464
    //   489: astore 5
    //   491: aload 5
    //   493: invokevirtual 275	java/io/IOException:printStackTrace	()V
    //   496: goto -22 -> 474
    //   499: astore 5
    //   501: aload 5
    //   503: invokevirtual 275	java/io/IOException:printStackTrace	()V
    //   506: goto -147 -> 359
    //   509: astore 5
    //   511: aload 5
    //   513: invokevirtual 275	java/io/IOException:printStackTrace	()V
    //   516: goto -147 -> 369
    //   519: aload_0
    //   520: getfield 43	com/estrongs/android/pop/app/editor/c:d	Ljava/lang/String;
    //   523: invokestatic 141	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   526: astore 5
    //   528: aload_0
    //   529: getfield 55	com/estrongs/android/pop/app/editor/c:j	Z
    //   532: ifeq +18 -> 550
    //   535: aload_0
    //   536: aload_0
    //   537: aload_0
    //   538: getfield 43	com/estrongs/android/pop/app/editor/c:d	Ljava/lang/String;
    //   541: invokespecial 305	com/estrongs/android/pop/app/editor/c:a	(Ljava/lang/String;)Ljava/io/File;
    //   544: putfield 49	com/estrongs/android/pop/app/editor/c:g	Ljava/io/File;
    //   547: goto -73 -> 474
    //   550: aload_0
    //   551: new 111	java/io/File
    //   554: dup
    //   555: aload 5
    //   557: invokevirtual 308	android/net/Uri:getPath	()Ljava/lang/String;
    //   560: invokespecial 124	java/io/File:<init>	(Ljava/lang/String;)V
    //   563: putfield 49	com/estrongs/android/pop/app/editor/c:g	Ljava/io/File;
    //   566: goto -92 -> 474
    //   569: astore 6
    //   571: aconst_null
    //   572: astore 5
    //   574: aconst_null
    //   575: astore 7
    //   577: goto -228 -> 349
    //   580: astore 6
    //   582: aconst_null
    //   583: astore 7
    //   585: goto -236 -> 349
    //   588: astore 8
    //   590: aconst_null
    //   591: astore 5
    //   593: aconst_null
    //   594: astore 6
    //   596: goto -349 -> 247
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	599	0	this	c
    //   399	47	1	m	int
    //   420	25	2	n	int
    //   175	40	3	l1	long
    //   21	13	5	localInputStream	InputStream
    //   52	3	5	localIOException1	IOException
    //   62	265	5	localIOException2	IOException
    //   347	113	5	localObject1	Object
    //   479	3	5	localIOException3	IOException
    //   489	3	5	localIOException4	IOException
    //   499	3	5	localIOException5	IOException
    //   509	3	5	localIOException6	IOException
    //   526	66	5	localUri	Uri
    //   82	241	6	localObject2	Object
    //   343	34	6	str	String
    //   381	89	6	localFileOutputStream	java.io.FileOutputStream
    //   569	1	6	localObject3	Object
    //   580	1	6	localObject4	Object
    //   594	1	6	localObject5	Object
    //   249	335	7	localObject6	Object
    //   242	93	8	localException1	Exception
    //   396	42	8	arrayOfByte	byte[]
    //   449	1	8	localException2	Exception
    //   588	1	8	localException3	Exception
    //   253	181	9	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   33	38	52	java/io/IOException
    //   42	50	62	java/io/IOException
    //   71	98	242	java/lang/Exception
    //   98	161	242	java/lang/Exception
    //   161	242	242	java/lang/Exception
    //   372	383	242	java/lang/Exception
    //   255	260	343	finally
    //   268	275	343	finally
    //   283	293	343	finally
    //   301	309	343	finally
    //   317	322	343	finally
    //   330	343	343	finally
    //   391	398	343	finally
    //   413	421	343	finally
    //   435	444	343	finally
    //   391	398	449	java/lang/Exception
    //   413	421	449	java/lang/Exception
    //   435	444	449	java/lang/Exception
    //   459	464	479	java/io/IOException
    //   469	474	489	java/io/IOException
    //   354	359	499	java/io/IOException
    //   364	369	509	java/io/IOException
    //   7	23	569	finally
    //   71	98	580	finally
    //   98	161	580	finally
    //   161	242	580	finally
    //   372	383	580	finally
    //   7	23	588	java/lang/Exception
  }
  
  public File d()
  {
    if (g == null)
    {
      l.e(a, "source file is not created");
      throw new IOException("source file is not created");
    }
    Object localObject;
    if (h == null)
    {
      if (!a.a(g.getAbsolutePath())) {
        break label236;
      }
      if (!Environment.getExternalStorageState().equals("mounted")) {
        break label132;
      }
      localObject = new File(com.estrongs.android.pop.a.f);
      if (!((File)localObject).exists()) {
        ((File)localObject).mkdirs();
      }
      h = new File(com.estrongs.android.pop.a.f + "/" + e + ".tmp");
    }
    for (;;)
    {
      return h;
      label132:
      localObject = g.getParent() + "/" + e + ".tmp";
      File localFile = c.getFilesDir();
      if (localFile != null) {
        localObject = localFile.getAbsolutePath() + "/" + e + ".tmp";
      }
      h = new File((String)localObject);
      continue;
      label236:
      h = new File(g.getParent() + "/" + e + ".tmp");
    }
  }
  
  /* Error */
  public void e()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore_3
    //   5: aconst_null
    //   6: astore 4
    //   8: aconst_null
    //   9: astore 7
    //   11: iconst_0
    //   12: istore_1
    //   13: aload_0
    //   14: getfield 57	com/estrongs/android/pop/app/editor/c:k	Z
    //   17: ifeq +205 -> 222
    //   20: new 319	java/io/FileInputStream
    //   23: dup
    //   24: aload_0
    //   25: getfield 49	com/estrongs/android/pop/app/editor/c:g	Ljava/io/File;
    //   28: invokespecial 320	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   31: astore 6
    //   33: aload 7
    //   35: astore 5
    //   37: aload 6
    //   39: astore 4
    //   41: aload_0
    //   42: getfield 41	com/estrongs/android/pop/app/editor/c:c	Landroid/content/Context;
    //   45: invokestatic 211	com/estrongs/fs/d:a	(Landroid/content/Context;)Lcom/estrongs/fs/d;
    //   48: aload_0
    //   49: getfield 43	com/estrongs/android/pop/app/editor/c:d	Ljava/lang/String;
    //   52: aload_0
    //   53: getfield 49	com/estrongs/android/pop/app/editor/c:g	Ljava/io/File;
    //   56: invokevirtual 323	java/io/File:length	()J
    //   59: l2i
    //   60: i2l
    //   61: invokevirtual 326	com/estrongs/fs/d:b	(Ljava/lang/String;J)Ljava/io/OutputStream;
    //   64: astore 7
    //   66: aload 7
    //   68: astore 5
    //   70: aload 7
    //   72: astore_3
    //   73: aload 6
    //   75: astore 4
    //   77: sipush 4096
    //   80: newarray <illegal type>
    //   82: astore 8
    //   84: iload_1
    //   85: iconst_m1
    //   86: if_icmpeq +116 -> 202
    //   89: aload 7
    //   91: astore 5
    //   93: aload 7
    //   95: astore_3
    //   96: aload 6
    //   98: astore 4
    //   100: aload 6
    //   102: aload 8
    //   104: invokevirtual 327	java/io/FileInputStream:read	([B)I
    //   107: istore_2
    //   108: iload_2
    //   109: istore_1
    //   110: iload_2
    //   111: ifle -27 -> 84
    //   114: aload 7
    //   116: astore 5
    //   118: aload 7
    //   120: astore_3
    //   121: aload 6
    //   123: astore 4
    //   125: aload 7
    //   127: aload 8
    //   129: iconst_0
    //   130: iload_2
    //   131: invokevirtual 164	java/io/OutputStream:write	([BII)V
    //   134: iload_2
    //   135: istore_1
    //   136: goto -52 -> 84
    //   139: astore 7
    //   141: aload 5
    //   143: astore_3
    //   144: aload 6
    //   146: astore 4
    //   148: aload 7
    //   150: invokevirtual 167	java/lang/Exception:printStackTrace	()V
    //   153: aload 5
    //   155: astore_3
    //   156: aload 6
    //   158: astore 4
    //   160: new 268	java/io/IOException
    //   163: dup
    //   164: invokespecial 328	java/io/IOException:<init>	()V
    //   167: athrow
    //   168: astore 6
    //   170: aload 4
    //   172: astore 5
    //   174: aload_3
    //   175: astore 4
    //   177: aload 6
    //   179: astore_3
    //   180: aload 5
    //   182: ifnull +8 -> 190
    //   185: aload 5
    //   187: invokevirtual 329	java/io/FileInputStream:close	()V
    //   190: aload 4
    //   192: ifnull +8 -> 200
    //   195: aload 4
    //   197: invokevirtual 171	java/io/OutputStream:close	()V
    //   200: aload_3
    //   201: athrow
    //   202: aload 6
    //   204: ifnull +8 -> 212
    //   207: aload 6
    //   209: invokevirtual 329	java/io/FileInputStream:close	()V
    //   212: aload 7
    //   214: ifnull +8 -> 222
    //   217: aload 7
    //   219: invokevirtual 171	java/io/OutputStream:close	()V
    //   222: return
    //   223: astore_3
    //   224: aload_3
    //   225: invokevirtual 275	java/io/IOException:printStackTrace	()V
    //   228: goto -16 -> 212
    //   231: astore_3
    //   232: aload_3
    //   233: invokevirtual 275	java/io/IOException:printStackTrace	()V
    //   236: return
    //   237: astore 5
    //   239: aload 5
    //   241: invokevirtual 275	java/io/IOException:printStackTrace	()V
    //   244: goto -54 -> 190
    //   247: astore 4
    //   249: aload 4
    //   251: invokevirtual 275	java/io/IOException:printStackTrace	()V
    //   254: goto -54 -> 200
    //   257: astore_3
    //   258: aconst_null
    //   259: astore 5
    //   261: goto -81 -> 180
    //   264: astore 7
    //   266: aconst_null
    //   267: astore 6
    //   269: goto -128 -> 141
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	272	0	this	c
    //   12	124	1	m	int
    //   107	28	2	n	int
    //   4	197	3	localObject1	Object
    //   223	2	3	localIOException1	IOException
    //   231	2	3	localIOException2	IOException
    //   257	1	3	localObject2	Object
    //   6	190	4	localObject3	Object
    //   247	3	4	localIOException3	IOException
    //   1	185	5	localObject4	Object
    //   237	3	5	localIOException4	IOException
    //   259	1	5	localObject5	Object
    //   31	126	6	localFileInputStream	java.io.FileInputStream
    //   168	40	6	localObject6	Object
    //   267	1	6	localObject7	Object
    //   9	117	7	localOutputStream	java.io.OutputStream
    //   139	79	7	localException1	Exception
    //   264	1	7	localException2	Exception
    //   82	46	8	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   41	66	139	java/lang/Exception
    //   77	84	139	java/lang/Exception
    //   100	108	139	java/lang/Exception
    //   125	134	139	java/lang/Exception
    //   41	66	168	finally
    //   77	84	168	finally
    //   100	108	168	finally
    //   125	134	168	finally
    //   148	153	168	finally
    //   160	168	168	finally
    //   207	212	223	java/io/IOException
    //   217	222	231	java/io/IOException
    //   185	190	237	java/io/IOException
    //   195	200	247	java/io/IOException
    //   20	33	257	finally
    //   20	33	264	java/lang/Exception
  }
  
  public String f()
  {
    return d;
  }
  
  public String g()
  {
    if (g == null)
    {
      l.e(a, "source file is not created");
      throw new IOException("source file is not created");
    }
    a locala = a.a(c, g, "r");
    InputStream localInputStream = locala.d();
    String str = e.a(localInputStream);
    localInputStream.close();
    locala.c();
    if ((str != null) && (Charset.isSupported(str))) {
      return str;
    }
    return ad.a(c).w(e.a());
  }
  
  public long h()
  {
    a locala = a.a(c, g, "r");
    try
    {
      long l1 = locala.b();
      try
      {
        locala.c();
        return l1;
      }
      catch (IOException localIOException1)
      {
        localIOException1.printStackTrace();
        return l1;
      }
      try
      {
        localIOException2.c();
        throw ((Throwable)localObject);
      }
      catch (IOException localIOException3)
      {
        for (;;)
        {
          localIOException3.printStackTrace();
        }
      }
    }
    catch (IOException localIOException4)
    {
      localIOException4 = localIOException4;
      localIOException4.printStackTrace();
      try
      {
        localIOException1.c();
        return 0L;
      }
      catch (IOException localIOException2)
      {
        localIOException2.printStackTrace();
        return 0L;
      }
    }
    finally {}
  }
  
  public boolean i()
  {
    return d.contains(com.estrongs.android.pop.a.l + "/");
  }
  
  public void j()
  {
    if ((j) && (g != null)) {
      g.delete();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.editor.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */