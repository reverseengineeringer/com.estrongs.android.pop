package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.Text;

final class ParameterFactory
{
  private static ParameterFactory.PameterBuilder getBuilder(Annotation paramAnnotation)
  {
    if ((paramAnnotation instanceof Element)) {
      return new ParameterFactory.PameterBuilder(ElementParameter.class, Element.class);
    }
    if ((paramAnnotation instanceof ElementList)) {
      return new ParameterFactory.PameterBuilder(ElementListParameter.class, ElementList.class);
    }
    if ((paramAnnotation instanceof ElementArray)) {
      return new ParameterFactory.PameterBuilder(ElementArrayParameter.class, ElementArray.class);
    }
    if ((paramAnnotation instanceof ElementMap)) {
      return new ParameterFactory.PameterBuilder(ElementMapParameter.class, ElementMap.class);
    }
    if ((paramAnnotation instanceof Attribute)) {
      return new ParameterFactory.PameterBuilder(AttributeParameter.class, Attribute.class);
    }
    if ((paramAnnotation instanceof Text)) {
      return new ParameterFactory.PameterBuilder(TextParameter.class, Text.class);
    }
    throw new PersistenceException("Annotation %s not supported", new Object[] { paramAnnotation });
  }
  
  private static Constructor getConstructor(Annotation paramAnnotation)
  {
    return getBuilder(paramAnnotation).getConstructor();
  }
  
  public static Parameter getInstance(Constructor paramConstructor, Annotation paramAnnotation, int paramInt)
  {
    Constructor localConstructor = getConstructor(paramAnnotation);
    if (!localConstructor.isAccessible()) {
      localConstructor.setAccessible(true);
    }
    return (Parameter)localConstructor.newInstance(new Object[] { paramConstructor, paramAnnotation, Integer.valueOf(paramInt) });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ParameterFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */