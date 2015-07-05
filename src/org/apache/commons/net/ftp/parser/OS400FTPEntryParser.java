package org.apache.commons.net.ftp.parser;

import java.text.ParseException;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;

public class OS400FTPEntryParser
  extends ConfigurableFTPFileEntryParserImpl
{
  private static final String DEFAULT_DATE_FORMAT = "yy/MM/dd HH:mm:ss";
  private static final String REGEX = "(\\S+)\\s+(\\d+)\\s+(\\S+)\\s+(\\S+)\\s+(\\*\\S+)\\s+(\\S+/?)\\s*";
  
  public OS400FTPEntryParser()
  {
    this(null);
  }
  
  public OS400FTPEntryParser(FTPClientConfig paramFTPClientConfig)
  {
    super("(\\S+)\\s+(\\d+)\\s+(\\S+)\\s+(\\S+)\\s+(\\*\\S+)\\s+(\\S+/?)\\s*");
    configure(paramFTPClientConfig);
  }
  
  protected FTPClientConfig getDefaultConfiguration()
  {
    return new FTPClientConfig("OS/400", "yy/MM/dd HH:mm:ss", null, null, null, null);
  }
  
  public FTPFile parseFTPEntry(String paramString)
  {
    int i = 1;
    FTPFile localFTPFile = new FTPFile();
    localFTPFile.setRawListing(paramString);
    String str1;
    String str2;
    String str4;
    String str3;
    if (matches(paramString))
    {
      str1 = group(1);
      str2 = group(2);
      str4 = group(3) + " " + group(4);
      str3 = group(5);
      paramString = group(6);
    }
    try
    {
      localFTPFile.setTimestamp(super.parseTimestamp(str4));
      if (str3.equalsIgnoreCase("*STMF")) {
        i = 0;
      }
      for (;;)
      {
        localFTPFile.setType(i);
        localFTPFile.setUser(str1);
        try
        {
          localFTPFile.setSize(Long.parseLong(str2));
          if (paramString.endsWith("/"))
          {
            paramString = paramString.substring(0, paramString.length() - 1);
            i = paramString.lastIndexOf('/');
            str1 = paramString;
            if (i > -1) {
              str1 = paramString.substring(i + 1);
            }
            localFTPFile.setName(str1);
            return localFTPFile;
            if (str3.equalsIgnoreCase("*DIR")) {
              continue;
            }
            i = 3;
            continue;
            return null;
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          for (;;) {}
        }
      }
    }
    catch (ParseException localParseException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.OS400FTPEntryParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */