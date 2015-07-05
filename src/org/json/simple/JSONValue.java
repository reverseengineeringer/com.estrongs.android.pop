package org.json.simple;

import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.util.List;
import java.util.Map;
import org.json.simple.parser.JSONParser;

public class JSONValue
{
  public static String escape(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    StringBuffer localStringBuffer = new StringBuffer();
    escape(paramString, localStringBuffer);
    return localStringBuffer.toString();
  }
  
  static void escape(String paramString, StringBuffer paramStringBuffer)
  {
    int i = 0;
    if (i < paramString.length())
    {
      char c = paramString.charAt(i);
      String str;
      int j;
      switch (c)
      {
      default: 
        if (((c >= 0) && (c <= '\037')) || ((c >= '') && (c <= '')) || ((c >= ' ') && (c <= '⃿')))
        {
          str = Integer.toHexString(c);
          paramStringBuffer.append("\\u");
          j = 0;
        }
        break;
      case '"': 
        while (j < 4 - str.length())
        {
          paramStringBuffer.append('0');
          j += 1;
          continue;
          paramStringBuffer.append("\\\"");
        }
      }
      for (;;)
      {
        i += 1;
        break;
        paramStringBuffer.append("\\\\");
        continue;
        paramStringBuffer.append("\\b");
        continue;
        paramStringBuffer.append("\\f");
        continue;
        paramStringBuffer.append("\\n");
        continue;
        paramStringBuffer.append("\\r");
        continue;
        paramStringBuffer.append("\\t");
        continue;
        paramStringBuffer.append("\\/");
        continue;
        paramStringBuffer.append(str.toUpperCase());
        continue;
        paramStringBuffer.append(c);
      }
    }
  }
  
  public static Object parse(Reader paramReader)
  {
    try
    {
      paramReader = new JSONParser().parse(paramReader);
      return paramReader;
    }
    catch (Exception paramReader) {}
    return null;
  }
  
  public static Object parse(String paramString)
  {
    return parse(new StringReader(paramString));
  }
  
  public static Object parseWithException(Reader paramReader)
  {
    return new JSONParser().parse(paramReader);
  }
  
  public static Object parseWithException(String paramString)
  {
    return new JSONParser().parse(paramString);
  }
  
  public static String toJSONString(Object paramObject)
  {
    if (paramObject == null) {
      return "null";
    }
    if ((paramObject instanceof String)) {
      return "\"" + escape((String)paramObject) + "\"";
    }
    if ((paramObject instanceof Double))
    {
      if ((((Double)paramObject).isInfinite()) || (((Double)paramObject).isNaN())) {
        return "null";
      }
      return paramObject.toString();
    }
    if ((paramObject instanceof Float))
    {
      if ((((Float)paramObject).isInfinite()) || (((Float)paramObject).isNaN())) {
        return "null";
      }
      return paramObject.toString();
    }
    if ((paramObject instanceof Number)) {
      return paramObject.toString();
    }
    if ((paramObject instanceof Boolean)) {
      return paramObject.toString();
    }
    if ((paramObject instanceof JSONAware)) {
      return ((JSONAware)paramObject).toJSONString();
    }
    if ((paramObject instanceof Map)) {
      return JSONObject.toJSONString((Map)paramObject);
    }
    if ((paramObject instanceof List)) {
      return JSONArray.toJSONString((List)paramObject);
    }
    return paramObject.toString();
  }
  
  public static void writeJSONString(Object paramObject, Writer paramWriter)
  {
    if (paramObject == null)
    {
      paramWriter.write("null");
      return;
    }
    if ((paramObject instanceof String))
    {
      paramWriter.write(34);
      paramWriter.write(escape((String)paramObject));
      paramWriter.write(34);
      return;
    }
    if ((paramObject instanceof Double))
    {
      if ((((Double)paramObject).isInfinite()) || (((Double)paramObject).isNaN()))
      {
        paramWriter.write("null");
        return;
      }
      paramWriter.write(paramObject.toString());
      return;
    }
    if ((paramObject instanceof Float))
    {
      if ((((Float)paramObject).isInfinite()) || (((Float)paramObject).isNaN()))
      {
        paramWriter.write("null");
        return;
      }
      paramWriter.write(paramObject.toString());
      return;
    }
    if ((paramObject instanceof Number))
    {
      paramWriter.write(paramObject.toString());
      return;
    }
    if ((paramObject instanceof Boolean))
    {
      paramWriter.write(paramObject.toString());
      return;
    }
    if ((paramObject instanceof JSONStreamAware))
    {
      ((JSONStreamAware)paramObject).writeJSONString(paramWriter);
      return;
    }
    if ((paramObject instanceof JSONAware))
    {
      paramWriter.write(((JSONAware)paramObject).toJSONString());
      return;
    }
    if ((paramObject instanceof Map))
    {
      JSONObject.writeJSONString((Map)paramObject, paramWriter);
      return;
    }
    if ((paramObject instanceof List))
    {
      JSONArray.writeJSONString((List)paramObject, paramWriter);
      return;
    }
    paramWriter.write(paramObject.toString());
  }
}

/* Location:
 * Qualified Name:     org.json.simple.JSONValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */