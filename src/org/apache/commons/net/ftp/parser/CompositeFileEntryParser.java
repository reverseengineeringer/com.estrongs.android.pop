package org.apache.commons.net.ftp.parser;

import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPFileEntryParser;
import org.apache.commons.net.ftp.FTPFileEntryParserImpl;

public class CompositeFileEntryParser
  extends FTPFileEntryParserImpl
{
  private FTPFileEntryParser cachedFtpFileEntryParser = null;
  private final FTPFileEntryParser[] ftpFileEntryParsers;
  
  public CompositeFileEntryParser(FTPFileEntryParser[] paramArrayOfFTPFileEntryParser)
  {
    ftpFileEntryParsers = paramArrayOfFTPFileEntryParser;
  }
  
  public FTPFile parseFTPEntry(String paramString)
  {
    int i;
    if (cachedFtpFileEntryParser != null)
    {
      paramString = cachedFtpFileEntryParser.parseFTPEntry(paramString);
      if (paramString != null) {
        return paramString;
      }
    }
    else
    {
      i = 0;
    }
    for (;;)
    {
      if (i >= ftpFileEntryParsers.length) {
        return null;
      }
      FTPFileEntryParser localFTPFileEntryParser = ftpFileEntryParsers[i];
      FTPFile localFTPFile = localFTPFileEntryParser.parseFTPEntry(paramString);
      if (localFTPFile != null)
      {
        cachedFtpFileEntryParser = localFTPFileEntryParser;
        return localFTPFile;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.CompositeFileEntryParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */