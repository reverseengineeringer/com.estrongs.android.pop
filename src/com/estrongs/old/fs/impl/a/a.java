package com.estrongs.old.fs.impl.a;

import com.estrongs.fs.w;
import java.util.Calendar;
import org.apache.commons.net.ftp.FTPFile;

public class a
  extends com.estrongs.fs.a
{
  private FTPFile a;
  
  public a(FTPFile paramFTPFile, String paramString1, String paramString2)
  {
    super(paramString1);
    a = paramFTPFile;
    setName(paramFTPFile.getName());
    if (paramString2 != null)
    {
      isLink = true;
      linkTarget = paramString2;
    }
  }
  
  protected boolean canDelete()
  {
    return canWrite();
  }
  
  protected boolean canRead()
  {
    return a.hasPermission(0, 0);
  }
  
  protected boolean canWrite()
  {
    return a.hasPermission(0, 1);
  }
  
  protected w doGetFileType()
  {
    if (a.isDirectory()) {
      return w.a;
    }
    return w.b;
  }
  
  public boolean exists()
  {
    return c.b().b(getAbsolutePath());
  }
  
  public long lastModified()
  {
    if (a.getTimestamp() == null) {
      return 0L;
    }
    return a.getTimestamp().getTimeInMillis();
  }
  
  public long length()
  {
    return a.getSize();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.old.fs.impl.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */