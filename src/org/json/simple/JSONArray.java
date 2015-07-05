package org.json.simple;

import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class JSONArray
  extends ArrayList
  implements List, JSONAware, JSONStreamAware
{
  private static final long serialVersionUID = 3957988303675231981L;
  
  public static String toJSONString(List paramList)
  {
    if (paramList == null) {
      return "null";
    }
    int i = 1;
    StringBuffer localStringBuffer = new StringBuffer();
    paramList = paramList.iterator();
    localStringBuffer.append('[');
    while (paramList.hasNext())
    {
      if (i != 0) {
        i = 0;
      }
      Object localObject;
      for (;;)
      {
        localObject = paramList.next();
        if (localObject != null) {
          break label77;
        }
        localStringBuffer.append("null");
        break;
        localStringBuffer.append(',');
      }
      label77:
      localStringBuffer.append(JSONValue.toJSONString(localObject));
    }
    localStringBuffer.append(']');
    return localStringBuffer.toString();
  }
  
  public static void writeJSONString(List paramList, Writer paramWriter)
  {
    if (paramList == null)
    {
      paramWriter.write("null");
      return;
    }
    int i = 1;
    paramList = paramList.iterator();
    paramWriter.write(91);
    while (paramList.hasNext())
    {
      if (i != 0) {
        i = 0;
      }
      Object localObject;
      for (;;)
      {
        localObject = paramList.next();
        if (localObject != null) {
          break label70;
        }
        paramWriter.write("null");
        break;
        paramWriter.write(44);
      }
      label70:
      JSONValue.writeJSONString(localObject, paramWriter);
    }
    paramWriter.write(93);
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
 * Qualified Name:     org.json.simple.JSONArray
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */