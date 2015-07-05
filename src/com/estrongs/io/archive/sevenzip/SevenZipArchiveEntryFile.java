package com.estrongs.io.archive.sevenzip;

import com.estrongs.io.model.ArchiveEntryFile;

public class SevenZipArchiveEntryFile
  extends ArchiveEntryFile
{
  private boolean encrypted;
  private d info;
  
  public SevenZipArchiveEntryFile(d paramd, boolean paramBoolean)
  {
    super(d);
    info = paramd;
    encrypted = paramBoolean;
  }
  
  public long getSize()
  {
    return info.c;
  }
  
  public boolean isDirectory()
  {
    return info.b.toUpperCase().startsWith("D");
  }
  
  public boolean isEncrypted()
  {
    if (!isDirectory()) {
      return encrypted;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.sevenzip.SevenZipArchiveEntryFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */