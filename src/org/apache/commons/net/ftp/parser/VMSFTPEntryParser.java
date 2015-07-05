package org.apache.commons.net.ftp.parser;

import java.io.BufferedReader;
import java.io.InputStream;
import java.text.ParseException;
import java.util.StringTokenizer;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;
import org.apache.commons.net.ftp.FTPListParseEngine;

public class VMSFTPEntryParser
  extends ConfigurableFTPFileEntryParserImpl
{
  private static final String DEFAULT_DATE_FORMAT = "d-MMM-yyyy HH:mm:ss";
  private static final String REGEX = "(.*;[0-9]+)\\s*(\\d+)/\\d+\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)";
  
  public VMSFTPEntryParser()
  {
    this(null);
  }
  
  public VMSFTPEntryParser(FTPClientConfig paramFTPClientConfig)
  {
    super("(.*;[0-9]+)\\s*(\\d+)/\\d+\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)");
    configure(paramFTPClientConfig);
  }
  
  protected FTPClientConfig getDefaultConfiguration()
  {
    return new FTPClientConfig("VMS", "d-MMM-yyyy HH:mm:ss", null, null, null, null);
  }
  
  protected boolean isVersioning()
  {
    return false;
  }
  
  public FTPFile parseFTPEntry(String paramString)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    FTPFile localFTPFile;
    String str4;
    String str5;
    String str1;
    String str2;
    String str3;
    if (matches(paramString))
    {
      localFTPFile = new FTPFile();
      localFTPFile.setRawListing(paramString);
      str4 = group(1);
      str5 = group(2);
      localObject1 = group(3) + " " + group(4);
      paramString = group(5);
      str1 = group(9);
      str2 = group(10);
      str3 = group(11);
    }
    try
    {
      localFTPFile.setTimestamp(super.parseTimestamp((String)localObject1));
      paramString = new StringTokenizer(paramString, ",");
      switch (paramString.countTokens())
      {
      default: 
        paramString = null;
        localObject1 = localObject2;
        if (str4.lastIndexOf(".DIR") != -1)
        {
          localFTPFile.setType(1);
          label179:
          if (!isVersioning()) {
            break label269;
          }
          localFTPFile.setName(str4);
        }
        break;
      }
      int i;
      for (;;)
      {
        localFTPFile.setSize(512L * Long.parseLong(str5));
        localFTPFile.setGroup((String)localObject1);
        localFTPFile.setUser(paramString);
        i = 0;
        if (i < 3) {
          break label290;
        }
        localObject1 = localFTPFile;
        return (FTPFile)localObject1;
        paramString = paramString.nextToken();
        localObject1 = localObject2;
        break;
        localObject1 = paramString.nextToken();
        paramString = paramString.nextToken();
        break;
        localFTPFile.setType(0);
        break label179;
        label269:
        localFTPFile.setName(str4.substring(0, str4.lastIndexOf(";")));
      }
      label290:
      paramString = new String[] { str1, str2, str3 }[i];
      if (paramString.indexOf('R') >= 0)
      {
        bool = true;
        label323:
        localFTPFile.setPermission(i, 0, bool);
        if (paramString.indexOf('W') < 0) {
          break label381;
        }
        bool = true;
        label342:
        localFTPFile.setPermission(i, 1, bool);
        if (paramString.indexOf('E') < 0) {
          break label386;
        }
      }
      label381:
      label386:
      for (boolean bool = true;; bool = false)
      {
        localFTPFile.setPermission(i, 2, bool);
        i += 1;
        break;
        bool = false;
        break label323;
        bool = false;
        break label342;
      }
    }
    catch (ParseException localParseException)
    {
      for (;;) {}
    }
  }
  
  @Deprecated
  public FTPFile[] parseFileList(InputStream paramInputStream)
  {
    FTPListParseEngine localFTPListParseEngine = new FTPListParseEngine(this);
    localFTPListParseEngine.readServerList(paramInputStream, null);
    return localFTPListParseEngine.getFiles();
  }
  
  public String readNextEntry(BufferedReader paramBufferedReader)
  {
    String str = paramBufferedReader.readLine();
    StringBuilder localStringBuilder = new StringBuilder();
    for (;;)
    {
      if (str == null) {}
      do
      {
        if (localStringBuilder.length() != 0) {
          break label78;
        }
        return null;
        if ((str.startsWith("Directory")) || (str.startsWith("Total")))
        {
          str = paramBufferedReader.readLine();
          break;
        }
        localStringBuilder.append(str);
      } while (str.trim().endsWith(")"));
      str = paramBufferedReader.readLine();
    }
    label78:
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.VMSFTPEntryParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */