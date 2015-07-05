package com.estrongs.old.fs.impl.sftp;

import com.estrongs.android.util.am;
import com.estrongs.fs.a;
import com.estrongs.fs.m;
import com.jcraft.jsch.SftpATTRS;

public class e
  extends a
{
  private SftpATTRS a;
  
  public e(SftpATTRS paramSftpATTRS, String paramString1, String paramString2)
  {
    super(paramString1);
    a = paramSftpATTRS;
    setName(am.d(paramString1));
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
  
  protected m doGetFileType()
  {
    if (a.d()) {
      return m.a;
    }
    return m.b;
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