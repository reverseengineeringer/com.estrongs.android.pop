package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;
import org.simpleframework.xml.filter.Filter;
import org.simpleframework.xml.strategy.Strategy;
import org.simpleframework.xml.strategy.Type;
import org.simpleframework.xml.strategy.Value;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NodeMap;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;

class Source
  implements Context
{
  private TemplateEngine engine;
  private Filter filter;
  private Session session;
  private Strategy strategy;
  private Style style;
  private Support support;
  
  public Source(Strategy paramStrategy, Support paramSupport, Style paramStyle, Session paramSession)
  {
    filter = new TemplateFilter(this, paramSupport);
    engine = new TemplateEngine(filter);
    strategy = paramStrategy;
    support = paramSupport;
    session = paramSession;
    style = paramStyle;
  }
  
  private Scanner getScanner(Class paramClass)
  {
    return support.getScanner(paramClass);
  }
  
  public Object getAttribute(Object paramObject)
  {
    return session.get(paramObject);
  }
  
  public Caller getCaller(Class paramClass)
  {
    return getScanner(paramClass).getCaller(this);
  }
  
  public Decorator getDecorator(Class paramClass)
  {
    return getScanner(paramClass).getDecorator();
  }
  
  public Instance getInstance(Class paramClass)
  {
    return support.getInstance(paramClass);
  }
  
  public Instance getInstance(Value paramValue)
  {
    return support.getInstance(paramValue);
  }
  
  public String getName(Class paramClass)
  {
    return support.getName(paramClass);
  }
  
  public Value getOverride(Type paramType, InputNode paramInputNode)
  {
    NodeMap localNodeMap = paramInputNode.getAttributes();
    if (localNodeMap == null) {
      throw new PersistenceException("No attributes for %s", new Object[] { paramInputNode });
    }
    return strategy.read(paramType, localNodeMap, session);
  }
  
  public String getProperty(String paramString)
  {
    return engine.process(paramString);
  }
  
  public Schema getSchema(Class paramClass)
  {
    Scanner localScanner = getScanner(paramClass);
    if (localScanner == null) {
      throw new PersistenceException("Invalid schema class %s", new Object[] { paramClass });
    }
    return new ClassSchema(localScanner, this);
  }
  
  public Session getSession()
  {
    return session;
  }
  
  public Style getStyle()
  {
    if (style == null) {
      style = new DefaultStyle();
    }
    return style;
  }
  
  public Support getSupport()
  {
    return support;
  }
  
  public Class getType(Type paramType, Object paramObject)
  {
    if (paramObject != null) {
      return paramObject.getClass();
    }
    return paramType.getType();
  }
  
  public Version getVersion(Class paramClass)
  {
    return getScanner(paramClass).getRevision();
  }
  
  public boolean isFloat(Class paramClass)
  {
    return support.isFloat(paramClass);
  }
  
  public boolean isFloat(Type paramType)
  {
    return isFloat(paramType.getType());
  }
  
  public boolean isPrimitive(Class paramClass)
  {
    return support.isPrimitive(paramClass);
  }
  
  public boolean isPrimitive(Type paramType)
  {
    return isPrimitive(paramType.getType());
  }
  
  public boolean isStrict()
  {
    return session.isStrict();
  }
  
  public boolean setOverride(Type paramType, Object paramObject, OutputNode paramOutputNode)
  {
    NodeMap localNodeMap = paramOutputNode.getAttributes();
    if (localNodeMap == null) {
      throw new PersistenceException("No attributes for %s", new Object[] { paramOutputNode });
    }
    return strategy.write(paramType, paramObject, localNodeMap, session);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Source
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */