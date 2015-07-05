package org.simpleframework.xml.transform;

import java.util.regex.Pattern;

class StringArrayTransform
  implements Transform<String[]>
{
  private final Pattern pattern;
  private final String token;
  
  public StringArrayTransform()
  {
    this(",");
  }
  
  public StringArrayTransform(String paramString)
  {
    pattern = Pattern.compile(paramString);
    token = paramString;
  }
  
  private String[] read(String paramString1, String paramString2)
  {
    paramString1 = pattern.split(paramString1);
    int i = 0;
    for (;;)
    {
      if (i >= paramString1.length) {
        return paramString1;
      }
      paramString2 = paramString1[i];
      if (paramString2 != null) {
        paramString1[i] = paramString2.trim();
      }
      i += 1;
    }
  }
  
  private String write(String[] paramArrayOfString, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfString.length) {
        return localStringBuilder.toString();
      }
      String str = paramArrayOfString[i];
      if (str != null)
      {
        if (localStringBuilder.length() > 0)
        {
          localStringBuilder.append(paramString);
          localStringBuilder.append(' ');
        }
        localStringBuilder.append(str);
      }
      i += 1;
    }
  }
  
  public String[] read(String paramString)
  {
    return read(paramString, token);
  }
  
  public String write(String[] paramArrayOfString)
  {
    return write(paramArrayOfString, token);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.transform.StringArrayTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */