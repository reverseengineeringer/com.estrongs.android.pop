package org.apache.commons.net.ftp.parser;

import java.text.ParseException;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;

public class NetwareFTPEntryParser
  extends ConfigurableFTPFileEntryParserImpl
{
  private static final String DEFAULT_DATE_FORMAT = "MMM dd yyyy";
  private static final String DEFAULT_RECENT_DATE_FORMAT = "MMM dd HH:mm";
  private static final String REGEX = "(d|-){1}\\s+\\[(.*)\\]\\s+(\\S+)\\s+(\\d+)\\s+(\\S+\\s+\\S+\\s+((\\d+:\\d+)|(\\d{4})))\\s+(.*)";
  
  public NetwareFTPEntryParser()
  {
    this(null);
  }
  
  public NetwareFTPEntryParser(FTPClientConfig paramFTPClientConfig)
  {
    super("(d|-){1}\\s+\\[(.*)\\]\\s+(\\S+)\\s+(\\d+)\\s+(\\S+\\s+\\S+\\s+((\\d+:\\d+)|(\\d{4})))\\s+(.*)");
    configure(paramFTPClientConfig);
  }
  
  protected FTPClientConfig getDefaultConfiguration()
  {
    return new FTPClientConfig("NETWARE", "MMM dd yyyy", "MMM dd HH:mm", null, null, null);
  }
  
  public FTPFile parseFTPEntry(String paramString)
  {
    FTPFile localFTPFile = new FTPFile();
    String str1;
    String str2;
    String str3;
    String str5;
    String str4;
    if (matches(paramString))
    {
      paramString = group(1);
      str1 = group(2);
      str2 = group(3);
      str3 = group(4);
      str5 = group(5);
      str4 = group(9);
    }
    try
    {
      localFTPFile.setTimestamp(super.parseTimestamp(str5));
      if (paramString.trim().equals("d")) {
        localFTPFile.setType(1);
      }
      for (;;)
      {
        localFTPFile.setUser(str2);
        localFTPFile.setName(str4.trim());
        localFTPFile.setSize(Long.parseLong(str3.trim()));
        if (str1.indexOf("R") != -1) {
          localFTPFile.setPermission(0, 0, true);
        }
        if (str1.indexOf("W") != -1) {
          localFTPFile.setPermission(0, 1, true);
        }
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
 * Qualified Name:     org.apache.commons.net.ftp.parser.NetwareFTPEntryParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */