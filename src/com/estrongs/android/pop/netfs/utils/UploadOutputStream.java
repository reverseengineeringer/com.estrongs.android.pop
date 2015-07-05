package com.estrongs.android.pop.netfs.utils;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

public class UploadOutputStream
  extends FastPipedOutputStream
{
  private String errorMessage = null;
  private InputStream in = null;
  private boolean succ = false;
  private Thread task = null;
  
  public void close()
  {
    if (task != null) {}
    for (;;)
    {
      try
      {
        if (in == null) {
          continue;
        }
        i = 0;
      }
      catch (Exception localException1)
      {
        try
        {
          int i;
          String str1;
          Log.e("EEE", "close before sleep 1s");
          Thread.sleep(1000L);
          i += 1;
        }
        catch (Exception localException2) {}
        localException1 = localException1;
        localException1.printStackTrace();
        continue;
        String str2 = errorMessage;
        continue;
      }
      if ((!task.isAlive()) || (in.available() <= 0) || (i >= 30))
      {
        super.close();
        task.join();
        if (succ) {
          break label116;
        }
        if (errorMessage != null) {
          continue;
        }
        str1 = "";
        throw new IOException(str1);
      }
      label116:
      return;
    }
  }
  
  public void forceClose()
  {
    if (task != null) {}
    try
    {
      if (in != null) {
        in.close();
      }
      task.interrupt();
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
    task = null;
  }
  
  public void setErrorMessage(String paramString)
  {
    errorMessage = paramString;
  }
  
  public void setResult(boolean paramBoolean)
  {
    succ = paramBoolean;
  }
  
  public void setTask(Thread paramThread, InputStream paramInputStream)
  {
    task = paramThread;
    in = paramInputStream;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.netfs.utils.UploadOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */