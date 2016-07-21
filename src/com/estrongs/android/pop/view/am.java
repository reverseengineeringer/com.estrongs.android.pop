package com.estrongs.android.pop.view;

import android.os.Handler;
import com.estrongs.android.pop.a;
import java.io.File;

class am
  implements Runnable
{
  am(FileExplorerActivity paramFileExplorerActivity, Handler paramHandler, Runnable paramRunnable) {}
  
  public void run()
  {
    int j = 0;
    Object localObject = a.a + "/cache";
    File[] arrayOfFile = new File((String)localObject, ".thumbnails").listFiles();
    int i;
    if (arrayOfFile != null)
    {
      i = 0;
      while (i < arrayOfFile.length)
      {
        arrayOfFile[i].delete();
        i += 1;
      }
    }
    localObject = new File((String)localObject, ".apps").listFiles();
    if (localObject != null)
    {
      i = j;
      while (i < localObject.length)
      {
        localObject[i].delete();
        i += 1;
      }
    }
    c.m();
    if ((a != null) && (b != null)) {
      c.i.post(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */