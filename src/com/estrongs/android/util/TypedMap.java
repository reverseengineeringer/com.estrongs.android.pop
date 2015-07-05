package com.estrongs.android.util;

import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class TypedMap
  extends HashMap<String, Object>
{
  public static final TypedMap EMPTY = new TypedMap.EmptyTypedMap();
  public static final String KEY_COUNT_CHILDREN = "countChildren";
  public static final String KEY_FROM = "from";
  public static final String KEY_TO = "to";
  private static final long serialVersionUID = 1L;
  
  public TypedMap() {}
  
  public TypedMap(TypedMap paramTypedMap)
  {
    if (paramTypedMap != null)
    {
      Iterator localIterator = paramTypedMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        put(str, paramTypedMap.get(str));
      }
    }
  }
  
  public boolean getBoolean(String paramString)
  {
    return bd.b(get(paramString));
  }
  
  public boolean getBoolean(String paramString, boolean paramBoolean)
  {
    paramString = get(paramString);
    if (paramString == null) {
      return paramBoolean;
    }
    return bd.a(paramString.toString(), paramBoolean);
  }
  
  public Date getDate(String paramString)
  {
    paramString = get(paramString);
    if (paramString != null) {
      return (Date)paramString;
    }
    return null;
  }
  
  public int getInt(String paramString)
  {
    return (int)getLong(paramString);
  }
  
  public int getInt(String paramString, long paramLong)
  {
    return (int)getLong(paramString, paramLong);
  }
  
  public long getLong(String paramString)
  {
    return getLong(paramString, 0L);
  }
  
  public long getLong(String paramString, long paramLong)
  {
    paramString = get(paramString);
    if (paramString == null) {
      return paramLong;
    }
    return bd.a(paramString.toString(), paramLong);
  }
  
  public String getString(String paramString)
  {
    paramString = get(paramString);
    if (paramString != null) {
      return paramString.toString();
    }
    return null;
  }
  
  public String getString(String paramString1, String paramString2)
  {
    paramString1 = get(paramString1);
    if (paramString1 != null) {
      paramString2 = paramString1.toString();
    }
    return paramString2;
  }
  
  public TypedMap put(String paramString, Object paramObject)
  {
    super.put(paramString, paramObject);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.TypedMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */