package com.estrongs.android.ui.g;

import com.estrongs.android.util.y;
import java.io.IOException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

class g
  extends Thread
{
  g(f paramf) {}
  
  public void run()
  {
    try
    {
      if (c.a(a.a))
      {
        new y("http://www.estrongs.com/channel?iid=" + c.b(a.a)).c();
        return;
      }
      HttpGet localHttpGet = new HttpGet("http://www.estrongs.com/console/service/0918/?iid=" + c.c(a.a));
      new DefaultHttpClient().execute(localHttpGet);
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.g.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */