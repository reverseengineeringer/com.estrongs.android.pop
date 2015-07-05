package com.dropbox.client2.jsonextract;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.simple.JSONValue;

public final class JsonExtractionException
  extends Exception
{
  private static final long serialVersionUID = -5744582005002105505L;
  
  public JsonExtractionException(String paramString1, String paramString2, Object paramObject) {}
  
  private static String summarizeValue(Object paramObject)
  {
    if ((paramObject instanceof Map))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      paramObject = (Map)paramObject;
      localStringBuilder.append("{");
      Iterator localIterator = ((Map)paramObject).entrySet().iterator();
      paramObject = "";
      for (;;)
      {
        if (!localIterator.hasNext())
        {
          localStringBuilder.append("}");
          return localStringBuilder.toString();
        }
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localStringBuilder.append((String)paramObject);
        paramObject = ", ";
        localStringBuilder.append(JSONValue.toJSONString(localEntry.getKey()));
        localStringBuilder.append(" = ");
        localStringBuilder.append("...");
      }
    }
    if ((paramObject instanceof List))
    {
      paramObject = (List)paramObject;
      if (((List)paramObject).isEmpty()) {
        return "[]";
      }
      if (((List)paramObject).size() == 1) {
        return "[" + summarizeValue(((List)paramObject).get(0)) + "]";
      }
      return "[" + summarizeValue(((List)paramObject).get(0)) + ", ...] (" + ((List)paramObject).size() + " elements)";
    }
    return JSONValue.toJSONString(paramObject);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.jsonextract.JsonExtractionException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */