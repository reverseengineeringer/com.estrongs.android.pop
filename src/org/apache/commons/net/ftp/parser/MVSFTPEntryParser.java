package org.apache.commons.net.ftp.parser;

import java.text.ParseException;
import java.util.List;
import org.apache.commons.net.ftp.FTPClientConfig;
import org.apache.commons.net.ftp.FTPFile;

public class MVSFTPEntryParser
  extends ConfigurableFTPFileEntryParserImpl
{
  static final String DEFAULT_DATE_FORMAT = "yyyy/MM/dd HH:mm";
  static final String FILE_LIST_REGEX = "\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+[FV]\\S*\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*";
  static final int FILE_LIST_TYPE = 0;
  static final String JES_LEVEL_1_LIST_REGEX = "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*";
  static final int JES_LEVEL_1_LIST_TYPE = 3;
  static final String JES_LEVEL_2_LIST_REGEX = "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*";
  static final int JES_LEVEL_2_LIST_TYPE = 4;
  static final String MEMBER_LIST_REGEX = "(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*";
  static final int MEMBER_LIST_TYPE = 1;
  static final int UNIX_LIST_TYPE = 2;
  static final int UNKNOWN_LIST_TYPE = -1;
  private int isType = -1;
  private UnixFTPEntryParser unixFTPEntryParser;
  
  public MVSFTPEntryParser()
  {
    super("");
    super.configure(null);
  }
  
  private boolean parseFileList(FTPFile paramFTPFile, String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    String str;
    if (matches(paramString))
    {
      paramFTPFile.setRawListing(paramString);
      paramString = group(2);
      str = group(1);
      paramFTPFile.setName(paramString);
      if (!"PS".equals(str)) {
        break label56;
      }
      paramFTPFile.setType(0);
    }
    for (;;)
    {
      bool1 = true;
      label56:
      do
      {
        return bool1;
        if ("PO".equals(str)) {
          break;
        }
        bool1 = bool2;
      } while (!"PO-E".equals(str));
      paramFTPFile.setType(1);
    }
  }
  
  private boolean parseJeslevel1List(FTPFile paramFTPFile, String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (matches(paramString))
    {
      bool1 = bool2;
      if (group(3).equalsIgnoreCase("OUTPUT"))
      {
        paramFTPFile.setRawListing(paramString);
        paramFTPFile.setName(group(2));
        paramFTPFile.setType(0);
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private boolean parseJeslevel2List(FTPFile paramFTPFile, String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (matches(paramString))
    {
      bool1 = bool2;
      if (group(4).equalsIgnoreCase("OUTPUT"))
      {
        paramFTPFile.setRawListing(paramString);
        paramFTPFile.setName(group(2));
        paramFTPFile.setType(0);
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private boolean parseMemberList(FTPFile paramFTPFile, String paramString)
  {
    if (matches(paramString))
    {
      paramFTPFile.setRawListing(paramString);
      paramString = group(1);
      String str = group(2) + " " + group(3);
      paramFTPFile.setName(paramString);
      paramFTPFile.setType(0);
      try
      {
        paramFTPFile.setTimestamp(super.parseTimestamp(str));
        return true;
      }
      catch (ParseException paramFTPFile)
      {
        paramFTPFile.printStackTrace();
        return false;
      }
    }
    return false;
  }
  
  private boolean parseSimpleEntry(FTPFile paramFTPFile, String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramString != null)
    {
      bool1 = bool2;
      if (paramString.length() > 0)
      {
        paramFTPFile.setRawListing(paramString);
        paramFTPFile.setName(paramString.split(" ")[0]);
        paramFTPFile.setType(0);
        bool1 = true;
      }
    }
    return bool1;
  }
  
  private boolean parseUnixList(FTPFile paramFTPFile, String paramString)
  {
    return unixFTPEntryParser.parseFTPEntry(paramString) != null;
  }
  
  protected FTPClientConfig getDefaultConfiguration()
  {
    return new FTPClientConfig("MVS", "yyyy/MM/dd HH:mm", null, null, null, null);
  }
  
  public FTPFile parseFTPEntry(String paramString)
  {
    boolean bool1 = false;
    FTPFile localFTPFile = new FTPFile();
    if (isType == 0) {
      bool1 = parseFileList(localFTPFile, paramString);
    }
    for (;;)
    {
      paramString = localFTPFile;
      if (!bool1) {
        paramString = null;
      }
      return paramString;
      if (isType == 1)
      {
        boolean bool2 = parseMemberList(localFTPFile, paramString);
        bool1 = bool2;
        if (!bool2) {
          bool1 = parseSimpleEntry(localFTPFile, paramString);
        }
      }
      else if (isType == 2)
      {
        bool1 = parseUnixList(localFTPFile, paramString);
      }
      else if (isType == 3)
      {
        bool1 = parseJeslevel1List(localFTPFile, paramString);
      }
      else if (isType == 4)
      {
        bool1 = parseJeslevel2List(localFTPFile, paramString);
      }
    }
  }
  
  public List<String> preParse(List<String> paramList)
  {
    String str;
    if ((paramList != null) && (paramList.size() > 0))
    {
      str = (String)paramList.get(0);
      if ((str.indexOf("Volume") < 0) || (str.indexOf("Dsname") < 0)) {
        break label72;
      }
      setType(0);
      super.setRegex("\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+[FV]\\S*\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*");
    }
    for (;;)
    {
      if (isType != 3) {
        paramList.remove(0);
      }
      return paramList;
      label72:
      if ((str.indexOf("Name") >= 0) && (str.indexOf("Id") >= 0))
      {
        setType(1);
        super.setRegex("(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*");
      }
      else if (str.indexOf("total") == 0)
      {
        setType(2);
        unixFTPEntryParser = new UnixFTPEntryParser();
      }
      else if (str.indexOf("Spool Files") >= 30)
      {
        setType(3);
        super.setRegex("(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*");
      }
      else if ((str.indexOf("JOBNAME") == 0) && (str.indexOf("JOBID") > 8))
      {
        setType(4);
        super.setRegex("(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*");
      }
      else
      {
        setType(-1);
      }
    }
  }
  
  void setType(int paramInt)
  {
    isType = paramInt;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.MVSFTPEntryParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */