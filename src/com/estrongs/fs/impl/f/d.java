package com.estrongs.fs.impl.f;

import com.estrongs.android.pop.netfs.utils.FastPipedInputStream;
import com.estrongs.android.pop.netfs.utils.UploadOutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;

class d
  extends Thread
{
  d(c paramc, HttpClient paramHttpClient, HttpPost paramHttpPost, UploadOutputStream paramUploadOutputStream, FastPipedInputStream paramFastPipedInputStream) {}
  
  public void run()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = a.execute(b);
        if (((HttpResponse)localObject1).getStatusLine().getStatusCode() == 200)
        {
          c.setResult(true);
          localObject1 = ((HttpResponse)localObject1).getEntity();
          if (localObject1 != null) {
            ((HttpEntity)localObject1).consumeContent();
          }
        }
      }
      catch (Exception localException1) {}finally
      {
        try
        {
          localException1.printStackTrace();
          c.setResult(false);
          try
          {
            d.close();
            return;
          }
          catch (Exception localException2)
          {
            return;
          }
          localObject2 = finally;
          try
          {
            d.close();
            throw ((Throwable)localObject2);
          }
          catch (Exception localException5)
          {
            continue;
          }
        }
        catch (Exception localException3)
        {
          continue;
        }
      }
      try
      {
        d.close();
        return;
      }
      catch (Exception localException4) {}
      c.setResult(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.f.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */