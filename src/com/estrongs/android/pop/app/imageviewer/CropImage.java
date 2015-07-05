package com.estrongs.android.pop.app.imageviewer;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.estrongs.android.pop.app.imageviewer.gallery.c;
import com.estrongs.android.ui.view.ag;
import com.estrongs.fs.d;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;

public class CropImage
  extends MonitoredActivity
{
  boolean a = false;
  boolean b = false;
  boolean c;
  boolean d;
  HighlightView e;
  Runnable f = new m(this);
  private Bitmap.CompressFormat g = Bitmap.CompressFormat.JPEG;
  private Uri h = null;
  private boolean i = false;
  private int j;
  private int k;
  private boolean l = true;
  private boolean m = false;
  private final Handler n = new Handler();
  private int o;
  private int p;
  private boolean q;
  private boolean r = true;
  private CropImageView t;
  private ContentResolver u;
  private Bitmap v;
  private com.estrongs.android.pop.app.imageviewer.gallery.e w;
  
  /* Error */
  @SuppressLint({"NewApi"})
  private Bitmap a(Rect paramRect, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_1
    //   4: invokevirtual 91	android/graphics/Rect:width	()I
    //   7: istore 5
    //   9: aload_1
    //   10: invokevirtual 94	android/graphics/Rect:height	()I
    //   13: istore 6
    //   15: iload 5
    //   17: ifle +8 -> 25
    //   20: iload 6
    //   22: ifgt +7 -> 29
    //   25: aconst_null
    //   26: astore_1
    //   27: aload_1
    //   28: areturn
    //   29: getstatic 99	android/os/Build$VERSION:SDK_INT	I
    //   32: bipush 10
    //   34: if_icmplt +404 -> 438
    //   37: aload_0
    //   38: invokevirtual 103	com/estrongs/android/pop/app/imageviewer/CropImage:getIntent	()Landroid/content/Intent;
    //   41: invokevirtual 109	android/content/Intent:getData	()Landroid/net/Uri;
    //   44: invokevirtual 115	android/net/Uri:toString	()Ljava/lang/String;
    //   47: invokestatic 119	android/net/Uri:decode	(Ljava/lang/String;)Ljava/lang/String;
    //   50: astore 8
    //   52: aload 8
    //   54: invokestatic 125	com/estrongs/android/util/am:ba	(Ljava/lang/String;)Z
    //   57: ifeq +142 -> 199
    //   60: aload 8
    //   62: astore 7
    //   64: aload 8
    //   66: ldc 127
    //   68: invokevirtual 132	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   71: ifeq +12 -> 83
    //   74: aload 8
    //   76: bipush 7
    //   78: invokevirtual 136	java/lang/String:substring	(I)Ljava/lang/String;
    //   81: astore 7
    //   83: new 138	android/graphics/BitmapFactory$Options
    //   86: dup
    //   87: invokespecial 139	android/graphics/BitmapFactory$Options:<init>	()V
    //   90: astore 9
    //   92: aload 9
    //   94: iconst_1
    //   95: putfield 142	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   98: aload 7
    //   100: aload 9
    //   102: invokestatic 148	android/graphics/BitmapFactory:decodeFile	(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   105: pop
    //   106: aload 9
    //   108: getfield 151	android/graphics/BitmapFactory$Options:outWidth	I
    //   111: i2f
    //   112: aload_0
    //   113: getfield 153	com/estrongs/android/pop/app/imageviewer/CropImage:v	Landroid/graphics/Bitmap;
    //   116: invokevirtual 158	android/graphics/Bitmap:getWidth	()I
    //   119: i2f
    //   120: fdiv
    //   121: fstore 4
    //   123: new 87	android/graphics/Rect
    //   126: dup
    //   127: aload_1
    //   128: getfield 161	android/graphics/Rect:left	I
    //   131: i2f
    //   132: fload 4
    //   134: fmul
    //   135: f2i
    //   136: aload_1
    //   137: getfield 164	android/graphics/Rect:top	I
    //   140: i2f
    //   141: fload 4
    //   143: fmul
    //   144: f2i
    //   145: aload_1
    //   146: getfield 167	android/graphics/Rect:right	I
    //   149: i2f
    //   150: fload 4
    //   152: fmul
    //   153: f2i
    //   154: fload 4
    //   156: aload_1
    //   157: getfield 170	android/graphics/Rect:bottom	I
    //   160: i2f
    //   161: fmul
    //   162: f2i
    //   163: invokespecial 173	android/graphics/Rect:<init>	(IIII)V
    //   166: astore 10
    //   168: aload 9
    //   170: iconst_0
    //   171: putfield 142	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   174: aload 9
    //   176: iconst_1
    //   177: putfield 176	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   180: aload 7
    //   182: iconst_1
    //   183: invokestatic 182	android/graphics/BitmapRegionDecoder:newInstance	(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    //   186: aload 10
    //   188: aload 9
    //   190: invokevirtual 186	android/graphics/BitmapRegionDecoder:decodeRegion	(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   193: astore 8
    //   195: aload 8
    //   197: astore 7
    //   199: aload 7
    //   201: astore 8
    //   203: aload 7
    //   205: ifnonnull +93 -> 298
    //   208: aload 7
    //   210: astore 8
    //   212: aload_0
    //   213: getfield 56	com/estrongs/android/pop/app/imageviewer/CropImage:m	Z
    //   216: ifeq +228 -> 444
    //   219: aload 7
    //   221: astore 8
    //   223: getstatic 192	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   226: astore 9
    //   228: aload 7
    //   230: astore 8
    //   232: iload 5
    //   234: iload 6
    //   236: aload 9
    //   238: invokestatic 196	android/graphics/Bitmap:createBitmap	(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   241: astore 7
    //   243: aload 7
    //   245: astore 8
    //   247: new 198	android/graphics/Canvas
    //   250: dup
    //   251: aload 7
    //   253: invokespecial 201	android/graphics/Canvas:<init>	(Landroid/graphics/Bitmap;)V
    //   256: astore 9
    //   258: aload 7
    //   260: astore 8
    //   262: new 87	android/graphics/Rect
    //   265: dup
    //   266: iconst_0
    //   267: iconst_0
    //   268: iload 5
    //   270: iload 6
    //   272: invokespecial 173	android/graphics/Rect:<init>	(IIII)V
    //   275: astore 10
    //   277: aload 7
    //   279: astore 8
    //   281: aload 9
    //   283: aload_0
    //   284: getfield 153	com/estrongs/android/pop/app/imageviewer/CropImage:v	Landroid/graphics/Bitmap;
    //   287: aload_1
    //   288: aload 10
    //   290: aconst_null
    //   291: invokevirtual 205	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    //   294: aload 7
    //   296: astore 8
    //   298: aload_0
    //   299: getfield 56	com/estrongs/android/pop/app/imageviewer/CropImage:m	Z
    //   302: ifeq +68 -> 370
    //   305: aload 8
    //   307: ifnull +63 -> 370
    //   310: new 198	android/graphics/Canvas
    //   313: dup
    //   314: aload 8
    //   316: invokespecial 201	android/graphics/Canvas:<init>	(Landroid/graphics/Bitmap;)V
    //   319: astore_1
    //   320: new 207	android/graphics/Path
    //   323: dup
    //   324: invokespecial 208	android/graphics/Path:<init>	()V
    //   327: astore 7
    //   329: aload 7
    //   331: iload 5
    //   333: i2f
    //   334: fconst_2
    //   335: fdiv
    //   336: iload 6
    //   338: i2f
    //   339: fconst_2
    //   340: fdiv
    //   341: iload 5
    //   343: i2f
    //   344: fconst_2
    //   345: fdiv
    //   346: getstatic 214	android/graphics/Path$Direction:CW	Landroid/graphics/Path$Direction;
    //   349: invokevirtual 218	android/graphics/Path:addCircle	(FFFLandroid/graphics/Path$Direction;)V
    //   352: aload_1
    //   353: aload 7
    //   355: getstatic 224	android/graphics/Region$Op:DIFFERENCE	Landroid/graphics/Region$Op;
    //   358: invokevirtual 228	android/graphics/Canvas:clipPath	(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    //   361: pop
    //   362: aload_1
    //   363: iconst_0
    //   364: getstatic 234	android/graphics/PorterDuff$Mode:CLEAR	Landroid/graphics/PorterDuff$Mode;
    //   367: invokevirtual 238	android/graphics/Canvas:drawColor	(ILandroid/graphics/PorterDuff$Mode;)V
    //   370: aload 8
    //   372: astore_1
    //   373: iload_2
    //   374: ifeq -347 -> 27
    //   377: aload 8
    //   379: astore_1
    //   380: iload_3
    //   381: ifeq -354 -> 27
    //   384: aload 8
    //   386: astore_1
    //   387: aload_0
    //   388: getfield 240	com/estrongs/android/pop/app/imageviewer/CropImage:q	Z
    //   391: ifeq -364 -> 27
    //   394: new 242	android/graphics/Matrix
    //   397: dup
    //   398: invokespecial 243	android/graphics/Matrix:<init>	()V
    //   401: aload 8
    //   403: iload_2
    //   404: iload_3
    //   405: aload_0
    //   406: getfield 63	com/estrongs/android/pop/app/imageviewer/CropImage:r	Z
    //   409: iconst_1
    //   410: invokestatic 248	com/estrongs/android/pop/app/imageviewer/ao:a	(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;
    //   413: areturn
    //   414: astore 8
    //   416: aload 9
    //   418: aload 9
    //   420: getfield 176	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   423: iconst_2
    //   424: imul
    //   425: putfield 176	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   428: goto -248 -> 180
    //   431: astore 7
    //   433: aload 7
    //   435: invokevirtual 251	java/lang/Exception:printStackTrace	()V
    //   438: aconst_null
    //   439: astore 7
    //   441: goto -242 -> 199
    //   444: aload 7
    //   446: astore 8
    //   448: getstatic 254	android/graphics/Bitmap$Config:RGB_565	Landroid/graphics/Bitmap$Config;
    //   451: astore 9
    //   453: goto -225 -> 228
    //   456: astore 7
    //   458: goto -96 -> 362
    //   461: astore_1
    //   462: goto -164 -> 298
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	465	0	this	CropImage
    //   0	465	1	paramRect	Rect
    //   0	465	2	paramInt1	int
    //   0	465	3	paramInt2	int
    //   121	34	4	f1	float
    //   7	335	5	i1	int
    //   13	324	6	i2	int
    //   1	353	7	localObject1	Object
    //   431	3	7	localException	Exception
    //   439	6	7	localObject2	Object
    //   456	1	7	localUnsupportedOperationException	UnsupportedOperationException
    //   50	352	8	localObject3	Object
    //   414	1	8	localOutOfMemoryError	OutOfMemoryError
    //   446	1	8	localObject4	Object
    //   90	362	9	localObject5	Object
    //   166	123	10	localRect	Rect
    // Exception table:
    //   from	to	target	type
    //   180	195	414	java/lang/OutOfMemoryError
    //   37	52	431	java/lang/Exception
    //   52	60	431	java/lang/Exception
    //   64	83	431	java/lang/Exception
    //   83	180	431	java/lang/Exception
    //   180	195	431	java/lang/Exception
    //   416	428	431	java/lang/Exception
    //   352	362	456	java/lang/UnsupportedOperationException
    //   212	219	461	java/lang/OutOfMemoryError
    //   223	228	461	java/lang/OutOfMemoryError
    //   232	243	461	java/lang/OutOfMemoryError
    //   247	258	461	java/lang/OutOfMemoryError
    //   262	277	461	java/lang/OutOfMemoryError
    //   281	294	461	java/lang/OutOfMemoryError
    //   448	453	461	java/lang/OutOfMemoryError
  }
  
  private void a()
  {
    if (isFinishing()) {
      return;
    }
    t.a(v, true);
    ao.a(this, null, getResources().getString(2131427783), new g(this), n);
  }
  
  private void a(Bitmap paramBitmap)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    int i1 = 0;
    if (h != null)
    {
      try
      {
        OutputStream localOutputStream = u.openOutputStream(h);
        if (localOutputStream != null)
        {
          localObject1 = localOutputStream;
          localObject2 = localOutputStream;
          paramBitmap.compress(g, 75, localOutputStream);
        }
        com.estrongs.fs.util.j.a(localOutputStream);
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          localObject2 = localObject1;
          Log.e("CropImage", "Cannot open file: " + h, localIOException);
          com.estrongs.fs.util.j.a((OutputStream)localObject1);
        }
      }
      finally
      {
        com.estrongs.fs.util.j.a((OutputStream)localObject2);
      }
      localObject1 = new Bundle();
      setResult(-1, new Intent(h.toString()).putExtras((Bundle)localObject1));
    }
    for (;;)
    {
      n.post(new l(this, paramBitmap));
      finish();
      return;
      if (!i) {
        break;
      }
      try
      {
        setWallpaper(paramBitmap);
        setResult(-1);
      }
      catch (Exception localException1)
      {
        Log.e("CropImage", "Failed to set wallpaper.", localException1);
        setResult(0);
      }
    }
    Bundle localBundle = new Bundle();
    localBundle.putString("rect", e.b().toString());
    Object localObject3 = new File(w.d());
    localObject2 = new File(((File)localObject3).getParent());
    localObject3 = ((File)localObject3).getName();
    localObject3 = ((String)localObject3).substring(0, ((String)localObject3).lastIndexOf("."));
    for (;;)
    {
      i1 += 1;
      if (!new File(((File)localObject2).toString() + "/" + (String)localObject3 + "-" + i1 + ".jpg").exists())
      {
        try
        {
          int[] arrayOfInt = new int[1];
          localObject2 = ImageManager.a(u, w.i(), w.o(), null, ((File)localObject2).toString(), (String)localObject3 + "-" + i1 + ".jpg", paramBitmap, null, arrayOfInt);
          setResult(-1, new Intent().setAction(((Uri)localObject2).toString()).putExtras(localBundle));
        }
        catch (Exception localException2)
        {
          Log.e("CropImage", "store image fail, continue anyway", localException2);
        }
        break;
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  private void b()
  {
    if (e == null) {}
    while (d) {
      return;
    }
    d = true;
    Object localObject1;
    Object localObject3;
    if ((o != 0) && (p != 0) && (!q))
    {
      localObject1 = Bitmap.createBitmap(o, p, Bitmap.Config.RGB_565);
      localObject2 = new Canvas((Bitmap)localObject1);
      localObject3 = e.b();
      Rect localRect = new Rect(0, 0, o, p);
      int i1 = (((Rect)localObject3).width() - localRect.width()) / 2;
      int i2 = (((Rect)localObject3).height() - localRect.height()) / 2;
      ((Rect)localObject3).inset(Math.max(0, i1), Math.max(0, i2));
      localRect.inset(Math.max(0, -i1), Math.max(0, -i2));
      ((Canvas)localObject2).drawBitmap(v, (Rect)localObject3, localRect, null);
      t.e();
      v.recycle();
    }
    do
    {
      if (!b)
      {
        t.e();
        v.recycle();
        t.a((Bitmap)localObject1, true);
        t.a(true, true);
        t.a.clear();
      }
      localObject2 = getIntent().getExtras();
      localObject3 = ((Bundle)localObject2).getString("customSave");
      if ((localObject2 == null) || ((((Bundle)localObject2).getParcelable("data") == null) && (!((Bundle)localObject2).getBoolean("return-data")))) {
        break;
      }
      localObject2 = new Bundle();
      ((Bundle)localObject2).putParcelable("data", (Parcelable)localObject1);
      setResult(-1, new Intent().setAction("inline-data").putExtras((Bundle)localObject2));
      finish();
      return;
      localObject2 = a(e.b(), o, p);
      localObject1 = localObject2;
    } while (localObject2 != null);
    ag.a(this, getResources().getString(2131427766), 0);
    t.e();
    v.recycle();
    return;
    if (localObject3 != null) {
      try
      {
        localObject2 = new FileOutputStream((String)localObject3);
        ((Bitmap)localObject1).compress(Bitmap.CompressFormat.PNG, 90, (OutputStream)localObject2);
        setResult(-1, null);
        finish();
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException = localException;
          localException.printStackTrace();
          setResult(0, null);
        }
      }
      finally {}
    }
    if (a)
    {
      localObject3 = e.c();
      ao.a(this, null, getString(2131428721), new i(this, (Bundle)localObject2, localBitmap, (Rect)localObject3), n);
      return;
    }
    if (i) {}
    for (Object localObject2 = getResources().getString(2131427909);; localObject2 = getResources().getString(2131427345) + "...")
    {
      ao.a(this, null, (String)localObject2, new k(this, localBitmap), n);
      return;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    u = getContentResolver();
    requestWindowFeature(1);
    setContentView(2130903159);
    t = ((CropImageView)findViewById(2131362092));
    ae.a(this);
    paramBundle = getIntent();
    Object localObject1 = paramBundle.getExtras();
    boolean bool;
    if (localObject1 != null)
    {
      if (((Bundle)localObject1).getString("circleCrop") != null)
      {
        m = true;
        j = 1;
        k = 1;
      }
      i = ((Bundle)localObject1).getBoolean("setWallpaper", false);
      i |= ((Bundle)localObject1).getBoolean("set_wallpaper", false);
      i |= ((Bundle)localObject1).getBoolean("show_drm_settable", false);
      Object localObject2;
      if (!i)
      {
        h = ((Uri)((Bundle)localObject1).getParcelable("output"));
        if (h != null)
        {
          localObject2 = ((Bundle)localObject1).getString("outputFormat");
          if (localObject2 != null) {
            g = Bitmap.CompressFormat.valueOf((String)localObject2);
          }
        }
      }
      v = ((Bitmap)((Bundle)localObject1).getParcelable("data"));
      j = ((Bundle)localObject1).getInt("aspectX");
      k = ((Bundle)localObject1).getInt("aspectY");
      o = ((Bundle)localObject1).getInt("outputX");
      p = ((Bundle)localObject1).getInt("outputY");
      q = ((Bundle)localObject1).getBoolean("scale", true);
      r = ((Bundle)localObject1).getBoolean("scaleUpIfNeeded", true);
      if (!((Bundle)localObject1).containsKey("noFaceDetection")) {
        break label434;
      }
      if (((Bundle)localObject1).getBoolean("noFaceDetection")) {
        break label429;
      }
      bool = true;
      l = bool;
      a = ((Bundle)localObject1).getBoolean("crop2Direction", false);
      b = ((Bundle)localObject1).getBoolean("fixCropMode", false);
      localObject1 = ((Bundle)localObject1).getString("title");
      if (localObject1 != null)
      {
        localObject2 = (TextView)findViewById(2131361825);
        ((TextView)localObject2).setText((CharSequence)localObject1);
        ((TextView)localObject2).setVisibility(0);
        ((TextView)localObject2).bringToFront();
      }
    }
    if (v == null)
    {
      paramBundle = paramBundle.getData();
      if (!"content".equalsIgnoreCase(paramBundle.getScheme())) {
        break label439;
      }
    }
    label429:
    label434:
    label439:
    for (w = new com.estrongs.android.pop.app.imageviewer.gallery.j(null, u, paramBundle);; w = new c(null, d.a(this), Uri.decode(paramBundle.toString())))
    {
      if (w != null) {
        v = w.a(true);
      }
      if (v != null) {
        break label465;
      }
      finish();
      return;
      bool = false;
      break;
      bool = true;
      break;
    }
    label465:
    getWindow().addFlags(1024);
    findViewById(2131362388).setOnClickListener(new e(this));
    findViewById(2131362387).setOnClickListener(new f(this));
    a();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  protected void onPause()
  {
    super.onPause();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.CropImage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */