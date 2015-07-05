package org.json.simple;

import java.io.Writer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class JSONObject
  extends HashMap
  implements Map, JSONAware, JSONStreamAware
{
  private static final long serialVersionUID = -503443796854799292L;
  
  public static String escape(String paramString)
  {
    return JSONValue.escape(paramString);
  }
  
  private static String toJSONString(String paramString, Object paramObject, StringBuffer paramStringBuffer)
  {
    paramStringBuffer.append('"');
    if (paramString == null) {
      paramStringBuffer.append("null");
    }
    for (;;)
    {
      paramStringBuffer.append('"').append(':');
      paramStringBuffer.append(JSONValue.toJSONString(paramObject));
      return paramStringBuffer.toString();
      JSONValue.escape(paramString, paramStringBuffer);
    }
  }
  
  public static String toJSONString(Map paramMap)
  {
    if (paramMap == null) {
      return "null";
    }
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 1;
    paramMap = paramMap.entrySet().iterator();
    localStringBuffer.append('{');
    if (paramMap.hasNext())
    {
      if (i != 0) {
        i = 0;
      }
      for (;;)
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        toJSONString(String.valueOf(localEntry.getKey()), localEntry.getValue(), localStringBuffer);
        break;
        localStringBuffer.append(',');
      }
    }
    localStringBuffer.append('}');
    return localStringBuffer.toString();
  }
  
  public static String toString(String paramString, Object paramObject)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    toJSONString(paramString, paramObject, localStringBuffer);
    return localStringBuffer.toString();
  }
  
  public static void writeJSONString(Map paramMap, Writer paramWriter)
  {
    if (paramMap == null)
    {
      paramWriter.write("null");
      return;
    }
    int i = 1;
    paramMap = paramMap.entrySet().iterator();
    paramWriter.write(123);
    if (paramMap.hasNext())
    {
      if (i != 0) {
        i = 0;
      }
      for (;;)
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        paramWriter.write(34);
        paramWriter.write(escape(String.valueOf(localEntry.getKey())));
        paramWriter.write(34);
        paramWriter.write(58);
        JSONValue.writeJSONString(localEntry.getValue(), paramWriter);
        break;
        paramWriter.write(44);
      }
    }
    paramWriter.write(125);
  }
  
  public String toJSONString()
  {
    return toJSONString(this);
  }
  
  public String toString()
  {
    return toJSONString();
  }
  
  public void writeJSONString(Writer paramWriter)
  {
    writeJSONString(this, paramWriter);
  }
}

/* Location:
 * Qualified Name:     org.json.simple.JSONObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */