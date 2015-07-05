package com.estrongs.android.pop.app.imageviewer;

import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import com.estrongs.android.pop.app.imageviewer.gallery.e;

public class ao
{
  public static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i = b(paramOptions, paramInt1, paramInt2);
    if (i <= 8)
    {
      paramInt1 = 1;
      for (;;)
      {
        paramInt2 = paramInt1;
        if (paramInt1 >= i) {
          break;
        }
        paramInt1 <<= 1;
      }
    }
    paramInt2 = (i + 7) / 8 * 8;
    return paramInt2;
  }
  
  public static Intent a(e parame)
  {
    Uri localUri = parame.f();
    Intent localIntent = new Intent("android.intent.action.ATTACH_DATA");
    localIntent.setDataAndType(localUri, parame.k());
    localIntent.putExtra("mimeType", parame.k());
    return localIntent;
  }
  
  /* Error */
  public static Bitmap a(int paramInt1, int paramInt2, Uri paramUri, ContentResolver paramContentResolver, ParcelFileDescriptor paramParcelFileDescriptor, BitmapFactory.Options paramOptions)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 7
    //   3: aload 4
    //   5: astore 8
    //   7: aload 4
    //   9: ifnonnull +14 -> 23
    //   12: aload 4
    //   14: astore 9
    //   16: aload_2
    //   17: aload_3
    //   18: invokestatic 45	com/estrongs/android/pop/app/imageviewer/ao:a	(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    //   21: astore 8
    //   23: aload 8
    //   25: ifnonnull +10 -> 35
    //   28: aload 8
    //   30: invokestatic 50	com/estrongs/fs/util/j:a	(Landroid/os/ParcelFileDescriptor;)V
    //   33: aconst_null
    //   34: areturn
    //   35: aload 5
    //   37: astore_2
    //   38: aload 5
    //   40: ifnonnull +19 -> 59
    //   43: aload 8
    //   45: astore 9
    //   47: aload 8
    //   49: astore 4
    //   51: new 52	android/graphics/BitmapFactory$Options
    //   54: dup
    //   55: invokespecial 55	android/graphics/BitmapFactory$Options:<init>	()V
    //   58: astore_2
    //   59: aload 8
    //   61: astore 9
    //   63: aload 8
    //   65: astore 4
    //   67: aload 8
    //   69: invokevirtual 61	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   72: astore_3
    //   73: aload 8
    //   75: astore 9
    //   77: aload 8
    //   79: astore 4
    //   81: aload_2
    //   82: iconst_1
    //   83: putfield 65	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   86: aload 8
    //   88: astore 9
    //   90: aload 8
    //   92: astore 4
    //   94: invokestatic 70	com/estrongs/android/pop/app/imageviewer/BitmapManager:a	()Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;
    //   97: aload_3
    //   98: aload_2
    //   99: invokevirtual 73	com/estrongs/android/pop/app/imageviewer/BitmapManager:a	(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   102: pop
    //   103: aload 8
    //   105: astore 9
    //   107: aload 8
    //   109: astore 4
    //   111: aload_2
    //   112: getfield 76	android/graphics/BitmapFactory$Options:mCancel	Z
    //   115: ifne +39 -> 154
    //   118: aload 8
    //   120: astore 9
    //   122: aload 8
    //   124: astore 4
    //   126: aload_2
    //   127: getfield 80	android/graphics/BitmapFactory$Options:outWidth	I
    //   130: iconst_m1
    //   131: if_icmpeq +23 -> 154
    //   134: aload 8
    //   136: astore 9
    //   138: aload 8
    //   140: astore 4
    //   142: aload_2
    //   143: getfield 83	android/graphics/BitmapFactory$Options:outHeight	I
    //   146: istore 6
    //   148: iload 6
    //   150: iconst_m1
    //   151: if_icmpne +10 -> 161
    //   154: aload 8
    //   156: invokestatic 50	com/estrongs/fs/util/j:a	(Landroid/os/ParcelFileDescriptor;)V
    //   159: aconst_null
    //   160: areturn
    //   161: aload 8
    //   163: astore 9
    //   165: aload 8
    //   167: astore 4
    //   169: aload_2
    //   170: aload_2
    //   171: iload_0
    //   172: iload_1
    //   173: invokestatic 85	com/estrongs/android/pop/app/imageviewer/ao:a	(Landroid/graphics/BitmapFactory$Options;II)I
    //   176: putfield 88	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   179: aload 8
    //   181: astore 9
    //   183: aload 8
    //   185: astore 4
    //   187: aload_2
    //   188: iconst_0
    //   189: putfield 65	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   192: aload 8
    //   194: astore 9
    //   196: aload 8
    //   198: astore 4
    //   200: aload_2
    //   201: iconst_0
    //   202: putfield 91	android/graphics/BitmapFactory$Options:inDither	Z
    //   205: aload 8
    //   207: astore 9
    //   209: aload 8
    //   211: astore 4
    //   213: getstatic 96	com/estrongs/android/pop/z:x	Z
    //   216: ifne +101 -> 317
    //   219: aload 8
    //   221: astore 9
    //   223: aload 8
    //   225: astore 4
    //   227: aload_2
    //   228: iload 7
    //   230: putfield 99	android/graphics/BitmapFactory$Options:inPurgeable	Z
    //   233: aload 8
    //   235: astore 9
    //   237: aload 8
    //   239: astore 4
    //   241: aload_2
    //   242: iconst_1
    //   243: putfield 102	android/graphics/BitmapFactory$Options:inInputShareable	Z
    //   246: aload 8
    //   248: astore 9
    //   250: aload 8
    //   252: astore 4
    //   254: aload_2
    //   255: ldc 103
    //   257: newarray <illegal type>
    //   259: putfield 107	android/graphics/BitmapFactory$Options:inTempStorage	[B
    //   262: aload 8
    //   264: astore 9
    //   266: aload 8
    //   268: astore 4
    //   270: getstatic 112	android/os/Build$VERSION:SDK_INT	I
    //   273: bipush 14
    //   275: if_icmplt +48 -> 323
    //   278: aload 8
    //   280: astore 9
    //   282: aload 8
    //   284: astore 4
    //   286: aload_2
    //   287: getstatic 118	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   290: putfield 121	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
    //   293: aload 8
    //   295: astore 9
    //   297: aload 8
    //   299: astore 4
    //   301: invokestatic 70	com/estrongs/android/pop/app/imageviewer/BitmapManager:a	()Lcom/estrongs/android/pop/app/imageviewer/BitmapManager;
    //   304: aload_3
    //   305: aload_2
    //   306: invokevirtual 73	com/estrongs/android/pop/app/imageviewer/BitmapManager:a	(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   309: astore_2
    //   310: aload 8
    //   312: invokestatic 50	com/estrongs/fs/util/j:a	(Landroid/os/ParcelFileDescriptor;)V
    //   315: aload_2
    //   316: areturn
    //   317: iconst_0
    //   318: istore 7
    //   320: goto -101 -> 219
    //   323: aload 8
    //   325: astore 9
    //   327: aload 8
    //   329: astore 4
    //   331: aload_2
    //   332: getstatic 124	android/graphics/Bitmap$Config:RGB_565	Landroid/graphics/Bitmap$Config;
    //   335: putfield 121	android/graphics/BitmapFactory$Options:inPreferredConfig	Landroid/graphics/Bitmap$Config;
    //   338: goto -45 -> 293
    //   341: astore_2
    //   342: aload 9
    //   344: astore 4
    //   346: aload_2
    //   347: instanceof 126
    //   350: ifeq +16 -> 366
    //   353: aload 9
    //   355: astore 4
    //   357: ldc -128
    //   359: ldc -126
    //   361: aload_2
    //   362: invokestatic 136	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   365: pop
    //   366: aload 9
    //   368: invokestatic 50	com/estrongs/fs/util/j:a	(Landroid/os/ParcelFileDescriptor;)V
    //   371: aconst_null
    //   372: areturn
    //   373: astore_2
    //   374: aload 4
    //   376: invokestatic 50	com/estrongs/fs/util/j:a	(Landroid/os/ParcelFileDescriptor;)V
    //   379: aload_2
    //   380: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	381	0	paramInt1	int
    //   0	381	1	paramInt2	int
    //   0	381	2	paramUri	Uri
    //   0	381	3	paramContentResolver	ContentResolver
    //   0	381	4	paramParcelFileDescriptor	ParcelFileDescriptor
    //   0	381	5	paramOptions	BitmapFactory.Options
    //   146	6	6	i	int
    //   1	318	7	bool	boolean
    //   5	323	8	localParcelFileDescriptor1	ParcelFileDescriptor
    //   14	353	9	localParcelFileDescriptor2	ParcelFileDescriptor
    // Exception table:
    //   from	to	target	type
    //   16	23	341	java/lang/Throwable
    //   51	59	341	java/lang/Throwable
    //   67	73	341	java/lang/Throwable
    //   81	86	341	java/lang/Throwable
    //   94	103	341	java/lang/Throwable
    //   111	118	341	java/lang/Throwable
    //   126	134	341	java/lang/Throwable
    //   142	148	341	java/lang/Throwable
    //   169	179	341	java/lang/Throwable
    //   187	192	341	java/lang/Throwable
    //   200	205	341	java/lang/Throwable
    //   213	219	341	java/lang/Throwable
    //   227	233	341	java/lang/Throwable
    //   241	246	341	java/lang/Throwable
    //   254	262	341	java/lang/Throwable
    //   270	278	341	java/lang/Throwable
    //   286	293	341	java/lang/Throwable
    //   301	310	341	java/lang/Throwable
    //   331	338	341	java/lang/Throwable
    //   16	23	373	finally
    //   51	59	373	finally
    //   67	73	373	finally
    //   81	86	373	finally
    //   94	103	373	finally
    //   111	118	373	finally
    //   126	134	373	finally
    //   142	148	373	finally
    //   169	179	373	finally
    //   187	192	373	finally
    //   200	205	373	finally
    //   213	219	373	finally
    //   227	233	373	finally
    //   241	246	373	finally
    //   254	262	373	finally
    //   270	278	373	finally
    //   286	293	373	finally
    //   301	310	373	finally
    //   331	338	373	finally
    //   346	353	373	finally
    //   357	366	373	finally
  }
  
  /* Error */
  public static Bitmap a(int paramInt1, int paramInt2, Uri paramUri, ContentResolver paramContentResolver, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_3
    //   1: aload_2
    //   2: ldc -115
    //   4: invokevirtual 147	android/content/ContentResolver:openFileDescriptor	(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    //   7: astore 5
    //   9: iload 4
    //   11: ifeq +57 -> 68
    //   14: invokestatic 150	com/estrongs/android/pop/app/imageviewer/ao:a	()Landroid/graphics/BitmapFactory$Options;
    //   17: astore 6
    //   19: iload_0
    //   20: iload_1
    //   21: aload_2
    //   22: aload_3
    //   23: aload 5
    //   25: aload 6
    //   27: invokestatic 152	com/estrongs/android/pop/app/imageviewer/ao:a	(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   30: astore_2
    //   31: aload 5
    //   33: invokestatic 50	com/estrongs/fs/util/j:a	(Landroid/os/ParcelFileDescriptor;)V
    //   36: aload_2
    //   37: areturn
    //   38: astore_2
    //   39: aconst_null
    //   40: astore 5
    //   42: aload 5
    //   44: invokestatic 50	com/estrongs/fs/util/j:a	(Landroid/os/ParcelFileDescriptor;)V
    //   47: aconst_null
    //   48: areturn
    //   49: astore_2
    //   50: aconst_null
    //   51: astore 5
    //   53: aload 5
    //   55: invokestatic 50	com/estrongs/fs/util/j:a	(Landroid/os/ParcelFileDescriptor;)V
    //   58: aload_2
    //   59: athrow
    //   60: astore_2
    //   61: goto -8 -> 53
    //   64: astore_2
    //   65: goto -23 -> 42
    //   68: aconst_null
    //   69: astore 6
    //   71: goto -52 -> 19
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	paramInt1	int
    //   0	74	1	paramInt2	int
    //   0	74	2	paramUri	Uri
    //   0	74	3	paramContentResolver	ContentResolver
    //   0	74	4	paramBoolean	boolean
    //   7	47	5	localParcelFileDescriptor	ParcelFileDescriptor
    //   17	53	6	localOptions	BitmapFactory.Options
    // Exception table:
    //   from	to	target	type
    //   0	9	38	java/lang/Exception
    //   0	9	49	finally
    //   14	19	60	finally
    //   19	31	60	finally
    //   14	19	64	java/lang/Exception
    //   19	31	64	java/lang/Exception
  }
  
  public static Bitmap a(int paramInt1, int paramInt2, ParcelFileDescriptor paramParcelFileDescriptor, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (BitmapFactory.Options localOptions = a();; localOptions = null) {
      return a(paramInt1, paramInt2, null, null, paramParcelFileDescriptor, localOptions);
    }
  }
  
  public static Bitmap a(Matrix paramMatrix, Bitmap paramBitmap, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    int j = paramBitmap.getWidth() - paramInt1;
    int i = paramBitmap.getHeight() - paramInt2;
    Object localObject2;
    if ((!paramBoolean1) && ((j < 0) || (i < 0)))
    {
      paramMatrix = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
      localObject1 = new Canvas(paramMatrix);
      j = Math.max(0, j / 2);
      i = Math.max(0, i / 2);
      localObject2 = new Rect(j, i, Math.min(paramInt1, paramBitmap.getWidth()) + j, Math.min(paramInt2, paramBitmap.getHeight()) + i);
      i = (paramInt1 - ((Rect)localObject2).width()) / 2;
      j = (paramInt2 - ((Rect)localObject2).height()) / 2;
      ((Canvas)localObject1).drawBitmap(paramBitmap, (Rect)localObject2, new Rect(i, j, paramInt1 - i, paramInt2 - j), null);
      if (paramBoolean2) {
        paramBitmap.recycle();
      }
      return paramMatrix;
    }
    float f1 = paramBitmap.getWidth();
    float f2 = paramBitmap.getHeight();
    if (f1 / f2 > paramInt1 / paramInt2)
    {
      f1 = paramInt2 / f2;
      if ((f1 < 0.9F) || (f1 > 1.0F))
      {
        paramMatrix.setScale(f1, f1);
        label224:
        if (paramMatrix == null) {
          break label379;
        }
      }
    }
    label379:
    for (Object localObject1 = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), paramMatrix, true);; localObject1 = paramBitmap)
    {
      if ((paramBoolean2) && (localObject1 != paramBitmap)) {
        paramBitmap.recycle();
      }
      i = Math.max(0, ((Bitmap)localObject1).getWidth() - paramInt1);
      j = Math.max(0, ((Bitmap)localObject1).getHeight() - paramInt2);
      localObject2 = Bitmap.createBitmap((Bitmap)localObject1, i / 2, j / 2, paramInt1, paramInt2);
      paramMatrix = (Matrix)localObject2;
      if (localObject2 == localObject1) {
        break;
      }
      if (!paramBoolean2)
      {
        paramMatrix = (Matrix)localObject2;
        if (localObject1 == paramBitmap) {
          break;
        }
      }
      ((Bitmap)localObject1).recycle();
      return (Bitmap)localObject2;
      paramMatrix = null;
      break label224;
      f1 = paramInt1 / f1;
      if ((f1 < 0.9F) || (f1 > 1.0F))
      {
        paramMatrix.setScale(f1, f1);
        break label224;
      }
      paramMatrix = null;
      break label224;
    }
  }
  
  public static BitmapFactory.Options a()
  {
    return new BitmapFactory.Options();
  }
  
  private static ParcelFileDescriptor a(Uri paramUri, ContentResolver paramContentResolver)
  {
    try
    {
      paramUri = paramContentResolver.openFileDescriptor(paramUri, "r");
      return paramUri;
    }
    catch (Exception paramUri) {}
    return null;
  }
  
  public static void a(MonitoredActivity paramMonitoredActivity, String paramString1, String paramString2, Runnable paramRunnable, Handler paramHandler)
  {
    new Thread(new ap(paramMonitoredActivity, paramRunnable, ProgressDialog.show(paramMonitoredActivity, paramString1, paramString2, true, false), paramHandler)).start();
  }
  
  private static int b(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    double d1 = outWidth;
    double d2 = outHeight;
    int i;
    int j;
    if (paramInt2 == -1)
    {
      i = 1;
      if (paramInt1 != -1) {
        break label60;
      }
      j = 128;
      label31:
      if (j >= i) {
        break label84;
      }
    }
    label60:
    label84:
    do
    {
      return i;
      i = (int)Math.ceil(Math.sqrt(d1 * d2 / paramInt2));
      break;
      j = (int)Math.min(Math.floor(d1 / paramInt1), Math.floor(d2 / paramInt1));
      break label31;
      if ((paramInt2 == -1) && (paramInt1 == -1)) {
        return 1;
      }
    } while (paramInt1 == -1);
    return j;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */