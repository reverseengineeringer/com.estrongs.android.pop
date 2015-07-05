package org.simpleframework.xml.core;

import org.simpleframework.xml.filter.Filter;

class TemplateEngine
{
  private Filter filter;
  private Template name = new Template();
  private int off;
  private Template source = new Template();
  private Template text = new Template();
  
  public TemplateEngine(Filter paramFilter)
  {
    filter = paramFilter;
  }
  
  private void name()
  {
    for (;;)
    {
      if (off >= source.count) {}
      char c;
      for (;;)
      {
        if (name.length() > 0)
        {
          text.append("${");
          text.append(name);
        }
        return;
        char[] arrayOfChar = source.buf;
        int i = off;
        off = (i + 1);
        c = arrayOfChar[i];
        if (c != '}') {
          break;
        }
        replace();
      }
      name.append(c);
    }
  }
  
  private void parse()
  {
    for (;;)
    {
      if (off >= source.count) {
        return;
      }
      char[] arrayOfChar = source.buf;
      int i = off;
      off = (i + 1);
      char c = arrayOfChar[i];
      if ((c == '$') && (off < source.count))
      {
        arrayOfChar = source.buf;
        i = off;
        off = (i + 1);
        if (arrayOfChar[i] == '{') {
          name();
        } else {
          off -= 1;
        }
      }
      else
      {
        text.append(c);
      }
    }
  }
  
  private void replace()
  {
    if (name.length() > 0) {
      replace(name);
    }
    name.clear();
  }
  
  private void replace(String paramString)
  {
    String str = filter.replace(paramString);
    if (str == null)
    {
      text.append("${");
      text.append(paramString);
      text.append("}");
      return;
    }
    text.append(str);
  }
  
  private void replace(Template paramTemplate)
  {
    replace(paramTemplate.toString());
  }
  
  public void clear()
  {
    name.clear();
    text.clear();
    source.clear();
    off = 0;
  }
  
  public String process(String paramString)
  {
    if (paramString.indexOf('$') < 0) {
      return paramString;
    }
    try
    {
      source.append(paramString);
      parse();
      paramString = text.toString();
      return paramString;
    }
    finally
    {
      clear();
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.TemplateEngine
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */