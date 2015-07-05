package com.estrongs.io.archive.aeszip;

import com.estrongs.io.model.ArchiveEntryFile;
import de.a.a.a.a.i;
import java.util.Iterator;

class j
  implements Iterator<ArchiveEntryFile>
{
  Iterator<i> a = b.h.c();
  
  j(h paramh) {}
  
  public ArchiveEntryFile a()
  {
    return new AesZipArchiveEntryFile((i)a.next());
  }
  
  public boolean hasNext()
  {
    return a.hasNext();
  }
  
  public void remove() {}
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.aeszip.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */