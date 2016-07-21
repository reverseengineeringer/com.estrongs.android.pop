package com.estrongs.android.appinfo;

import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.os.ConditionVariable;
import android.support.v4.e.g;
import com.estrongs.android.pop.utils.cz;
import com.estrongs.android.pop.utils.da;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.bk;
import com.estrongs.fs.h;
import java.io.File;
import java.util.HashMap;
import java.util.List;

class e
  extends cz
{
  e(AppFolderInfoManager paramAppFolderInfoManager, h paramh, ConditionVariable paramConditionVariable) {}
  
  public void a(da paramda)
  {
    boolean bool = true;
    ??? = null;
    for (;;)
    {
      try
      {
        paramda = new BitmapFactory.Options();
        inJustDecodeBounds = true;
        BitmapFactory.decodeFile(a.getAbsolutePath(), paramda);
        inSampleSize = AppFolderInfoManager.a(paramda, 48);
        inInputShareable = true;
        if (!z.x)
        {
          inPurgeable = bool;
          inJustDecodeBounds = false;
          inDither = false;
          inTempStorage = new byte['䀀'];
          inPreferredConfig = Bitmap.Config.RGB_565;
          paramda = BitmapFactory.decodeFile(a.getAbsolutePath(), paramda);
          if (paramda == null) {
            break label256;
          }
          paramda = new BitmapDrawable(paramda);
        }
      }
      catch (Exception localException2)
      {
        try
        {
          c.f.put(a.getAbsolutePath(), paramda);
          if (paramda == null) {
            new File(a.getAbsolutePath()).delete();
          }
        }
        catch (Exception localException1)
        {
          List localList;
          continue;
        }
        synchronized (c.q)
        {
          localList = (List)c.q.remove(a.getAbsolutePath());
          if ((localList != null) && (paramda != null)) {
            bk.a(new f(this, localList));
          }
          if (b != null) {
            b.open();
          }
          return;
          bool = false;
          continue;
          localException2 = localException2;
          paramda = (da)???;
          ??? = localException2;
          ((Exception)???).printStackTrace();
        }
      }
      label256:
      paramda = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */