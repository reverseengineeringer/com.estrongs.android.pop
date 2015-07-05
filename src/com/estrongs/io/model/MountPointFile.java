package com.estrongs.io.model;

import java.io.File;

public class MountPointFile
  extends File
{
  private static final long serialVersionUID = 1L;
  private ArchiveEntryFile delegated;
  
  public MountPointFile(File paramFile, ArchiveEntryFile paramArchiveEntryFile)
  {
    super(paramFile, paramArchiveEntryFile.getPath());
    delegated = paramArchiveEntryFile;
    paramArchiveEntryFile.setParent(this);
  }
  
  public File getMountedFile()
  {
    return delegated;
  }
  
  public boolean isDirectory()
  {
    return delegated.isDirectory();
  }
  
  public boolean isFile()
  {
    return delegated.isFile();
  }
  
  public File[] listFiles()
  {
    return delegated.listFiles();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.model.MountPointFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */