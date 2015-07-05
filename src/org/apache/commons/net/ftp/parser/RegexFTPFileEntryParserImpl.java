package org.apache.commons.net.ftp.parser;

import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.apache.commons.net.ftp.FTPFileEntryParserImpl;

public abstract class RegexFTPFileEntryParserImpl
  extends FTPFileEntryParserImpl
{
  protected Matcher _matcher_ = null;
  private Pattern pattern = null;
  private MatchResult result = null;
  
  public RegexFTPFileEntryParserImpl(String paramString)
  {
    setRegex(paramString);
  }
  
  public int getGroupCnt()
  {
    if (result == null) {
      return 0;
    }
    return result.groupCount();
  }
  
  public String getGroupsAsString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 1;
    for (;;)
    {
      if (i > result.groupCount()) {
        return localStringBuilder.toString();
      }
      localStringBuilder.append(i).append(") ").append(result.group(i)).append(System.getProperty("line.separator"));
      i += 1;
    }
  }
  
  public String group(int paramInt)
  {
    if (result == null) {
      return null;
    }
    return result.group(paramInt);
  }
  
  public boolean matches(String paramString)
  {
    result = null;
    _matcher_ = pattern.matcher(paramString);
    if (_matcher_.matches()) {
      result = _matcher_.toMatchResult();
    }
    return result != null;
  }
  
  public boolean setRegex(String paramString)
  {
    try
    {
      pattern = Pattern.compile(paramString);
      if (pattern != null) {
        return true;
      }
    }
    catch (PatternSyntaxException localPatternSyntaxException)
    {
      throw new IllegalArgumentException("Unparseable regex supplied: " + paramString);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.RegexFTPFileEntryParserImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */