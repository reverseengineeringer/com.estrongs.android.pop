package com.estrongs.fs.impl.w;

import com.estrongs.android.pop.netfs.utils.FastPipedInputStream;
import com.estrongs.android.pop.netfs.utils.UploadOutputStream;
import de.aflx.sardine.Sardine;
import org.apache.http.entity.InputStreamEntity;

final class c
  extends Thread
{
  c(FastPipedInputStream paramFastPipedInputStream, long paramLong, Sardine paramSardine, String paramString, UploadOutputStream paramUploadOutputStream) {}
  
  public void run()
  {
    try
    {
      InputStreamEntity localInputStreamEntity = new InputStreamEntity(a, b);
      c.put(d, localInputStreamEntity, "application/octet-stream", false);
      e.setResult(true);
      return;
    }
    catch (Exception localException1)
    {
      try
      {
        c.abort();
        c.destroy();
        localException1.printStackTrace();
        e.setResult(false);
        a.close();
        return;
      }
      catch (Exception localException2) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.w.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */