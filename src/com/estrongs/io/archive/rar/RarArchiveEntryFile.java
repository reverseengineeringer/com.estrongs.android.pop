package com.estrongs.io.archive.rar;

import com.estrongs.io.model.ArchiveEntryFile;
import de.innosystec.unrar.rarfile.g;

public class RarArchiveEntryFile
  extends ArchiveEntryFile
{
  private static final long serialVersionUID = 3636659340327122290L;
  private g archiveEntry;
  
  public RarArchiveEntryFile(g paramg)
  {
    super(paramg.o().trim().replaceAll("\\\\", "/"));
    archiveEntry = paramg;
  }
  
  public g getArchiveEntry()
  {
    return archiveEntry;
  }
  
  public long getSize()
  {
    return archiveEntry.t();
  }
  
  public boolean isDirectory()
  {
    return archiveEntry.C();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.rar.RarArchiveEntryFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */