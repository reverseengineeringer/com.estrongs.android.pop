package com.estrongs.io.archive.a;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.fs.impl.local.h;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

public class a
  extends com.estrongs.io.archive.compressor.a
{
  public a(String paramString)
  {
    super(paramString);
  }
  
  public boolean a()
  {
    return false;
  }
  
  public InputStream l()
  {
    return new GZIPInputStream(h.a(FexApplication.a(), b));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */