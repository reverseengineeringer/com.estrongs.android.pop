package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Proxy;
import java.util.Collection;
import java.util.Map;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementMap;

class AnnotationFactory
{
  private final boolean required;
  
  public AnnotationFactory()
  {
    this(true);
  }
  
  public AnnotationFactory(boolean paramBoolean)
  {
    required = paramBoolean;
  }
  
  private ClassLoader getClassLoader()
  {
    return AnnotationFactory.class.getClassLoader();
  }
  
  private Annotation getInstance(ClassLoader paramClassLoader, Class paramClass)
  {
    AnnotationHandler localAnnotationHandler = new AnnotationHandler(paramClass, required);
    return (Annotation)Proxy.newProxyInstance(paramClassLoader, new Class[] { paramClass }, localAnnotationHandler);
  }
  
  public Annotation getInstance(Class paramClass)
  {
    ClassLoader localClassLoader = getClassLoader();
    if (Map.class.isAssignableFrom(paramClass)) {
      return getInstance(localClassLoader, ElementMap.class);
    }
    if (Collection.class.isAssignableFrom(paramClass)) {
      return getInstance(localClassLoader, ElementList.class);
    }
    if (paramClass.isArray()) {
      return getInstance(localClassLoader, ElementArray.class);
    }
    return getInstance(localClassLoader, Element.class);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.AnnotationFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */