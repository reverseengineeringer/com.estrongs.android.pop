package org.simpleframework.xml.core;

import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.strategy.Type;

class Entry
{
  private static final String DEFAULT_NAME = "entry";
  private boolean attribute;
  private Contact contact;
  private String entry;
  private String key;
  private Class keyType;
  private ElementMap label;
  private String value;
  private Class valueType;
  
  public Entry(Contact paramContact, ElementMap paramElementMap)
  {
    attribute = paramElementMap.attribute();
    entry = paramElementMap.entry();
    value = paramElementMap.value();
    key = paramElementMap.key();
    contact = paramContact;
    label = paramElementMap;
  }
  
  private Class getDependent(int paramInt)
  {
    Class[] arrayOfClass = contact.getDependents();
    if (arrayOfClass.length < paramInt) {
      throw new PersistenceException("Could not find type for %s at index %s", new Object[] { contact, Integer.valueOf(paramInt) });
    }
    return arrayOfClass[paramInt];
  }
  
  private boolean isEmpty(String paramString)
  {
    return paramString.length() == 0;
  }
  
  public Contact getContact()
  {
    return contact;
  }
  
  public String getEntry()
  {
    if (entry == null) {
      return entry;
    }
    if (isEmpty(entry)) {
      entry = "entry";
    }
    return entry;
  }
  
  public String getKey()
  {
    if (key == null) {
      return key;
    }
    if (isEmpty(key)) {
      key = null;
    }
    return key;
  }
  
  public Converter getKey(Context paramContext)
  {
    Type localType = getKeyType();
    if (paramContext.isPrimitive(localType)) {
      return new PrimitiveKey(paramContext, this, localType);
    }
    return new CompositeKey(paramContext, this, localType);
  }
  
  protected Type getKeyType()
  {
    if (keyType == null)
    {
      keyType = label.keyType();
      if (keyType == Void.TYPE) {
        keyType = getDependent(0);
      }
    }
    return new ClassType(keyType);
  }
  
  public String getValue()
  {
    if (value == null) {
      return value;
    }
    if (isEmpty(value)) {
      value = null;
    }
    return value;
  }
  
  public Converter getValue(Context paramContext)
  {
    Type localType = getValueType();
    if (paramContext.isPrimitive(localType)) {
      return new PrimitiveValue(paramContext, this, localType);
    }
    return new CompositeValue(paramContext, this, localType);
  }
  
  protected Type getValueType()
  {
    if (valueType == null)
    {
      valueType = label.valueType();
      if (valueType == Void.TYPE) {
        valueType = getDependent(1);
      }
    }
    return new ClassType(valueType);
  }
  
  public boolean isAttribute()
  {
    return attribute;
  }
  
  public boolean isInline()
  {
    return isAttribute();
  }
  
  public String toString()
  {
    return String.format("%s on %s", new Object[] { label, contact });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Entry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */