package org.simpleframework.xml.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
import org.simpleframework.xml.Serializer;
import org.simpleframework.xml.filter.Filter;
import org.simpleframework.xml.filter.PlatformFilter;
import org.simpleframework.xml.strategy.Strategy;
import org.simpleframework.xml.strategy.TreeStrategy;
import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.stream.InputNode;
import org.simpleframework.xml.stream.NodeBuilder;
import org.simpleframework.xml.stream.OutputNode;
import org.simpleframework.xml.stream.Style;
import org.simpleframework.xml.transform.Matcher;

public class Persister
  implements Serializer
{
  private final Format format;
  private final SessionManager manager;
  private final Strategy strategy;
  private final Style style;
  private final Support support;
  
  public Persister()
  {
    this(new HashMap());
  }
  
  public Persister(Map paramMap)
  {
    this(new PlatformFilter(paramMap));
  }
  
  public Persister(Map paramMap, Format paramFormat)
  {
    this(new PlatformFilter(paramMap));
  }
  
  public Persister(Filter paramFilter)
  {
    this(new TreeStrategy(), paramFilter);
  }
  
  public Persister(Filter paramFilter, Format paramFormat)
  {
    this(new TreeStrategy(), paramFilter, paramFormat);
  }
  
  public Persister(Filter paramFilter, Matcher paramMatcher)
  {
    this(new TreeStrategy(), paramFilter, paramMatcher);
  }
  
  public Persister(Filter paramFilter, Matcher paramMatcher, Format paramFormat)
  {
    this(new TreeStrategy(), paramFilter, paramMatcher, paramFormat);
  }
  
  public Persister(Strategy paramStrategy)
  {
    this(paramStrategy, new HashMap());
  }
  
  public Persister(Strategy paramStrategy, Map paramMap)
  {
    this(paramStrategy, new PlatformFilter(paramMap));
  }
  
  public Persister(Strategy paramStrategy, Map paramMap, Format paramFormat)
  {
    this(paramStrategy, new PlatformFilter(paramMap), paramFormat);
  }
  
  public Persister(Strategy paramStrategy, Filter paramFilter)
  {
    this(paramStrategy, paramFilter, new Format());
  }
  
  public Persister(Strategy paramStrategy, Filter paramFilter, Format paramFormat)
  {
    this(paramStrategy, paramFilter, new EmptyMatcher(), paramFormat);
  }
  
  public Persister(Strategy paramStrategy, Filter paramFilter, Matcher paramMatcher)
  {
    this(paramStrategy, paramFilter, paramMatcher, new Format());
  }
  
  public Persister(Strategy paramStrategy, Filter paramFilter, Matcher paramMatcher, Format paramFormat)
  {
    support = new Support(paramFilter, paramMatcher);
    manager = new SessionManager();
    style = paramFormat.getStyle();
    strategy = paramStrategy;
    format = paramFormat;
  }
  
  public Persister(Strategy paramStrategy, Format paramFormat)
  {
    this(paramStrategy, new HashMap(), paramFormat);
  }
  
  public Persister(Strategy paramStrategy, Matcher paramMatcher)
  {
    this(paramStrategy, new PlatformFilter(), paramMatcher);
  }
  
  public Persister(Strategy paramStrategy, Matcher paramMatcher, Format paramFormat)
  {
    this(paramStrategy, new PlatformFilter(), paramMatcher, paramFormat);
  }
  
  public Persister(Format paramFormat)
  {
    this(new TreeStrategy(), paramFormat);
  }
  
  public Persister(Matcher paramMatcher)
  {
    this(new TreeStrategy(), paramMatcher);
  }
  
  public Persister(Matcher paramMatcher, Format paramFormat)
  {
    this(new TreeStrategy(), paramMatcher, paramFormat);
  }
  
  private <T> T read(Class<? extends T> paramClass, InputNode paramInputNode, Context paramContext)
  {
    return (T)new Traverser(paramContext).read(paramInputNode, paramClass);
  }
  
  private <T> T read(Class<? extends T> paramClass, InputNode paramInputNode, Session paramSession)
  {
    return (T)read(paramClass, paramInputNode, new Source(strategy, support, style, paramSession));
  }
  
  private <T> T read(T paramT, InputNode paramInputNode, Context paramContext)
  {
    return (T)new Traverser(paramContext).read(paramInputNode, paramT);
  }
  
  private <T> T read(T paramT, InputNode paramInputNode, Session paramSession)
  {
    return (T)read(paramT, paramInputNode, new Source(strategy, support, style, paramSession));
  }
  
  private boolean validate(Class paramClass, InputNode paramInputNode, Context paramContext)
  {
    return new Traverser(paramContext).validate(paramInputNode, paramClass);
  }
  
  private boolean validate(Class paramClass, InputNode paramInputNode, Session paramSession)
  {
    return validate(paramClass, paramInputNode, new Source(strategy, support, style, paramSession));
  }
  
  private void write(Object paramObject, OutputNode paramOutputNode, Context paramContext)
  {
    new Traverser(paramContext).write(paramOutputNode, paramObject);
  }
  
  private void write(Object paramObject, OutputNode paramOutputNode, Session paramSession)
  {
    write(paramObject, paramOutputNode, new Source(strategy, support, style, paramSession));
  }
  
  public <T> T read(Class<? extends T> paramClass, File paramFile)
  {
    return (T)read(paramClass, paramFile, true);
  }
  
  public <T> T read(Class<? extends T> paramClass, File paramFile, boolean paramBoolean)
  {
    paramFile = new FileInputStream(paramFile);
    try
    {
      paramClass = read(paramClass, paramFile, paramBoolean);
      return paramClass;
    }
    finally
    {
      paramFile.close();
    }
  }
  
  public <T> T read(Class<? extends T> paramClass, InputStream paramInputStream)
  {
    return (T)read(paramClass, paramInputStream, true);
  }
  
  public <T> T read(Class<? extends T> paramClass, InputStream paramInputStream, boolean paramBoolean)
  {
    return (T)read(paramClass, NodeBuilder.read(paramInputStream), paramBoolean);
  }
  
  public <T> T read(Class<? extends T> paramClass, Reader paramReader)
  {
    return (T)read(paramClass, paramReader, true);
  }
  
  public <T> T read(Class<? extends T> paramClass, Reader paramReader, boolean paramBoolean)
  {
    return (T)read(paramClass, NodeBuilder.read(paramReader), paramBoolean);
  }
  
  public <T> T read(Class<? extends T> paramClass, String paramString)
  {
    return (T)read(paramClass, paramString, true);
  }
  
  public <T> T read(Class<? extends T> paramClass, String paramString, boolean paramBoolean)
  {
    return (T)read(paramClass, new StringReader(paramString), paramBoolean);
  }
  
  public <T> T read(Class<? extends T> paramClass, InputNode paramInputNode)
  {
    return (T)read(paramClass, paramInputNode, true);
  }
  
  public <T> T read(Class<? extends T> paramClass, InputNode paramInputNode, boolean paramBoolean)
  {
    Session localSession = manager.open(paramBoolean);
    try
    {
      paramClass = read(paramClass, paramInputNode, localSession);
      return paramClass;
    }
    finally
    {
      manager.close();
    }
  }
  
  public <T> T read(T paramT, File paramFile)
  {
    return (T)read(paramT, paramFile, true);
  }
  
  public <T> T read(T paramT, File paramFile, boolean paramBoolean)
  {
    paramFile = new FileInputStream(paramFile);
    try
    {
      paramT = read(paramT, paramFile, paramBoolean);
      return paramT;
    }
    finally
    {
      paramFile.close();
    }
  }
  
  public <T> T read(T paramT, InputStream paramInputStream)
  {
    return (T)read(paramT, paramInputStream, true);
  }
  
  public <T> T read(T paramT, InputStream paramInputStream, boolean paramBoolean)
  {
    return (T)read(paramT, NodeBuilder.read(paramInputStream), paramBoolean);
  }
  
  public <T> T read(T paramT, Reader paramReader)
  {
    return (T)read(paramT, paramReader, true);
  }
  
  public <T> T read(T paramT, Reader paramReader, boolean paramBoolean)
  {
    return (T)read(paramT, NodeBuilder.read(paramReader), paramBoolean);
  }
  
  public <T> T read(T paramT, String paramString)
  {
    return (T)read(paramT, paramString, true);
  }
  
  public <T> T read(T paramT, String paramString, boolean paramBoolean)
  {
    return (T)read(paramT, new StringReader(paramString), paramBoolean);
  }
  
  public <T> T read(T paramT, InputNode paramInputNode)
  {
    return (T)read(paramT, paramInputNode, true);
  }
  
  public <T> T read(T paramT, InputNode paramInputNode, boolean paramBoolean)
  {
    Session localSession = manager.open(paramBoolean);
    try
    {
      paramT = read(paramT, paramInputNode, localSession);
      return paramT;
    }
    finally
    {
      manager.close();
    }
  }
  
  public boolean validate(Class paramClass, File paramFile)
  {
    return validate(paramClass, paramFile, true);
  }
  
  public boolean validate(Class paramClass, File paramFile, boolean paramBoolean)
  {
    paramFile = new FileInputStream(paramFile);
    try
    {
      paramBoolean = validate(paramClass, paramFile, paramBoolean);
      return paramBoolean;
    }
    finally
    {
      paramFile.close();
    }
  }
  
  public boolean validate(Class paramClass, InputStream paramInputStream)
  {
    return validate(paramClass, paramInputStream, true);
  }
  
  public boolean validate(Class paramClass, InputStream paramInputStream, boolean paramBoolean)
  {
    return validate(paramClass, NodeBuilder.read(paramInputStream), paramBoolean);
  }
  
  public boolean validate(Class paramClass, Reader paramReader)
  {
    return validate(paramClass, paramReader, true);
  }
  
  public boolean validate(Class paramClass, Reader paramReader, boolean paramBoolean)
  {
    return validate(paramClass, NodeBuilder.read(paramReader), paramBoolean);
  }
  
  public boolean validate(Class paramClass, String paramString)
  {
    return validate(paramClass, paramString, true);
  }
  
  public boolean validate(Class paramClass, String paramString, boolean paramBoolean)
  {
    return validate(paramClass, new StringReader(paramString), paramBoolean);
  }
  
  public boolean validate(Class paramClass, InputNode paramInputNode)
  {
    return validate(paramClass, paramInputNode, true);
  }
  
  public boolean validate(Class paramClass, InputNode paramInputNode, boolean paramBoolean)
  {
    Session localSession = manager.open(paramBoolean);
    try
    {
      paramBoolean = validate(paramClass, paramInputNode, localSession);
      return paramBoolean;
    }
    finally
    {
      manager.close();
    }
  }
  
  public void write(Object paramObject, File paramFile)
  {
    paramFile = new FileOutputStream(paramFile);
    try
    {
      write(paramObject, paramFile);
      return;
    }
    finally
    {
      paramFile.close();
    }
  }
  
  public void write(Object paramObject, OutputStream paramOutputStream)
  {
    write(paramObject, paramOutputStream, "utf-8");
  }
  
  public void write(Object paramObject, OutputStream paramOutputStream, String paramString)
  {
    write(paramObject, new OutputStreamWriter(paramOutputStream, paramString));
  }
  
  public void write(Object paramObject, Writer paramWriter)
  {
    write(paramObject, NodeBuilder.write(paramWriter, format));
  }
  
  public void write(Object paramObject, OutputNode paramOutputNode)
  {
    Session localSession = manager.open();
    try
    {
      write(paramObject, paramOutputNode, localSession);
      return;
    }
    finally
    {
      manager.close();
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Persister
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */