package com.estrongs.android.appinfo;

import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.os.ConditionVariable;
import android.support.v4.b.c;
import com.estrongs.android.pop.utils.cq;
import com.estrongs.android.pop.utils.cr;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.bd;
import com.estrongs.fs.h;
import java.io.File;
import java.util.HashMap;
import java.util.List;

class e
  extends cq
{
  e(AppFolderInfoManager paramAppFolderInfoManager, h paramh, ConditionVariable paramConditionVariable) {}
  
  public void a(cr paramcr)
  {
    boolean bool = true;
    ??? = null;
    for (;;)
    {
      try
      {
        paramcr = new BitmapFactory.Options();
        inJustDecodeBounds = true;
        BitmapFactory.decodeFile(a.getAbsolutePath(), paramcr);
        inSampleSize = AppFolderInfoManager.a(paramcr, 48);
        inInputShareable = true;
        if (!z.x)
        {
          inPurgeable = bool;
          inJustDecodeBounds = false;
          inDither = false;
          inTempStorage = new byte['䀀'];
          inPreferredConfig = Bitmap.Config.RGB_565;
          paramcr = BitmapFactory.decodeFile(a.getAbsolutePath(), paramcr);
          if (paramcr == null) {
            break label256;
          }
          paramcr = new BitmapDrawable(paramcr);
        }
      }
      catch (Exception localException2)
      {
        try
        {
          c.f.a(a.getAbsolutePath(), paramcr);
          if (paramcr == null) {
            new File(a.getAbsolutePath()).delete();
          }
        }
        catch (Exception localException1)
        {
          List localList;
          continue;
        }
        synchronized (c.p)
        {
          localList = (List)c.p.remove(a.getAbsolutePath());
          if ((localList != null) && (paramcr != null)) {
            bd.a(new f(this, localList));
          }
          if (b != null) {
            b.open();
          }
          return;
          bool = false;
          continue;
          localException2 = localException2;
          paramcr = (cr)???;
          ??? = localException2;
          ((Exception)???).printStackTrace();
        }
      }
      label256:
      paramcr = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */