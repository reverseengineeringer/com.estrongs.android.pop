package com.estrongs.io.archive.sevenzip;

import com.estrongs.io.model.ArchiveEntryFile;
import java.util.Iterator;

class w
  implements Iterator<ArchiveEntryFile>
{
  w(r paramr, Iterator paramIterator) {}
  
  public ArchiveEntryFile a()
  {
    return new SevenZipArchiveEntryFile((d)a.next(), r.a(b));
  }
  
  public boolean hasNext()
  {
    return a.hasNext();
  }
  
  public void remove() {}
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */