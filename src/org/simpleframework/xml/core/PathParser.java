package org.simpleframework.xml.core;

import java.util.Iterator;
import java.util.LinkedList;
import org.simpleframework.xml.strategy.Type;

class PathParser
  implements Expression
{
  private boolean attribute;
  private PathParser.Cache attributes = new PathParser.Cache(this);
  private StringBuilder builder = new StringBuilder();
  private String cache;
  private int count;
  private char[] data;
  private PathParser.Cache elements = new PathParser.Cache(this);
  private LinkedList<Integer> indexes = new LinkedList();
  private String location;
  private LinkedList<String> names = new LinkedList();
  private int off;
  private String path;
  private LinkedList<String> prefixes = new LinkedList();
  private int start;
  private Type type;
  
  public PathParser(Type paramType, String paramString)
  {
    type = paramType;
    path = paramString;
    parse(paramString);
  }
  
  private void align()
  {
    if (names.size() > indexes.size()) {
      indexes.add(Integer.valueOf(1));
    }
  }
  
  private void attribute()
  {
    int i = off + 1;
    off = i;
    char c;
    do
    {
      if (off >= count)
      {
        if (off > i) {
          break;
        }
        throw new PathException("Attribute reference in '%s' for %s is empty", new Object[] { path, type });
      }
      char[] arrayOfChar = data;
      int j = off;
      off = (j + 1);
      c = arrayOfChar[j];
    } while (isValid(c));
    throw new PathException("Illegal character '%s' in attribute for '%s' in %s", new Object[] { Character.valueOf(c), path, type });
    attribute = true;
    insert(i, off - i);
  }
  
  private void build()
  {
    int j = names.size();
    int i = 0;
    if (i >= j)
    {
      location = builder.toString();
      return;
    }
    String str = (String)names.get(i);
    int k = ((Integer)indexes.get(i)).intValue();
    if (i > 0) {
      builder.append('/');
    }
    if ((attribute) && (i == j - 1))
    {
      builder.append('@');
      builder.append(str);
    }
    for (;;)
    {
      i += 1;
      break;
      builder.append(str);
      builder.append('[');
      builder.append(k);
      builder.append(']');
    }
  }
  
  private void element()
  {
    int j = off;
    int i = 0;
    for (;;)
    {
      if (off >= count) {}
      char c;
      do
      {
        for (;;)
        {
          insert(j, i);
          return;
          char[] arrayOfChar = data;
          int k = off;
          off = (k + 1);
          c = arrayOfChar[k];
          if (isValid(c)) {
            break label132;
          }
          if (c == '@')
          {
            off -= 1;
          }
          else
          {
            if (c != '[') {
              break;
            }
            index();
          }
        }
      } while (c == '/');
      throw new PathException("Illegal character '%s' in element for '%s' in %s", new Object[] { Character.valueOf(c), path, type });
      label132:
      i += 1;
    }
  }
  
  private String getAttributePath(String paramString1, String paramString2)
  {
    if (isEmpty(paramString1)) {
      return paramString2;
    }
    return paramString1 + "/@" + paramString2;
  }
  
  private String getElementPath(String paramString1, String paramString2)
  {
    if (isEmpty(paramString2)) {
      return paramString1;
    }
    if (isEmpty(paramString1)) {
      return paramString2;
    }
    return paramString1 + "/" + paramString2 + "[1]";
  }
  
  private void index()
  {
    int j;
    int k;
    if (data[(off - 1)] == '[')
    {
      j = 0;
      if (off >= count) {
        k = j;
      }
    }
    for (;;)
    {
      char[] arrayOfChar = data;
      j = off;
      off = (j + 1);
      if (arrayOfChar[(j - 1)] != ']')
      {
        throw new PathException("Invalid index for path '%s' in %s", new Object[] { path, type });
        arrayOfChar = data;
        k = off;
        off = (k + 1);
        int i = arrayOfChar[k];
        k = j;
        if (!isDigit(i)) {
          continue;
        }
        j = j * 10 + i - 48;
        break;
      }
      indexes.add(Integer.valueOf(k));
      return;
      k = 0;
    }
  }
  
  private void insert(int paramInt1, int paramInt2)
  {
    String str = new String(data, paramInt1, paramInt2);
    if (paramInt2 > 0) {
      insert(str);
    }
  }
  
  private void insert(String paramString)
  {
    int i = paramString.indexOf(':');
    String str2 = null;
    String str1 = paramString;
    if (i > 0)
    {
      str2 = paramString.substring(0, i);
      str1 = paramString.substring(i + 1);
    }
    prefixes.add(str2);
    names.add(str1);
  }
  
  private boolean isDigit(char paramChar)
  {
    return Character.isDigit(paramChar);
  }
  
  private boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  private boolean isLetter(char paramChar)
  {
    return Character.isLetterOrDigit(paramChar);
  }
  
  private boolean isSpecial(char paramChar)
  {
    return (paramChar == '_') || (paramChar == '-') || (paramChar == ':');
  }
  
  private boolean isValid(char paramChar)
  {
    return (isLetter(paramChar)) || (isSpecial(paramChar));
  }
  
  private void parse(String paramString)
  {
    if (paramString != null)
    {
      count = paramString.length();
      data = new char[count];
      paramString.getChars(0, count, data, 0);
    }
    path();
  }
  
  private void path()
  {
    if (data[off] == '/') {
      throw new PathException("Path '%s' in %s references document root", new Object[] { path, type });
    }
    if (data[off] == '.') {
      skip();
    }
    for (;;)
    {
      if (off >= count)
      {
        truncate();
        build();
        return;
      }
      if (attribute) {
        throw new PathException("Path '%s' in %s references an invalid attribute", new Object[] { path, type });
      }
      segment();
    }
  }
  
  private void segment()
  {
    int i = data[off];
    if (i == 47) {
      throw new PathException("Invalid path expression '%s' in %s", new Object[] { path, type });
    }
    if (i == 64) {
      attribute();
    }
    for (;;)
    {
      align();
      return;
      element();
    }
  }
  
  private void skip()
  {
    if (data.length > 1)
    {
      if (data[(off + 1)] != '/') {
        throw new PathException("Path '%s' in %s has an illegal syntax", new Object[] { path, type });
      }
      off += 1;
    }
    int i = off + 1;
    off = i;
    start = i;
  }
  
  private void truncate()
  {
    if (off - 1 >= data.length) {
      off -= 1;
    }
    while (data[(off - 1)] != '/') {
      return;
    }
    off -= 1;
  }
  
  public String getAttribute(String paramString)
  {
    String str2 = (String)attributes.get(paramString);
    String str1 = str2;
    if (str2 == null)
    {
      str2 = getAttributePath(location, paramString);
      str1 = str2;
      if (str2 != null)
      {
        attributes.put(paramString, str2);
        str1 = str2;
      }
    }
    return str1;
  }
  
  public String getElement(String paramString)
  {
    String str2 = (String)elements.get(paramString);
    String str1 = str2;
    if (str2 == null)
    {
      str2 = getElementPath(location, paramString);
      str1 = str2;
      if (str2 != null)
      {
        elements.put(paramString, str2);
        str1 = str2;
      }
    }
    return str1;
  }
  
  public String getFirst()
  {
    return (String)names.getFirst();
  }
  
  public int getIndex()
  {
    return ((Integer)indexes.getFirst()).intValue();
  }
  
  public String getLast()
  {
    return (String)names.getLast();
  }
  
  public String getPath()
  {
    return location;
  }
  
  public Expression getPath(int paramInt)
  {
    return getPath(paramInt, 0);
  }
  
  public Expression getPath(int paramInt1, int paramInt2)
  {
    int i = names.size() - 1;
    if (i - paramInt2 >= paramInt1) {
      return new PathParser.PathSection(this, paramInt1, i - paramInt2);
    }
    return new PathParser.PathSection(this, paramInt1, paramInt1);
  }
  
  public String getPrefix()
  {
    return (String)prefixes.getFirst();
  }
  
  public boolean isAttribute()
  {
    return attribute;
  }
  
  public boolean isEmpty()
  {
    return isEmpty(location);
  }
  
  public boolean isPath()
  {
    return names.size() > 1;
  }
  
  public Iterator<String> iterator()
  {
    return names.iterator();
  }
  
  public String toString()
  {
    int i = off;
    int j = start;
    if (cache == null) {
      cache = new String(data, start, i - j);
    }
    return cache;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.PathParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */