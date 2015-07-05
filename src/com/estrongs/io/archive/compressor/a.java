package com.estrongs.io.archive.compressor;

import com.estrongs.io.archive.h;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.InputStream;
import java.util.Iterator;

public abstract class a
  extends h
{
  private InputStream h;
  
  public a(String paramString)
  {
    super(paramString);
  }
  
  public InputStream a(String paramString)
  {
    if (h == null) {
      h = l();
    }
    return h;
  }
  
  public void b() {}
  
  public void c()
  {
    if (h != null) {
      h.close();
    }
  }
  
  protected Iterator<ArchiveEntryFile> i()
  {
    return new b(this);
  }
  
  protected abstract InputStream l();
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.compressor.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */