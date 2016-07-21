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
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.estrongs.android.pop.app.imageviewer.gallery.c;
import com.estrongs.android.ui.view.ak;
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
    //   34: if_icmplt +410 -> 444
    //   37: aload_0
    //   38: invokevirtual 103	com/estrongs/android/pop/app/imageviewer/CropImage:getIntent	()Landroid/content/Intent;
    //   41: invokevirtual 109	android/content/Intent:getData	()Landroid/net/Uri;
    //   44: invokevirtual 115	android/net/Uri:toString	()Ljava/lang/String;
    //   47: invokestatic 119	android/net/Uri:decode	(Ljava/lang/String;)Ljava/lang/String;
    //   50: astore 8
    //   52: aload 8
    //   54: invokestatic 125	com/estrongs/android/util/ap:bl	(Ljava/lang/String;)Z
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
    //   203: aload 8
    //   205: astore 7
    //   207: aload 8
    //   209: ifnonnull +93 -> 302
    //   212: aload 8
    //   214: astore 7
    //   216: aload_0
    //   217: getfield 56	com/estrongs/android/pop/app/imageviewer/CropImage:m	Z
    //   220: ifeq +230 -> 450
    //   223: aload 8
    //   225: astore 7
    //   227: getstatic 192	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   230: astore 9
    //   232: aload 8
    //   234: astore 7
    //   236: iload 5
    //   238: iload 6
    //   240: aload 9
    //   242: invokestatic 196	android/graphics/Bitmap:createBitmap	(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   245: astore 8
    //   247: aload 8
    //   249: astore 7
    //   251: new 198	android/graphics/Canvas
    //   254: dup
    //   255: aload 8
    //   257: invokespecial 201	android/graphics/Canvas:<init>	(Landroid/graphics/Bitmap;)V
    //   260: astore 9
    //   262: aload 8
    //   264: astore 7
    //   266: new 87	android/graphics/Rect
    //   269: dup
    //   270: iconst_0
    //   271: iconst_0
    //   272: iload 5
    //   274: iload 6
    //   276: invokespecial 173	android/graphics/Rect:<init>	(IIII)V
    //   279: astore 10
    //   281: aload 8
    //   283: astore 7
    //   285: aload 9
    //   287: aload_0
    //   288: getfield 153	com/estrongs/android/pop/app/imageviewer/CropImage:v	Landroid/graphics/Bitmap;
    //   291: aload_1
    //   292: aload 10
    //   294: aconst_null
    //   295: invokevirtual 205	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    //   298: aload 8
    //   300: astore 7
    //   302: aload_0
    //   303: getfield 56	com/estrongs/android/pop/app/imageviewer/CropImage:m	Z
    //   306: ifeq +68 -> 374
    //   309: aload 7
    //   311: ifnull +63 -> 374
    //   314: new 198	android/graphics/Canvas
    //   317: dup
    //   318: aload 7
    //   320: invokespecial 201	android/graphics/Canvas:<init>	(Landroid/graphics/Bitmap;)V
    //   323: astore_1
    //   324: new 207	android/graphics/Path
    //   327: dup
    //   328: invokespecial 208	android/graphics/Path:<init>	()V
    //   331: astore 8
    //   333: aload 8
    //   335: iload 5
    //   337: i2f
    //   338: fconst_2
    //   339: fdiv
    //   340: iload 6
    //   342: i2f
    //   343: fconst_2
    //   344: fdiv
    //   345: iload 5
    //   347: i2f
    //   348: fconst_2
    //   349: fdiv
    //   350: getstatic 214	android/graphics/Path$Direction:CW	Landroid/graphics/Path$Direction;
    //   353: invokevirtual 218	android/graphics/Path:addCircle	(FFFLandroid/graphics/Path$Direction;)V
    //   356: aload_1
    //   357: aload 8
    //   359: getstatic 224	android/graphics/Region$Op:DIFFERENCE	Landroid/graphics/Region$Op;
    //   362: invokevirtual 228	android/graphics/Canvas:clipPath	(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    //   365: pop
    //   366: aload_1
    //   367: iconst_0
    //   368: getstatic 234	android/graphics/PorterDuff$Mode:CLEAR	Landroid/graphics/PorterDuff$Mode;
    //   371: invokevirtual 238	android/graphics/Canvas:drawColor	(ILandroid/graphics/PorterDuff$Mode;)V
    //   374: aload 7
    //   376: astore_1
    //   377: iload_2
    //   378: ifeq -351 -> 27
    //   381: aload 7
    //   383: astore_1
    //   384: iload_3
    //   385: ifeq -358 -> 27
    //   388: aload 7
    //   390: astore_1
    //   391: aload_0
    //   392: getfield 240	com/estrongs/android/pop/app/imageviewer/CropImage:q	Z
    //   395: ifeq -368 -> 27
    //   398: new 242	android/graphics/Matrix
    //   401: dup
    //   402: invokespecial 243	android/graphics/Matrix:<init>	()V
    //   405: aload 7
    //   407: iload_2
    //   408: iload_3
    //   409: aload_0
    //   410: getfield 63	com/estrongs/android/pop/app/imageviewer/CropImage:r	Z
    //   413: iconst_1
    //   414: invokestatic 248	com/estrongs/android/pop/app/imageviewer/ao:a	(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;
    //   417: astore_1
    //   418: aload_1
    //   419: areturn
    //   420: astore 8
    //   422: aload 9
    //   424: aload 9
    //   426: getfield 176	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   429: iconst_2
    //   430: imul
    //   431: putfield 176	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   434: goto -254 -> 180
    //   437: astore 7
    //   439: aload 7
    //   441: invokevirtual 251	java/lang/Exception:printStackTrace	()V
    //   444: aconst_null
    //   445: astore 8
    //   447: goto -244 -> 203
    //   450: aload 8
    //   452: astore 7
    //   454: getstatic 254	android/graphics/Bitmap$Config:RGB_565	Landroid/graphics/Bitmap$Config;
    //   457: astore 9
    //   459: goto -227 -> 232
    //   462: astore_1
    //   463: aload_1
    //   464: invokevirtual 255	java/lang/OutOfMemoryError:printStackTrace	()V
    //   467: aload 7
    //   469: areturn
    //   470: astore 8
    //   472: goto -106 -> 366
    //   475: astore_1
    //   476: goto -174 -> 302
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	479	0	this	CropImage
    //   0	479	1	paramRect	Rect
    //   0	479	2	paramInt1	int
    //   0	479	3	paramInt2	int
    //   121	34	4	f1	float
    //   7	339	5	i1	int
    //   13	328	6	i2	int
    //   1	405	7	localObject1	Object
    //   437	3	7	localException	Exception
    //   452	16	7	localObject2	Object
    //   50	308	8	localObject3	Object
    //   420	1	8	localOutOfMemoryError	OutOfMemoryError
    //   445	6	8	localObject4	Object
    //   470	1	8	localUnsupportedOperationException	UnsupportedOperationException
    //   90	368	9	localObject5	Object
    //   166	127	10	localRect	Rect
    // Exception table:
    //   from	to	target	type
    //   180	195	420	java/lang/OutOfMemoryError
    //   37	52	437	java/lang/Exception
    //   52	60	437	java/lang/Exception
    //   64	83	437	java/lang/Exception
    //   83	180	437	java/lang/Exception
    //   180	195	437	java/lang/Exception
    //   422	434	437	java/lang/Exception
    //   398	418	462	java/lang/OutOfMemoryError
    //   356	366	470	java/lang/UnsupportedOperationException
    //   216	223	475	java/lang/OutOfMemoryError
    //   227	232	475	java/lang/OutOfMemoryError
    //   236	247	475	java/lang/OutOfMemoryError
    //   251	262	475	java/lang/OutOfMemoryError
    //   266	281	475	java/lang/OutOfMemoryError
    //   285	298	475	java/lang/OutOfMemoryError
    //   454	459	475	java/lang/OutOfMemoryError
  }
  
  private void a()
  {
    if (isFinishing()) {
      return;
    }
    t.a(v, true);
    ao.a(this, null, getResources().getString(2131232552), new g(this), n);
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
          com.estrongs.android.util.l.c("CropImage", "Cannot open file: " + h, localIOException);
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
        com.estrongs.android.util.l.c("CropImage", "Failed to set wallpaper.", localException1);
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
          com.estrongs.android.util.l.c("CropImage", "store image fail, continue anyway", localException2);
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
      t.a();
      v.recycle();
    }
    do
    {
      if (!b)
      {
        t.a();
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
    ak.a(this, getResources().getString(2131231901), 0);
    t.a();
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
      ao.a(this, null, getString(2131231295), new i(this, (Bundle)localObject2, localBitmap, (Rect)localObject3), n);
      return;
    }
    if (i) {}
    for (Object localObject2 = getResources().getString(2131231782);; localObject2 = getResources().getString(2131230883) + "...")
    {
      ao.a(this, null, (String)localObject2, new k(this, localBitmap), n);
      return;
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    u = getContentResolver();
    setContentView(2130903270);
    t = ((CropImageView)findViewById(2131624051));
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
        break label428;
      }
      if (((Bundle)localObject1).getBoolean("noFaceDetection")) {
        break label423;
      }
      bool = true;
      l = bool;
      a = ((Bundle)localObject1).getBoolean("crop2Direction", false);
      b = ((Bundle)localObject1).getBoolean("fixCropMode", false);
      localObject1 = ((Bundle)localObject1).getString("title");
      if (localObject1 != null)
      {
        localObject2 = (TextView)findViewById(2131624055);
        ((TextView)localObject2).setText((CharSequence)localObject1);
        ((TextView)localObject2).setVisibility(0);
        ((TextView)localObject2).bringToFront();
      }
    }
    if (v == null)
    {
      paramBundle = paramBundle.getData();
      if (!"content".equalsIgnoreCase(paramBundle.getScheme())) {
        break label433;
      }
    }
    label423:
    label428:
    label433:
    for (w = new com.estrongs.android.pop.app.imageviewer.gallery.j(null, u, paramBundle);; w = new c(null, d.a(this), Uri.decode(paramBundle.toString())))
    {
      if (w != null) {
        v = w.a(true);
      }
      if (v != null) {
        break label459;
      }
      finish();
      return;
      bool = false;
      break;
      bool = true;
      break;
    }
    label459:
    getWindow().addFlags(1024);
    findViewById(2131624999).setOnClickListener(new e(this));
    findViewById(2131624998).setOnClickListener(new f(this));
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