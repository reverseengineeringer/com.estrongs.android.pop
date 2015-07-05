package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class GroupExtractor
  implements Group
{
  private final LabelMap elements;
  private final ExtractorFactory factory;
  private final Annotation label;
  private final GroupExtractor.Registry registry;
  
  public GroupExtractor(Contact paramContact, Annotation paramAnnotation)
  {
    factory = new ExtractorFactory(paramContact, paramAnnotation);
    elements = new LabelMap();
    registry = new GroupExtractor.Registry(elements);
    label = paramAnnotation;
    extract();
  }
  
  private void extract()
  {
    Extractor localExtractor = factory.getInstance();
    if (localExtractor != null) {
      extract(localExtractor);
    }
  }
  
  private void extract(Extractor paramExtractor)
  {
    Iterator localIterator = paramExtractor.getAnnotations().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      extract(paramExtractor, (Annotation)localIterator.next());
    }
  }
  
  private void extract(Extractor paramExtractor, Annotation paramAnnotation)
  {
    Label localLabel = paramExtractor.getLabel(paramAnnotation);
    paramExtractor = paramExtractor.getType(paramAnnotation);
    paramAnnotation = localLabel.getName();
    if (registry != null)
    {
      registry.register(paramAnnotation, localLabel);
      registry.register(paramExtractor, localLabel);
    }
  }
  
  public LabelMap getElements(Context paramContext)
  {
    return elements.getLabels(paramContext);
  }
  
  public Label getLabel(Class paramClass)
  {
    return (Label)registry.get(paramClass);
  }
  
  public Set<String> getNames()
  {
    return elements.getKeys();
  }
  
  public Set<String> getNames(Context paramContext)
  {
    return elements.getKeys(paramContext);
  }
  
  public Set<String> getPaths()
  {
    return elements.getPaths();
  }
  
  public Set<String> getPaths(Context paramContext)
  {
    return elements.getPaths(paramContext);
  }
  
  public boolean isInline()
  {
    Iterator localIterator = registry.iterator();
    if (!localIterator.hasNext()) {
      if (!registry.isEmpty()) {
        break label50;
      }
    }
    label50:
    for (boolean bool = false;; bool = true)
    {
      return bool;
      if (((Label)localIterator.next()).isInline()) {
        break;
      }
      return false;
    }
  }
  
  public boolean isValid(Class paramClass)
  {
    return registry.containsKey(paramClass);
  }
  
  public String toString()
  {
    return label.toString();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.GroupExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */