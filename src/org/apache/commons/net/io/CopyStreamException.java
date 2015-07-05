package org.apache.commons.net.io;

import java.io.IOException;

public class CopyStreamException
  extends IOException
{
  private static final long serialVersionUID = -2602899129433221532L;
  private final IOException ioException;
  private final long totalBytesTransferred;
  
  public CopyStreamException(String paramString, long paramLong, IOException paramIOException)
  {
    super(paramString);
    totalBytesTransferred = paramLong;
    ioException = paramIOException;
  }
  
  public IOException getIOException()
  {
    return ioException;
  }
  
  public long getTotalBytesTransferred()
  {
    return totalBytesTransferred;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.CopyStreamException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */