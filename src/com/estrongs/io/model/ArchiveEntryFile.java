package com.estrongs.io.model;

import com.estrongs.android.util.q;
import java.io.File;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public class ArchiveEntryFile
  extends ExtFile
{
  private static final long serialVersionUID = 3636659340327122290L;
  private List<File> children;
  private boolean isRoot = false;
  private File parent;
  private boolean sorted = false;
  
  public ArchiveEntryFile(String paramString)
  {
    super(paramString);
    if (("/".equals(getPath())) || ("\\".equals(getPath()))) {
      bool = true;
    }
    isRoot = bool;
  }
  
  private void fillParentPath(File paramFile, StringBuilder paramStringBuilder)
  {
    paramFile = paramFile.getParentFile();
    if ((paramFile instanceof ArchiveEntryFile))
    {
      paramStringBuilder.insert(0, "/");
      if (!"".equals(paramFile.getName()))
      {
        paramStringBuilder.insert(0, paramFile.getName());
        fillParentPath(paramFile, paramStringBuilder);
      }
    }
    while (!(paramFile instanceof MountPointFile)) {
      return;
    }
    paramStringBuilder.insert(0, paramFile.getAbsolutePath());
  }
  
  public void attachChild(ArchiveEntryFile paramArchiveEntryFile)
  {
    paramArchiveEntryFile.setParent(this);
    if (children == null) {
      children = new LinkedList();
    }
    children.add(paramArchiveEntryFile);
  }
  
  public String getAbsolutePath()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getName());
    fillParentPath(this, localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public File getParentFile()
  {
    return parent;
  }
  
  public long getSize()
  {
    return -1L;
  }
  
  public boolean isDirectory()
  {
    return true;
  }
  
  public boolean isEncrypted()
  {
    return false;
  }
  
  public boolean isRoot()
  {
    return isRoot;
  }
  
  public long length()
  {
    return getSize();
  }
  
  public File[] listFiles()
  {
    if (children != null)
    {
      if (!sorted)
      {
        Collections.sort(children, q.c);
        sorted = true;
      }
      return (File[])children.toArray(new File[0]);
    }
    return new File[0];
  }
  
  public void setParent(File paramFile)
  {
    parent = paramFile;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.model.ArchiveEntryFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */