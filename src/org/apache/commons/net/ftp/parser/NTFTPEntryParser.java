package org.apache.commons.net.ftp.parser;

import java.text.ParseException;
import org.apache.commons.net.ftp.Configurable;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;

public class NTFTPEntryParser
  extends ConfigurableFTPFileEntryParserImpl
{
  private static final String DEFAULT_DATE_FORMAT = "MM-dd-yy hh:mma";
  private static final String DEFAULT_DATE_FORMAT2 = "MM-dd-yy kk:mm";
  private static final String REGEX = "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)";
  private FTPTimestampParser timestampParser;
  
  public NTFTPEntryParser()
  {
    this(null);
  }
  
  public NTFTPEntryParser(FTPClientConfig paramFTPClientConfig)
  {
    super("(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)");
    configure(paramFTPClientConfig);
    paramFTPClientConfig = new FTPClientConfig("WINDOWS", "MM-dd-yy kk:mm", null, null, null, null);
    paramFTPClientConfig.setDefaultDateFormatStr("MM-dd-yy kk:mm");
    timestampParser = new FTPTimestampParserImpl();
    ((Configurable)timestampParser).configure(paramFTPClientConfig);
  }
  
  public FTPClientConfig getDefaultConfiguration()
  {
    return new FTPClientConfig("WINDOWS", "MM-dd-yy hh:mma", null, null, null, null);
  }
  
  public FTPFile parseFTPEntry(String paramString)
  {
    FTPFile localFTPFile = new FTPFile();
    localFTPFile.setRawListing(paramString);
    if (matches(paramString))
    {
      String str3 = group(1) + " " + group(2);
      paramString = group(3);
      String str1 = group(4);
      String str2 = group(5);
      try
      {
        localFTPFile.setTimestamp(super.parseTimestamp(str3));
        if ((str2 == null) || (str2.equals(".")) || (str2.equals("..")))
        {
          paramString = null;
          return paramString;
        }
      }
      catch (ParseException localParseException2)
      {
        do
        {
          for (;;)
          {
            try
            {
              localFTPFile.setTimestamp(timestampParser.parseTimestamp(str3));
            }
            catch (ParseException localParseException1) {}
          }
          localFTPFile.setName(str2);
          if ("<DIR>".equals(paramString))
          {
            localFTPFile.setType(1);
            localFTPFile.setSize(0L);
            return localFTPFile;
          }
          localFTPFile.setType(0);
          paramString = localFTPFile;
        } while (str1 == null);
        localFTPFile.setSize(Long.parseLong(str1));
        return localFTPFile;
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.NTFTPEntryParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */