package com.estrongs.fs.impl.u;

import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.w;
import java.net.MalformedURLException;
import jcifs.smb.SmbException;
import jcifs.smb.SmbFile;

public class a
  extends com.estrongs.fs.a
{
  protected boolean a = true;
  protected boolean b = true;
  
  public a(SmbFile paramSmbFile, String paramString)
  {
    super(paramString);
    paramString = paramSmbFile.getName();
    for (;;)
    {
      try
      {
        if ((!paramSmbFile.isDirectory()) || (!paramString.endsWith("/"))) {
          continue;
        }
        String str = paramString.substring(0, paramString.length() - 1);
        paramString = str;
      }
      catch (SmbException paramSmbFile)
      {
        continue;
        continue;
      }
      try
      {
        size = paramSmbFile.length();
        a = paramSmbFile.canWrite();
        b = paramSmbFile.canRead();
        lastModified = paramSmbFile.getLastModified();
        if (paramSmbFile.isDirectory())
        {
          type = w.a;
          setName(paramString);
          return;
        }
        type = w.b;
      }
      catch (SmbException paramSmbFile)
      {
        paramSmbFile.printStackTrace();
      }
    }
  }
  
  protected boolean canDelete()
  {
    return canWrite();
  }
  
  protected boolean canRead()
  {
    return b;
  }
  
  protected boolean canWrite()
  {
    return a;
  }
  
  public boolean exists()
  {
    try
    {
      boolean bool = new SmbFile(getAbsolutePath()).exists();
      return bool;
    }
    catch (SmbException localSmbException)
    {
      throw new FileSystemException(localSmbException);
    }
    catch (MalformedURLException localMalformedURLException)
    {
      throw new FileSystemException(localMalformedURLException);
    }
  }
  
  public void setName(String paramString)
  {
    int i = 0;
    if (name != null) {
      i = 1;
    }
    super.setName(paramString);
    if ((i != 0) && (getFileType().a()))
    {
      if (!path.endsWith("/")) {
        path += "/";
      }
      if (!absolutePath.endsWith("/")) {
        absolutePath += "/";
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.u.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */