package com.dropbox.client2.jsonextract;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class JsonThing
  extends JsonBase<Object>
{
  private static final HashMap<Class<?>, String> TypeNames;
  
  static
  {
    if (!JsonThing.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      TypeNames = new HashMap();
      TypeNames.put(String.class, "a string");
      TypeNames.put(Number.class, "a number");
      TypeNames.put(Boolean.class, "a boolean");
      TypeNames.put(Map.class, "an object");
      TypeNames.put(List.class, "an array");
      return;
    }
  }
  
  public JsonThing(Object paramObject)
  {
    super(paramObject, null);
  }
  
  public JsonThing(Object paramObject, String paramString)
  {
    super(paramObject, paramString);
  }
  
  private <T> T expect(Class<T> paramClass)
  {
    assert (paramClass != null);
    if (paramClass.isInstance(internal)) {
      return (T)internal;
    }
    throw error("expecting " + typeNameForClass(paramClass) + ", found " + typeNameForObject(internal));
  }
  
  private boolean is(Class<?> paramClass)
  {
    assert (paramClass != null);
    return paramClass.isInstance(internal);
  }
  
  static String pathConcat(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return paramString2;
    }
    return paramString1 + "/" + paramString2;
  }
  
  private static String typeNameForClass(Class<?> paramClass)
  {
    if (paramClass == null) {
      paramClass = "null";
    }
    String str;
    do
    {
      do
      {
        return paramClass;
        str = (String)TypeNames.get(paramClass);
        paramClass = str;
      } while ($assertionsDisabled);
      paramClass = str;
    } while (str != null);
    throw new AssertionError();
  }
  
  private static String typeNameForObject(Object paramObject)
  {
    if (paramObject == null) {
      return "null";
    }
    if ((paramObject instanceof Number)) {
      return "a number";
    }
    if ((paramObject instanceof String)) {
      return "a string";
    }
    if ((paramObject instanceof Boolean)) {
      return "a boolean";
    }
    if ((paramObject instanceof Map)) {
      return "an object";
    }
    if ((paramObject instanceof List)) {
      return "an array";
    }
    throw new IllegalArgumentException("not a valid org.json.simple type: " + paramObject.getClass().getName());
  }
  
  public boolean expectBoolean()
  {
    return ((Boolean)expect(Boolean.class)).booleanValue();
  }
  
  public double expectFloat64()
  {
    if ((internal instanceof Number)) {
      return ((Number)internal).doubleValue();
    }
    throw error("expecting a floating point number, found " + typeNameForObject(internal));
  }
  
  public int expectInt32()
  {
    if ((internal instanceof Number)) {
      return ((Number)internal).intValue();
    }
    throw error("expecting an integer, found " + typeNameForObject(internal));
  }
  
  public long expectInt64()
  {
    if ((internal instanceof Number)) {
      return ((Number)internal).longValue();
    }
    throw error("expecting an integer, found " + typeNameForObject(internal));
  }
  
  public JsonList expectList()
  {
    return new JsonList((List)expect(List.class), path);
  }
  
  public JsonMap expectMap()
  {
    return new JsonMap((Map)expect(Map.class), path);
  }
  
  public void expectNull()
  {
    if (internal != null) {
      throw error("expecting null");
    }
  }
  
  public Number expectNumber()
  {
    return (Number)expect(Number.class);
  }
  
  public String expectString()
  {
    return (String)expect(String.class);
  }
  
  public String expectStringOrNull()
  {
    if (internal == null) {
      return null;
    }
    return (String)expect(String.class);
  }
  
  public boolean isBoolean()
  {
    return is(Boolean.class);
  }
  
  public boolean isFloat64()
  {
    try
    {
      expectFloat64();
      return true;
    }
    catch (JsonExtractionException localJsonExtractionException) {}
    return false;
  }
  
  public boolean isInt32()
  {
    try
    {
      expectInt32();
      return true;
    }
    catch (JsonExtractionException localJsonExtractionException) {}
    return false;
  }
  
  public boolean isInt64()
  {
    try
    {
      expectInt64();
      return true;
    }
    catch (JsonExtractionException localJsonExtractionException) {}
    return false;
  }
  
  public boolean isList()
  {
    return is(List.class);
  }
  
  public boolean isMap()
  {
    return is(Map.class);
  }
  
  public boolean isNull()
  {
    return internal == null;
  }
  
  public boolean isNumber()
  {
    return is(Number.class);
  }
  
  public boolean isString()
  {
    return is(String.class);
  }
  
  public <T> T optionalExtract(JsonExtractor<T> paramJsonExtractor)
  {
    if (isNull()) {
      return null;
    }
    return (T)paramJsonExtractor.extract(this);
  }
  
  public JsonExtractionException unexpected()
  {
    return error("unexpected type: " + typeNameForObject(internal));
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.jsonextract.JsonThing
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */