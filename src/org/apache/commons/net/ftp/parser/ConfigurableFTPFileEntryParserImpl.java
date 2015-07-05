package org.apache.commons.net.ftp.parser;

import java.util.Calendar;
import org.apache.commons.net.ftp.Configurable;
import org.apache.commons.net.ftp.FTPClientConfig;

public abstract class ConfigurableFTPFileEntryParserImpl
  extends RegexFTPFileEntryParserImpl
  implements Configurable
{
  private final FTPTimestampParser timestampParser = new FTPTimestampParserImpl();
  
  public ConfigurableFTPFileEntryParserImpl(String paramString)
  {
    super(paramString);
  }
  
  public void configure(FTPClientConfig paramFTPClientConfig)
  {
    FTPClientConfig localFTPClientConfig;
    if ((timestampParser instanceof Configurable))
    {
      localFTPClientConfig = getDefaultConfiguration();
      if (paramFTPClientConfig != null)
      {
        if (paramFTPClientConfig.getDefaultDateFormatStr() == null) {
          paramFTPClientConfig.setDefaultDateFormatStr(localFTPClientConfig.getDefaultDateFormatStr());
        }
        if (paramFTPClientConfig.getRecentDateFormatStr() == null) {
          paramFTPClientConfig.setRecentDateFormatStr(localFTPClientConfig.getRecentDateFormatStr());
        }
        ((Configurable)timestampParser).configure(paramFTPClientConfig);
      }
    }
    else
    {
      return;
    }
    ((Configurable)timestampParser).configure(localFTPClientConfig);
  }
  
  protected abstract FTPClientConfig getDefaultConfiguration();
  
  public Calendar parseTimestamp(String paramString)
  {
    return timestampParser.parseTimestamp(paramString);
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.ConfigurableFTPFileEntryParserImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */