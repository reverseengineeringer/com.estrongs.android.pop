package com.estrongs.io.archive.rar;

import com.estrongs.io.model.ArchiveEntryFile;
import de.innosystec.unrar.rarfile.g;
import java.util.Iterator;

class c
  implements Iterator<ArchiveEntryFile>
{
  g a = null;
  
  c(a parama) {}
  
  public ArchiveEntryFile a()
  {
    return new RarArchiveEntryFile(a);
  }
  
  public boolean hasNext()
  {
    a = b.h.c();
    return a != null;
  }
  
  public void remove() {}
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.rar.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */