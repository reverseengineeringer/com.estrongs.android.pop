package com.estrongs.io.archive.aeszip;

import java.io.InputStream;
import java.util.zip.InflaterInputStream;

final class f
  extends InflaterInputStream
{
  private boolean a;
  
  public f(InputStream paramInputStream, int paramInt)
  {
    super(paramInputStream, a.e(), paramInt);
  }
  
  public void close()
  {
    if (a) {
      return;
    }
    a = true;
    try
    {
      super.close();
      return;
    }
    finally
    {
      a.a(inf);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.aeszip.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */