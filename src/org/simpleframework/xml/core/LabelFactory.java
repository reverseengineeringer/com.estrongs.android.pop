package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementArray;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.ElementListUnion;
import org.simpleframework.xml.ElementMap;
import org.simpleframework.xml.ElementMapUnion;
import org.simpleframework.xml.ElementUnion;
import org.simpleframework.xml.Text;
import org.simpleframework.xml.Version;

final class LabelFactory
{
  private static LabelFactory.LabelBuilder getBuilder(Annotation paramAnnotation)
  {
    if ((paramAnnotation instanceof Element)) {
      return new LabelFactory.LabelBuilder(ElementLabel.class, Element.class);
    }
    if ((paramAnnotation instanceof ElementList)) {
      return new LabelFactory.LabelBuilder(ElementListLabel.class, ElementList.class);
    }
    if ((paramAnnotation instanceof ElementArray)) {
      return new LabelFactory.LabelBuilder(ElementArrayLabel.class, ElementArray.class);
    }
    if ((paramAnnotation instanceof ElementMap)) {
      return new LabelFactory.LabelBuilder(ElementMapLabel.class, ElementMap.class);
    }
    if ((paramAnnotation instanceof ElementUnion)) {
      return new LabelFactory.LabelBuilder(ElementUnionLabel.class, ElementUnion.class, Element.class);
    }
    if ((paramAnnotation instanceof ElementListUnion)) {
      return new LabelFactory.LabelBuilder(ElementListUnionLabel.class, ElementListUnion.class, ElementList.class);
    }
    if ((paramAnnotation instanceof ElementMapUnion)) {
      return new LabelFactory.LabelBuilder(ElementMapUnionLabel.class, ElementMapUnion.class, ElementMap.class);
    }
    if ((paramAnnotation instanceof Attribute)) {
      return new LabelFactory.LabelBuilder(AttributeLabel.class, Attribute.class);
    }
    if ((paramAnnotation instanceof Version)) {
      return new LabelFactory.LabelBuilder(VersionLabel.class, Version.class);
    }
    if ((paramAnnotation instanceof Text)) {
      return new LabelFactory.LabelBuilder(TextLabel.class, Text.class);
    }
    throw new PersistenceException("Annotation %s not supported", new Object[] { paramAnnotation });
  }
  
  private static Constructor getConstructor(Annotation paramAnnotation)
  {
    paramAnnotation = getBuilder(paramAnnotation).getConstructor();
    if (!paramAnnotation.isAccessible()) {
      paramAnnotation.setAccessible(true);
    }
    return paramAnnotation;
  }
  
  public static Label getInstance(Contact paramContact, Annotation paramAnnotation)
  {
    return getInstance(paramContact, paramAnnotation, null);
  }
  
  public static Label getInstance(Contact paramContact, Annotation paramAnnotation1, Annotation paramAnnotation2)
  {
    paramContact = getLabel(paramContact, paramAnnotation1, paramAnnotation2);
    if (paramContact == null) {
      return paramContact;
    }
    return new CacheLabel(paramContact);
  }
  
  private static Label getLabel(Contact paramContact, Annotation paramAnnotation1, Annotation paramAnnotation2)
  {
    Constructor localConstructor = getConstructor(paramAnnotation1);
    if (paramAnnotation2 != null) {
      return (Label)localConstructor.newInstance(new Object[] { paramContact, paramAnnotation1, paramAnnotation2 });
    }
    return (Label)localConstructor.newInstance(new Object[] { paramContact, paramAnnotation1 });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.LabelFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */