package com.estrongs.old.fs.impl.sftp;

import com.jcraft.jsch.ChannelSftp.LsEntry;
import com.jcraft.jsch.SftpATTRS;
import java.io.File;

public class OldSFtpFileSystem$SFTPFileWrapper
  extends File
{
  private static final long serialVersionUID = 1L;
  SftpATTRS attr = null;
  ChannelSftp.LsEntry sftpFile;
  
  OldSFtpFileSystem$SFTPFileWrapper(ChannelSftp.LsEntry paramLsEntry)
  {
    super("/sdcard");
    sftpFile = paramLsEntry;
    attr = paramLsEntry.b();
  }
  
  public String getName()
  {
    return sftpFile.a();
  }
  
  public boolean isDirectory()
  {
    return attr.d();
  }
  
  public boolean isFile()
  {
    return !attr.d();
  }
  
  public long lastModified()
  {
    return attr.l() * 1000L;
  }
  
  public long length()
  {
    return attr.g();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.old.fs.impl.sftp.OldSFtpFileSystem.SFTPFileWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */