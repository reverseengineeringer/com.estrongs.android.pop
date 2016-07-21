package com.flurry.sdk;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class an
  extends am
{
  private final File a;
  private OutputStream b;
  
  public an(File paramFile)
  {
    a = paramFile;
  }
  
  protected OutputStream f()
  {
    if (b != null) {
      return b;
    }
    if (a == null) {
      throw new IOException("No file specified");
    }
    b = new FileOutputStream(a);
    return b;
  }
  
  protected void g()
  {
    lt.a(b);
    b = null;
  }
  
  protected void h()
  {
    if (a == null) {
      return;
    }
    a.delete();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */