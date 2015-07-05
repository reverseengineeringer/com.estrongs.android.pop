package com.estrongs.io.archive.compressor;

import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;
import java.util.Iterator;

class b
  implements Iterator<ArchiveEntryFile>
{
  int a = 0;
  
  b(a parama) {}
  
  public ArchiveEntryFile a()
  {
    a += 1;
    File localFile = new File(a.a(b));
    String str = localFile.getName();
    int i = str.lastIndexOf(".");
    Object localObject = str;
    if (i > 0) {
      localObject = str.substring(0, i);
    }
    localObject = new CompressorArchiveEntryFile((String)localObject);
    ((CompressorArchiveEntryFile)localObject).setSize(localFile.length());
    return (ArchiveEntryFile)localObject;
  }
  
  public boolean hasNext()
  {
    return a < 1;
  }
  
  public void remove() {}
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.compressor.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */