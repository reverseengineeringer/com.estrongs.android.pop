package com.estrongs.android.ui.theme;

import android.util.Log;
import com.estrongs.android.util.ab;
import java.io.File;

class p
  implements ab
{
  p(ThemeActivity paramThemeActivity, String paramString) {}
  
  public void a(Object paramObject) {}
  
  public void a(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void a(Object paramObject, Throwable paramThrowable)
  {
    Log.e("Alert", "request theme info failed !");
  }
  
  public void b(Object paramObject)
  {
    paramObject = new File(a + ".tmp");
    if ((((File)paramObject).exists()) && (((File)paramObject).length() > 0L))
    {
      File localFile = new File(a);
      localFile.delete();
      ((File)paramObject).renameTo(localFile);
      ThemeActivity.h(b);
      return;
    }
    ((File)paramObject).delete();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */