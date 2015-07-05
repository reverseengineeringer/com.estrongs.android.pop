package com.estrongs.io.model;

import com.estrongs.android.util.q;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;

public class ExtFile
  extends File
{
  private static final long serialVersionUID = 1L;
  
  public ExtFile(String paramString)
  {
    super(paramString);
  }
  
  public void copyTo(File paramFile) {}
  
  public InputStream getInputStream()
  {
    return new FileInputStream(getPath());
  }
  
  public OutputStream getOutputStream()
  {
    return new FileOutputStream(getPath());
  }
  
  public File[] listFiles()
  {
    return listFiles((FileFilter)null);
  }
  
  public File[] listFiles(FileFilter paramFileFilter)
  {
    File[] arrayOfFile = super.listFiles();
    if (arrayOfFile == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < arrayOfFile.length)
    {
      if ((paramFileFilter == null) || (paramFileFilter.accept(arrayOfFile[i]))) {
        localArrayList.add(new ExtFile(arrayOfFile[i].getAbsolutePath()));
      }
      i += 1;
    }
    Collections.sort(localArrayList, q.c);
    return (File[])localArrayList.toArray(new File[0]);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.model.ExtFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */