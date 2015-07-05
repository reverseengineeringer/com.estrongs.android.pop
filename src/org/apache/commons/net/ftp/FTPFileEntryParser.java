package org.apache.commons.net.ftp;

import java.io.BufferedReader;
import java.util.List;

public abstract interface FTPFileEntryParser
{
  public abstract FTPFile parseFTPEntry(String paramString);
  
  public abstract List<String> preParse(List<String> paramList);
  
  public abstract String readNextEntry(BufferedReader paramBufferedReader);
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPFileEntryParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */