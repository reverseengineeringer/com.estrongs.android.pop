package com.estrongs.io.archive.compressor;

import com.estrongs.io.model.ArchiveEntryFile;

public class CompressorArchiveEntryFile
  extends ArchiveEntryFile
{
  private static final long serialVersionUID = 3636659340327122290L;
  private long size = -1L;
  
  public CompressorArchiveEntryFile(String paramString)
  {
    super(paramString);
  }
  
  public long getSize()
  {
    return size;
  }
  
  public boolean isDirectory()
  {
    return false;
  }
  
  public void setSize(long paramLong)
  {
    size = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.compressor.CompressorArchiveEntryFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */