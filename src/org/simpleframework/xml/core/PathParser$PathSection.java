package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

class PathParser$PathSection
  implements Expression
{
  private int begin;
  private List<String> cache = new ArrayList();
  private int end;
  private String path;
  private String section;
  
  public PathParser$PathSection(PathParser paramPathParser, int paramInt1, int paramInt2)
  {
    begin = paramInt1;
    end = paramInt2;
  }
  
  private String getCanonicalPath()
  {
    int j = 0;
    int i = 0;
    int m;
    int k;
    if (j >= begin)
    {
      m = i;
      k = j;
    }
    for (;;)
    {
      if (k > end)
      {
        return PathParser.access$6(this$0).substring(i + 1, m);
        i = PathParser.access$6(this$0).indexOf('/', i + 1);
        j += 1;
        break;
      }
      m = PathParser.access$6(this$0).indexOf('/', m + 1);
      j = m;
      if (m == -1) {
        j = PathParser.access$6(this$0).length();
      }
      k += 1;
      m = j;
    }
  }
  
  private String getFragment()
  {
    int j = 0;
    int i = PathParser.access$7(this$0);
    int m = 0;
    for (;;)
    {
      if (j > end) {}
      for (;;)
      {
        return new String(PathParser.access$9(this$0), m, i - 1 - m);
        if (i < PathParser.access$8(this$0)) {
          break;
        }
        i += 1;
      }
      char[] arrayOfChar = PathParser.access$9(this$0);
      int k = i + 1;
      int n = j;
      if (arrayOfChar[i] == '/')
      {
        j += 1;
        n = j;
        if (j == begin)
        {
          m = k;
          i = k;
          continue;
        }
      }
      i = k;
      j = n;
    }
  }
  
  public String getAttribute(String paramString)
  {
    String str2 = getPath();
    String str1 = paramString;
    if (str2 != null) {
      str1 = PathParser.access$3(this$0, str2, paramString);
    }
    return str1;
  }
  
  public String getElement(String paramString)
  {
    String str2 = getPath();
    String str1 = paramString;
    if (str2 != null) {
      str1 = PathParser.access$2(this$0, str2, paramString);
    }
    return str1;
  }
  
  public String getFirst()
  {
    return (String)PathParser.access$1(this$0).get(begin);
  }
  
  public int getIndex()
  {
    return ((Integer)PathParser.access$4(this$0).get(begin)).intValue();
  }
  
  public String getLast()
  {
    return (String)PathParser.access$1(this$0).get(end);
  }
  
  public String getPath()
  {
    if (section == null) {
      section = getCanonicalPath();
    }
    return section;
  }
  
  public Expression getPath(int paramInt)
  {
    return getPath(paramInt, 0);
  }
  
  public Expression getPath(int paramInt1, int paramInt2)
  {
    return new PathSection(this$0, begin + paramInt1, end - paramInt2);
  }
  
  public String getPrefix()
  {
    return (String)PathParser.access$5(this$0).get(begin);
  }
  
  public boolean isAttribute()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (PathParser.access$0(this$0))
    {
      bool1 = bool2;
      if (end >= PathParser.access$1(this$0).size() - 1) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public boolean isEmpty()
  {
    return begin == end;
  }
  
  public boolean isPath()
  {
    return end - begin >= 1;
  }
  
  public Iterator<String> iterator()
  {
    int i;
    if (cache.isEmpty()) {
      i = begin;
    }
    for (;;)
    {
      if (i > end) {
        return cache.iterator();
      }
      String str = (String)PathParser.access$1(this$0).get(i);
      if (str != null) {
        cache.add(str);
      }
      i += 1;
    }
  }
  
  public String toString()
  {
    if (path == null) {
      path = getFragment();
    }
    return path;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.PathParser.PathSection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */