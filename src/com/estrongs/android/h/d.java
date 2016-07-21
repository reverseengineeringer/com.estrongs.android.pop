package com.estrongs.android.h;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.h;

public class d
  extends a
{
  public d(Context paramContext)
  {
    super(paramContext);
  }
  
  protected String a()
  {
    String str2 = ap.a(b(), ".apps", true);
    String str1 = str2;
    if (str2 == null) {
      str1 = ap.a(a.getCacheDir(), ".apps", false);
    }
    return str1;
  }
  
  protected boolean b(h paramh)
  {
    return ap.bl(paramh.getAbsolutePath());
  }
  
  protected Bitmap c(h paramh)
  {
    Object localObject2 = null;
    Object localObject1 = paramh.getAbsolutePath();
    PackageManager localPackageManager = a.getPackageManager();
    Object localObject3 = localPackageManager.getPackageArchiveInfo((String)localObject1, 8192);
    if (localObject3 != null) {
      if (bk.c())
      {
        applicationInfo.sourceDir = ((String)localObject1);
        applicationInfo.publicSourceDir = ((String)localObject1);
        localObject1 = localPackageManager.getApplicationIcon(applicationInfo);
        if (!(localObject1 instanceof BitmapDrawable)) {
          break label237;
        }
        localObject3 = ((BitmapDrawable)localObject1).getBitmap();
        localObject2 = localObject1;
        localObject1 = localObject3;
      }
    }
    for (;;)
    {
      if ((localObject2 == null) && ((paramh instanceof com.estrongs.fs.impl.b.d)))
      {
        paramh = ((com.estrongs.fs.impl.b.d)paramh).h().loadIcon(localPackageManager);
        if (!(paramh instanceof BitmapDrawable)) {}
      }
      for (paramh = ((BitmapDrawable)paramh).getBitmap();; paramh = (h)localObject1)
      {
        localObject1 = paramh;
        if (paramh != null)
        {
          int i = paramh.getWidth();
          int j = paramh.getHeight();
          int k = f.c();
          localObject1 = paramh;
          if (k != i)
          {
            float f = k / paramh.getWidth();
            localObject1 = new Matrix();
            ((Matrix)localObject1).setScale(f, f);
            localObject1 = Bitmap.createBitmap(paramh, 0, 0, i, j, (Matrix)localObject1, true);
          }
        }
        return (Bitmap)localObject1;
        localObject1 = localPackageManager.getApplicationIcon(applicationInfo);
        break;
      }
      label237:
      localObject3 = null;
      localObject2 = localObject1;
      localObject1 = localObject3;
      continue;
      localObject1 = null;
    }
  }
  
  public String[] d()
  {
    return new String[] { "65536" };
  }
  
  protected Bitmap.CompressFormat g(h paramh)
  {
    return Bitmap.CompressFormat.PNG;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.h.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */