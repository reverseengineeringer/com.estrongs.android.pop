package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import org.simpleframework.xml.Path;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.strategy.Type;

class Introspector
{
  private Contact contact;
  private Label label;
  private Annotation marker;
  
  public Introspector(Contact paramContact, Label paramLabel)
  {
    marker = paramContact.getAnnotation();
    contact = paramContact;
    label = paramLabel;
  }
  
  private String getDefault()
  {
    String str = label.getOverride();
    if (!isEmpty(str)) {
      return str;
    }
    return contact.getName();
  }
  
  private String getName(Class paramClass)
  {
    String str = getRoot(paramClass);
    if (str != null) {
      return str;
    }
    return Reflector.getName(paramClass.getSimpleName());
  }
  
  private String getRoot(Class paramClass)
  {
    for (Class localClass = paramClass;; localClass = localClass.getSuperclass())
    {
      Object localObject;
      if (localClass == null) {
        localObject = null;
      }
      String str;
      do
      {
        return (String)localObject;
        str = getRoot(paramClass, localClass);
        localObject = str;
      } while (str != null);
    }
  }
  
  private String getRoot(Class<?> paramClass1, Class<?> paramClass2)
  {
    paramClass1 = paramClass2.getSimpleName();
    if (paramClass2.isAnnotationPresent(Root.class))
    {
      paramClass2 = ((Root)paramClass2.getAnnotation(Root.class)).name();
      if (!isEmpty(paramClass2)) {
        return paramClass2;
      }
      return Reflector.getName(paramClass1);
    }
    return null;
  }
  
  public Contact getContact()
  {
    return contact;
  }
  
  public Type getDependent()
  {
    return label.getDependent();
  }
  
  public String getEntry()
  {
    Class localClass = getDependent().getType();
    Object localObject = localClass;
    if (localClass.isArray()) {
      localObject = localClass.getComponentType();
    }
    localObject = getName((Class)localObject);
    if (localObject == null) {
      return null;
    }
    return ((String)localObject).intern();
  }
  
  public Expression getExpression()
  {
    String str = getPath();
    if (str != null) {
      return new PathParser(contact, str);
    }
    return new PathParser(contact, ".");
  }
  
  public String getName()
  {
    String str = label.getEntry();
    if (!label.isInline()) {
      str = getDefault();
    }
    return str.intern();
  }
  
  public String getPath()
  {
    Path localPath = (Path)contact.getAnnotation(Path.class);
    if (localPath == null) {
      return null;
    }
    return localPath.value();
  }
  
  public boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public String toString()
  {
    return String.format("%s on %s", new Object[] { marker, contact });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Introspector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */