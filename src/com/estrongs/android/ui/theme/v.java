package com.estrongs.android.ui.theme;

import com.estrongs.android.util.af;
import com.estrongs.android.util.l;
import java.io.File;

class v
  implements af
{
  v(ThemeActivity paramThemeActivity, String paramString) {}
  
  public void downloadCompleted(Object paramObject)
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
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    l.e("Alert", "request theme info failed !");
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void downloadStarted(Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */