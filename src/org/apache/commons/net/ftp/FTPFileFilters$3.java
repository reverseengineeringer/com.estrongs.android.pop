package org.apache.commons.net.ftp;

class FTPFileFilters$3
  implements FTPFileFilter
{
  public boolean accept(FTPFile paramFTPFile)
  {
    return (paramFTPFile != null) && (paramFTPFile.isDirectory());
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPFileFilters.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */