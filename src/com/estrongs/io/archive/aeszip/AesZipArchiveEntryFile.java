package com.estrongs.io.archive.aeszip;

import com.estrongs.io.model.ArchiveEntryFile;
import de.a.a.a.a.i;

public class AesZipArchiveEntryFile
  extends ArchiveEntryFile
{
  private static final long serialVersionUID = 3636659340327122290L;
  private i archiveEntry;
  
  public AesZipArchiveEntryFile(i parami)
  {
    super(parami.getName());
    archiveEntry = parami;
  }
  
  public AesZipArchiveEntryFile(String paramString)
  {
    super(paramString);
    archiveEntry = new i(paramString);
  }
  
  public i getArchiveEntry()
  {
    return archiveEntry;
  }
  
  public long getSize()
  {
    return archiveEntry.getSize();
  }
  
  public boolean isDirectory()
  {
    try
    {
      boolean bool = archiveEntry.isDirectory();
      return bool;
    }
    catch (StringIndexOutOfBoundsException localStringIndexOutOfBoundsException) {}
    return false;
  }
  
  public boolean isEncrypted()
  {
    if (!archiveEntry.isDirectory()) {
      return archiveEntry.d();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.aeszip.AesZipArchiveEntryFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */