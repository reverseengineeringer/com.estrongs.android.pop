package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Iterator;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.Transient;
import org.simpleframework.xml.Version;

class MethodScanner
  extends ContactList
{
  private final DefaultType access;
  private final MethodPartFactory factory;
  private final Hierarchy hierarchy;
  private final MethodScanner.PartMap read;
  private final Class type;
  private final MethodScanner.PartMap write;
  
  public MethodScanner(Class paramClass)
  {
    this(paramClass, null);
  }
  
  public MethodScanner(Class paramClass, DefaultType paramDefaultType)
  {
    this(paramClass, paramDefaultType, true);
  }
  
  public MethodScanner(Class paramClass, DefaultType paramDefaultType, boolean paramBoolean)
  {
    factory = new MethodPartFactory(paramBoolean);
    hierarchy = new Hierarchy(paramClass);
    write = new MethodScanner.PartMap(this, null);
    read = new MethodScanner.PartMap(this, null);
    access = paramDefaultType;
    type = paramClass;
    scan(paramClass);
  }
  
  private void build()
  {
    Iterator localIterator = read.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      String str = (String)localIterator.next();
      MethodPart localMethodPart = (MethodPart)read.get(str);
      if (localMethodPart != null) {
        build(localMethodPart, str);
      }
    }
  }
  
  private void build(MethodPart paramMethodPart)
  {
    add(new MethodContact(paramMethodPart));
  }
  
  private void build(MethodPart paramMethodPart, String paramString)
  {
    paramString = write.take(paramString);
    if (paramString != null)
    {
      build(paramMethodPart, paramString);
      return;
    }
    build(paramMethodPart);
  }
  
  private void build(MethodPart paramMethodPart1, MethodPart paramMethodPart2)
  {
    Object localObject = paramMethodPart1.getAnnotation();
    String str = paramMethodPart1.getName();
    if (!paramMethodPart2.getAnnotation().equals(localObject)) {
      throw new MethodException("Annotations do not match for '%s' in %s", new Object[] { str, type });
    }
    localObject = paramMethodPart1.getType();
    if (localObject != paramMethodPart2.getType()) {
      throw new MethodException("Method types do not match for %s in %s", new Object[] { str, localObject });
    }
    add(new MethodContact(paramMethodPart1, paramMethodPart2));
  }
  
  private void process(Method paramMethod)
  {
    paramMethod = factory.getInstance(paramMethod);
    MethodType localMethodType = paramMethod.getMethodType();
    if (localMethodType == MethodType.GET) {
      process(paramMethod, read);
    }
    if (localMethodType == MethodType.IS) {
      process(paramMethod, read);
    }
    if (localMethodType == MethodType.SET) {
      process(paramMethod, write);
    }
  }
  
  private void process(Method paramMethod, Annotation paramAnnotation)
  {
    paramMethod = factory.getInstance(paramMethod, paramAnnotation);
    paramAnnotation = paramMethod.getMethodType();
    if (paramAnnotation == MethodType.GET) {
      process(paramMethod, read);
    }
    if (paramAnnotation == MethodType.IS) {
      process(paramMethod, read);
    }
    if (paramAnnotation == MethodType.SET) {
      process(paramMethod, write);
    }
  }
  
  private void process(MethodPart paramMethodPart, MethodScanner.PartMap paramPartMap)
  {
    String str = paramMethodPart.getName();
    if (str != null) {
      paramPartMap.put(str, paramMethodPart);
    }
  }
  
  private void remove(Method paramMethod, Annotation paramAnnotation)
  {
    paramMethod = factory.getInstance(paramMethod, paramAnnotation);
    paramAnnotation = paramMethod.getMethodType();
    if (paramAnnotation == MethodType.GET) {
      remove(paramMethod, read);
    }
    if (paramAnnotation == MethodType.IS) {
      remove(paramMethod, read);
    }
    if (paramAnnotation == MethodType.SET) {
      remove(paramMethod, write);
    }
  }
  
  private void remove(MethodPart paramMethodPart, MethodScanner.PartMap paramPartMap)
  {
    paramMethodPart = paramMethodPart.getName();
    if (paramMethodPart != null) {
      paramPartMap.remove(paramMethodPart);
    }
  }
  
  private void scan(Class paramClass)
  {
    Iterator localIterator = hierarchy.iterator();
    if (!localIterator.hasNext()) {
      localIterator = hierarchy.iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext())
      {
        build();
        validate();
        return;
        scan((Class)localIterator.next(), access);
        break;
      }
      scan((Class)localIterator.next(), paramClass);
    }
  }
  
  private void scan(Class paramClass1, Class paramClass2)
  {
    paramClass1 = paramClass1.getDeclaredMethods();
    int j = paramClass1.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return;
      }
      scan(paramClass1[i]);
      i += 1;
    }
  }
  
  private void scan(Class paramClass, DefaultType paramDefaultType)
  {
    paramClass = paramClass.getDeclaredMethods();
    int j;
    int i;
    if (paramDefaultType == DefaultType.PROPERTY)
    {
      j = paramClass.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        return;
      }
      paramDefaultType = paramClass[i];
      if (factory.getType(paramDefaultType) != null) {
        process(paramDefaultType);
      }
      i += 1;
    }
  }
  
  private void scan(Method paramMethod)
  {
    Annotation[] arrayOfAnnotation = paramMethod.getDeclaredAnnotations();
    int j = arrayOfAnnotation.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return;
      }
      scan(paramMethod, arrayOfAnnotation[i]);
      i += 1;
    }
  }
  
  private void scan(Method paramMethod, Annotation paramAnnotation)
  {
    if ((paramAnnotation instanceof Attribute)) {
      process(paramMethod, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementUnion)) {
      process(paramMethod, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementListUnion)) {
      process(paramMethod, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementMapUnion)) {
      process(paramMethod, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementList)) {
      process(paramMethod, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementArray)) {
      process(paramMethod, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementMap)) {
      process(paramMethod, paramAnnotation);
    }
    if ((paramAnnotation instanceof Element)) {
      process(paramMethod, paramAnnotation);
    }
    if ((paramAnnotation instanceof Transient)) {
      remove(paramMethod, paramAnnotation);
    }
    if ((paramAnnotation instanceof Version)) {
      process(paramMethod, paramAnnotation);
    }
    if ((paramAnnotation instanceof Text)) {
      process(paramMethod, paramAnnotation);
    }
  }
  
  private void validate()
  {
    Iterator localIterator = write.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      String str = (String)localIterator.next();
      MethodPart localMethodPart = (MethodPart)write.get(str);
      if (localMethodPart != null) {
        validate(localMethodPart, str);
      }
    }
  }
  
  private void validate(MethodPart paramMethodPart, String paramString)
  {
    paramString = read.take(paramString);
    paramMethodPart = paramMethodPart.getMethod();
    if (paramString == null) {
      throw new MethodException("No matching get method for %s in %s", new Object[] { paramMethodPart, type });
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.MethodScanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */