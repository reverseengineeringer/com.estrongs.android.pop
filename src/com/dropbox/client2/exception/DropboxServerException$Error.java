package com.dropbox.client2.exception;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public class DropboxServerException$Error
{
  public String error;
  public Map<String, Object> fields;
  public String userError;
  
  public DropboxServerException$Error(Map<String, Object> paramMap)
  {
    fields = paramMap;
    Object localObject1 = paramMap.get("error");
    if ((localObject1 instanceof String)) {
      error = ((String)localObject1);
    }
    for (;;)
    {
      paramMap = paramMap.get("user_error");
      if ((paramMap instanceof String)) {
        userError = ((String)paramMap);
      }
      return;
      if ((localObject1 instanceof Map))
      {
        localObject1 = ((Map)localObject1).values().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          Object localObject2 = ((Iterator)localObject1).next();
          if ((localObject2 instanceof String)) {
            error = ((String)localObject2);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.exception.DropboxServerException.Error
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */