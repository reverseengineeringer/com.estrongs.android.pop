package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
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

class FieldScanner
  extends ContactList
{
  private final DefaultType access;
  private final ContactMap done;
  private final AnnotationFactory factory;
  private final Hierarchy hierarchy;
  
  public FieldScanner(Class paramClass)
  {
    this(paramClass, null);
  }
  
  public FieldScanner(Class paramClass, DefaultType paramDefaultType)
  {
    this(paramClass, paramDefaultType, true);
  }
  
  public FieldScanner(Class paramClass, DefaultType paramDefaultType, boolean paramBoolean)
  {
    factory = new AnnotationFactory(paramBoolean);
    hierarchy = new Hierarchy(paramClass);
    done = new ContactMap();
    access = paramDefaultType;
    scan(paramClass);
  }
  
  private void build()
  {
    Iterator localIterator = done.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      add((Contact)localIterator.next());
    }
  }
  
  private boolean isStatic(Field paramField)
  {
    return Modifier.isStatic(paramField.getModifiers());
  }
  
  private void process(Field paramField, Class paramClass)
  {
    paramClass = factory.getInstance(paramClass);
    if (paramClass != null) {
      process(paramField, paramClass);
    }
  }
  
  private void process(Field paramField, Annotation paramAnnotation)
  {
    paramAnnotation = new FieldContact(paramField, paramAnnotation);
    if (!paramField.isAccessible()) {
      paramField.setAccessible(true);
    }
    done.put(paramField, paramAnnotation);
  }
  
  private void remove(Field paramField, Annotation paramAnnotation)
  {
    done.remove(paramField);
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
        return;
        scan((Class)localIterator.next(), access);
        break;
      }
      scan((Class)localIterator.next(), paramClass);
    }
  }
  
  private void scan(Class paramClass1, Class paramClass2)
  {
    paramClass1 = paramClass1.getDeclaredFields();
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
    paramClass = paramClass.getDeclaredFields();
    int j;
    int i;
    if (paramDefaultType == DefaultType.FIELD)
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
      Class localClass = paramDefaultType.getType();
      if (!isStatic(paramDefaultType)) {
        process(paramDefaultType, localClass);
      }
      i += 1;
    }
  }
  
  private void scan(Field paramField)
  {
    Annotation[] arrayOfAnnotation = paramField.getDeclaredAnnotations();
    int j = arrayOfAnnotation.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return;
      }
      scan(paramField, arrayOfAnnotation[i]);
      i += 1;
    }
  }
  
  private void scan(Field paramField, Annotation paramAnnotation)
  {
    if ((paramAnnotation instanceof Attribute)) {
      process(paramField, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementUnion)) {
      process(paramField, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementListUnion)) {
      process(paramField, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementMapUnion)) {
      process(paramField, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementList)) {
      process(paramField, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementArray)) {
      process(paramField, paramAnnotation);
    }
    if ((paramAnnotation instanceof ElementMap)) {
      process(paramField, paramAnnotation);
    }
    if ((paramAnnotation instanceof Element)) {
      process(paramField, paramAnnotation);
    }
    if ((paramAnnotation instanceof Transient)) {
      remove(paramField, paramAnnotation);
    }
    if ((paramAnnotation instanceof Version)) {
      process(paramField, paramAnnotation);
    }
    if ((paramAnnotation instanceof Text)) {
      process(paramField, paramAnnotation);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.FieldScanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */