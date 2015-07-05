package org.apache.commons.net.ftp;

import java.io.BufferedReader;
import java.util.List;

public abstract class FTPFileEntryParserImpl
  implements FTPFileEntryParser
{
  public List<String> preParse(List<String> paramList)
  {
    return paramList;
  }
  
  public String readNextEntry(BufferedReader paramBufferedReader)
  {
    return paramBufferedReader.readLine();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPFileEntryParserImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */