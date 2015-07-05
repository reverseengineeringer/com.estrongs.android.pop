package org.apache.commons.net.ftp.parser;

import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFileEntryParser;

public abstract interface FTPFileEntryParserFactory
{
  public abstract FTPFileEntryParser createFileEntryParser(String paramString);
  
  public abstract FTPFileEntryParser createFileEntryParser(FTPClientConfig paramFTPClientConfig);
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.FTPFileEntryParserFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */