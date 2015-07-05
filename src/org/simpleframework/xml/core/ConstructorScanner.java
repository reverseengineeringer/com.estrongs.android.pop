package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.Text;

class ConstructorScanner
{
  private List<Initializer> list = new ArrayList();
  private Initializer primary;
  private Signature registry;
  private Class type;
  
  public ConstructorScanner(Class paramClass)
  {
    registry = new Signature(paramClass);
    type = paramClass;
    scan(paramClass);
  }
  
  private void build(Constructor paramConstructor, Signature paramSignature)
  {
    paramConstructor = new Initializer(paramConstructor, paramSignature);
    if (paramConstructor.isDefault()) {
      primary = paramConstructor;
    }
    list.add(paramConstructor);
  }
  
  private Parameter create(Constructor paramConstructor, Annotation paramAnnotation, int paramInt)
  {
    paramConstructor = ParameterFactory.getInstance(paramConstructor, paramAnnotation, paramInt);
    paramAnnotation = paramConstructor.getPath();
    if (registry.containsKey(paramAnnotation)) {
      validate(paramConstructor, paramAnnotation);
    }
    return paramConstructor;
  }
  
  private boolean isInstantiable(Class paramClass)
  {
    if (Modifier.isStatic(paramClass.getModifiers())) {}
    while (!paramClass.isMemberClass()) {
      return true;
    }
    return false;
  }
  
  private Parameter process(Constructor paramConstructor, Annotation paramAnnotation, int paramInt)
  {
    if ((paramAnnotation instanceof Attribute)) {
      return create(paramConstructor, paramAnnotation, paramInt);
    }
    if ((paramAnnotation instanceof ElementList)) {
      return create(paramConstructor, paramAnnotation, paramInt);
    }
    if ((paramAnnotation instanceof ElementArray)) {
      return create(paramConstructor, paramAnnotation, paramInt);
    }
    if ((paramAnnotation instanceof ElementMap)) {
      return create(paramConstructor, paramAnnotation, paramInt);
    }
    if ((paramAnnotation instanceof Element)) {
      return create(paramConstructor, paramAnnotation, paramInt);
    }
    if ((paramAnnotation instanceof Text)) {
      return create(paramConstructor, paramAnnotation, paramInt);
    }
    return null;
  }
  
  private void scan(Class paramClass)
  {
    int i = 0;
    Constructor[] arrayOfConstructor = paramClass.getDeclaredConstructors();
    if (!isInstantiable(paramClass)) {
      throw new ConstructorException("Can not construct inner %s", new Object[] { paramClass });
    }
    int j = arrayOfConstructor.length;
    for (;;)
    {
      if (i >= j) {
        return;
      }
      Constructor localConstructor = arrayOfConstructor[i];
      Signature localSignature = new Signature(paramClass);
      if (!paramClass.isPrimitive()) {
        scan(localConstructor, localSignature);
      }
      i += 1;
    }
  }
  
  private void scan(Constructor paramConstructor, Signature paramSignature)
  {
    Annotation[][] arrayOfAnnotation = paramConstructor.getParameterAnnotations();
    Class[] arrayOfClass = paramConstructor.getParameterTypes();
    int i = 0;
    if (i >= arrayOfClass.length)
    {
      if (arrayOfClass.length == paramSignature.size()) {
        build(paramConstructor, paramSignature);
      }
      return;
    }
    int j = 0;
    for (;;)
    {
      if (j >= arrayOfAnnotation[i].length)
      {
        i += 1;
        break;
      }
      Parameter localParameter = process(paramConstructor, arrayOfAnnotation[i][j], i);
      if (localParameter != null)
      {
        String str = localParameter.getPath();
        if (paramSignature.containsKey(str)) {
          throw new PersistenceException("Parameter '%s' is a duplicate in %s", new Object[] { str, paramConstructor });
        }
        registry.put(str, localParameter);
        paramSignature.put(str, localParameter);
      }
      j += 1;
    }
  }
  
  private void validate(Parameter paramParameter, String paramString)
  {
    Parameter localParameter = (Parameter)registry.get(paramString);
    Annotation localAnnotation = localParameter.getAnnotation();
    if (!paramParameter.getAnnotation().equals(localAnnotation)) {
      throw new MethodException("Annotations do not match for '%s' in %s", new Object[] { paramString, type });
    }
    if (localParameter.getType() != paramParameter.getType()) {
      throw new MethodException("Method types do not match for '%s' in %s", new Object[] { paramString, type });
    }
  }
  
  public Creator getCreator()
  {
    return new ClassCreator(list, registry, primary);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ConstructorScanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */