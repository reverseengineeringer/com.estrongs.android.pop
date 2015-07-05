package org.apache.commons.net.ftp.parser;

import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.apache.commons.net.ftp.FTPClientConfig;

public class VMSVersioningFTPEntryParser
  extends VMSFTPEntryParser
{
  private static final String PRE_PARSE_REGEX = "(.*);([0-9]+)\\s*.*";
  private final Pattern _preparse_pattern_;
  
  public VMSVersioningFTPEntryParser()
  {
    this(null);
  }
  
  public VMSVersioningFTPEntryParser(FTPClientConfig paramFTPClientConfig)
  {
    configure(paramFTPClientConfig);
    try
    {
      _preparse_pattern_ = Pattern.compile("(.*);([0-9]+)\\s*.*");
      return;
    }
    catch (PatternSyntaxException paramFTPClientConfig)
    {
      throw new IllegalArgumentException("Unparseable regex supplied:  (.*);([0-9]+)\\s*.*");
    }
  }
  
  protected boolean isVersioning()
  {
    return true;
  }
  
  public List<String> preParse(List<String> paramList)
  {
    HashMap localHashMap = new HashMap();
    ListIterator localListIterator = paramList.listIterator();
    if (!localListIterator.hasNext()) {}
    for (;;)
    {
      Object localObject2;
      if (!localListIterator.hasPrevious())
      {
        return paramList;
        localObject1 = ((String)localListIterator.next()).trim();
        localObject1 = _preparse_pattern_.matcher((CharSequence)localObject1);
        if (!((Matcher)localObject1).matches()) {
          break;
        }
        localObject2 = ((Matcher)localObject1).toMatchResult();
        localObject1 = ((MatchResult)localObject2).group(1);
        localObject2 = Integer.valueOf(((MatchResult)localObject2).group(2));
        Integer localInteger = (Integer)localHashMap.get(localObject1);
        if ((localInteger != null) && (((Integer)localObject2).intValue() < localInteger.intValue()))
        {
          localListIterator.remove();
          break;
        }
        localHashMap.put(localObject1, localObject2);
        break;
      }
      Object localObject1 = ((String)localListIterator.previous()).trim();
      localObject1 = _preparse_pattern_.matcher((CharSequence)localObject1);
      if (((Matcher)localObject1).matches())
      {
        localObject2 = ((Matcher)localObject1).toMatchResult();
        localObject1 = ((MatchResult)localObject2).group(1);
        localObject2 = Integer.valueOf(((MatchResult)localObject2).group(2));
        localObject1 = (Integer)localHashMap.get(localObject1);
        if ((localObject1 != null) && (((Integer)localObject2).intValue() < ((Integer)localObject1).intValue())) {
          localListIterator.remove();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.parser.VMSVersioningFTPEntryParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */