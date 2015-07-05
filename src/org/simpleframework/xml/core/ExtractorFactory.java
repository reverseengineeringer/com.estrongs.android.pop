package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;

class ExtractorFactory
{
  private final Contact contact;
  private final Annotation label;
  
  public ExtractorFactory(Contact paramContact, Annotation paramAnnotation)
  {
    contact = paramContact;
    label = paramAnnotation;
  }
  
  private ExtractorFactory.ExtractorBuilder getBuilder(Annotation paramAnnotation)
  {
    if ((paramAnnotation instanceof ElementUnion)) {
      return new ExtractorFactory.ExtractorBuilder(ElementUnion.class, ExtractorFactory.ElementExtractor.class);
    }
    if ((paramAnnotation instanceof ElementListUnion)) {
      return new ExtractorFactory.ExtractorBuilder(ElementListUnion.class, ExtractorFactory.ElementListExtractor.class);
    }
    if ((paramAnnotation instanceof ElementMapUnion)) {
      return new ExtractorFactory.ExtractorBuilder(ElementMapUnion.class, ExtractorFactory.ElementMapExtractor.class);
    }
    throw new PersistenceException("Annotation %s is not a union", new Object[] { paramAnnotation });
  }
  
  private Object getInstance(Annotation paramAnnotation)
  {
    Constructor localConstructor = ExtractorFactory.ExtractorBuilder.access$0(getBuilder(paramAnnotation));
    if (!localConstructor.isAccessible()) {
      localConstructor.setAccessible(true);
    }
    return localConstructor.newInstance(new Object[] { contact, paramAnnotation });
  }
  
  public Extractor getInstance()
  {
    return (Extractor)getInstance(label);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ExtractorFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */