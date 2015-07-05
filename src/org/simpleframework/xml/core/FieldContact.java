package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

class FieldContact
  implements Contact
{
  private Field field;
  private Annotation label;
  private int modifier;
  private String name;
  
  public FieldContact(Field paramField, Annotation paramAnnotation)
  {
    modifier = paramField.getModifiers();
    label = paramAnnotation;
    field = paramField;
  }
  
  private String getName(Field paramField)
  {
    String str = paramField.getName();
    paramField = str;
    if (str != null) {
      paramField = str.intern();
    }
    return paramField;
  }
  
  public Object get(Object paramObject)
  {
    return field.get(paramObject);
  }
  
  public Annotation getAnnotation()
  {
    return label;
  }
  
  public <T extends Annotation> T getAnnotation(Class<T> paramClass)
  {
    if (paramClass == label.annotationType()) {
      return label;
    }
    return field.getAnnotation(paramClass);
  }
  
  public Class getDependent()
  {
    return Reflector.getDependent(field);
  }
  
  public Class[] getDependents()
  {
    return Reflector.getDependents(field);
  }
  
  public String getName()
  {
    if (name == null) {
      name = getName(field);
    }
    return name;
  }
  
  public Class getType()
  {
    return field.getType();
  }
  
  public boolean isFinal()
  {
    return Modifier.isFinal(modifier);
  }
  
  public boolean isReadOnly()
  {
    return (!isStatic()) && (isFinal());
  }
  
  public boolean isStatic()
  {
    return Modifier.isStatic(modifier);
  }
  
  public void set(Object paramObject1, Object paramObject2)
  {
    if (!isFinal()) {
      field.set(paramObject1, paramObject2);
    }
  }
  
  public String toString()
  {
    return String.format("field '%s' %s", new Object[] { getName(), field.toString() });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.FieldContact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */