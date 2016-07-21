package com.estrongs.android.ui.g;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.af;
import java.io.IOException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;

class e
  implements af
{
  e(c paramc, Handler paramHandler, Context paramContext) {}
  
  public void downloadCompleted(Object paramObject)
  {
    c.b(c, false);
    a.sendEmptyMessage(2);
    try
    {
      if (c.a(c)) {
        new aa("http://www.estrongs.com/channel?aid=" + c.b(c)).c();
      }
      for (;;)
      {
        c.e(b);
        return;
        paramObject = new HttpGet("http://www.estrongs.com/console/service/0918/?aid=" + c.c(c));
        new DefaultHttpClient().execute((HttpUriRequest)paramObject);
      }
    }
    catch (IOException paramObject)
    {
      for (;;)
      {
        ((IOException)paramObject).printStackTrace();
      }
    }
  }
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    c.b(c, false);
    a.sendEmptyMessage(3);
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2)
  {
    paramObject = new Message();
    what = 1;
    arg1 = ((int)paramLong2);
    arg2 = ((int)paramLong1);
    a.sendMessage((Message)paramObject);
  }
  
  public void downloadStarted(Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.g.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */