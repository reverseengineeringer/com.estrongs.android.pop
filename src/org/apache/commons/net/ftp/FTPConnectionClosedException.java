package org.apache.commons.net.ftp;

import java.io.IOException;

public class FTPConnectionClosedException
  extends IOException
{
  private static final long serialVersionUID = 3500547241659379952L;
  
  public FTPConnectionClosedException() {}
  
  public FTPConnectionClosedException(String paramString)
  {
    super(paramString);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPConnectionClosedException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */