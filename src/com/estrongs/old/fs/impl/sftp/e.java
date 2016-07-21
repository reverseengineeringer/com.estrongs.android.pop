package com.estrongs.old.fs.impl.sftp;

import com.estrongs.android.util.ap;
import com.estrongs.fs.a;
import com.estrongs.fs.w;
import com.jcraft.jsch.SftpATTRS;

public class e
  extends a
{
  private SftpATTRS a;
  
  public e(SftpATTRS paramSftpATTRS, String paramString1, String paramString2)
  {
    super(paramString1);
    a = paramSftpATTRS;
    setName(ap.d(paramString1));
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
    return a.a().indexOf(1) == 114;
  }
  
  protected boolean canWrite()
  {
    return a.a().indexOf(2) == 119;
  }
  
  protected w doGetFileType()
  {
    if (a.d()) {
      return w.a;
    }
    return w.b;
  }
  
  public boolean exists()
  {
    return false;
  }
  
  public long lastModified()
  {
    return a.l() * 1000L;
  }
  
  public long length()
  {
    return a.g();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.old.fs.impl.sftp.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */