package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;

class ClassSchema
  implements Schema
{
  private final Caller caller;
  private final Decorator decorator;
  private final Creator factory;
  private final boolean primitive;
  private final Version revision;
  private final Section section;
  private final Label text;
  private final Class type;
  private final Label version;
  
  public ClassSchema(Scanner paramScanner, Context paramContext)
  {
    section = paramScanner.getSection(paramContext);
    caller = paramScanner.getCaller(paramContext);
    factory = paramScanner.getCreator();
    revision = paramScanner.getRevision();
    decorator = paramScanner.getDecorator();
    primitive = paramScanner.isPrimitive();
    version = paramScanner.getVersion();
    text = paramScanner.getText();
    type = paramScanner.getType();
  }
  
  public Caller getCaller()
  {
    return caller;
  }
  
  public Creator getCreator()
  {
    return factory;
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Version getRevision()
  {
    return revision;
  }
  
  public Section getSection()
  {
    return section;
  }
  
  public Label getText()
  {
    return text;
  }
  
  public Label getVersion()
  {
    return version;
  }
  
  public boolean isPrimitive()
  {
    return primitive;
  }
  
  public String toString()
  {
    return String.format("schema for %s", new Object[] { type });
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ClassSchema
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */