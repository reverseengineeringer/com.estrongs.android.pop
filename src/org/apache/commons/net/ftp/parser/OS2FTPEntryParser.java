package org.apache.commons.net.ftp.parser;

import java.text.ParseException;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;

public class OS2FTPEntryParser
  extends ConfigurableFTPFileEntryParserImpl
{
  private static final String DEFAULT_DATE_FORMAT = "MM-dd-yy HH:mm";
  private static final String REGEX = "\\s*([0-9]+)\\s*(\\s+|[A-Z]+)\\s*(DIR|\\s+)\\s*(\\S+)\\s+(\\S+)\\s+(\\S.*)";
  
  public OS2FTPEntryParser()
  {
    this(null);
  }
  
  public OS2FTPEntryParser(FTPClientConfig paramFTPClientConfig)
  {
    super("\\s*([0-9]+)\\s*(\\s+|[A-Z]+)\\s*(DIR|\\s+)\\s*(\\S+)\\s+(\\S+)\\s+(\\S.*)");
    configure(paramFTPClientConfig);
  }
  
  protected FTPClientConfig getDefaultConfiguration()
  {
    return new FTPClientConfig("OS/2", "MM-dd-yy HH:mm", null, null, null, null);
  }
  
  public FTPFile parseFTPEntry(String paramString)
  {
    FTPFile localFTPFile = new FTPFile();
    String str1;
    String str2;
    String str4;
    String str3;
    if (matches(paramString))
    {
      paramString = group(1);
      str1 = group(2);
      str2 = group(3);
      str4 = group(4) + " " + group(5);
      str3 = group(6);
    }
    try
    {
      localFTPFile.setTimestamp(super.parseTimestamp(str4));
      if ((str2.trim().equals("DIR")) || (str1.trim().equals("DIR"))) {
        localFTPFile.setType(1);
      }
      for (;;)
      {
        localFTPFile.setName(str3.trim());
        localFTPFile.setSize(Long.parseLong(paramString.trim()));
        return localFTPFile;
        localFTPFile.setType(0);
      }
      return null;
    }
    catch (ParseException localParseException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.OS2FTPEntryParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */