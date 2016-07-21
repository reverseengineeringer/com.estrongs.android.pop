package com.estrongs.fs.impl.pcs;

import com.estrongs.android.util.l;
import java.io.BufferedInputStream;
import java.io.InputStream;
import org.apache.http.client.methods.HttpGet;

class c
  extends BufferedInputStream
{
  c(PcsFileSystem paramPcsFileSystem, InputStream paramInputStream, HttpGet paramHttpGet)
  {
    super(paramInputStream);
  }
  
  public void close()
  {
    try
    {
      a.abort();
      super.close();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        l.e("PcsFileSystem", "Error when HttpGet.abort()" + localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.pcs.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */