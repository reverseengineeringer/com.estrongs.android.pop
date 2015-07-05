package org.simpleframework.xml.core;

import java.lang.annotation.Annotation;
import java.util.Iterator;
import org.simpleframework.xml.Default;
import org.simpleframework.xml.DefaultType;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Root;
import org.simpleframework.xml.Version;

class Scanner
  implements Policy
{
  private DefaultType access;
  private StructureBuilder builder;
  private String name;
  private boolean required;
  private ClassScanner scanner;
  private Structure structure;
  private Class type;
  
  public Scanner(Class paramClass)
  {
    scanner = new ClassScanner(paramClass);
    builder = new StructureBuilder(this, paramClass);
    type = paramClass;
    scan(paramClass);
  }
  
  private void access(Class<?> paramClass)
  {
    paramClass = scanner.getDefault();
    if (paramClass != null)
    {
      required = paramClass.required();
      access = paramClass.value();
    }
  }
  
  private void commit(Class paramClass)
  {
    if (structure == null) {
      structure = builder.build(paramClass);
    }
    builder = null;
  }
  
  private void field(Class paramClass)
  {
    paramClass = new FieldScanner(paramClass, access, required).iterator();
    for (;;)
    {
      if (!paramClass.hasNext()) {
        return;
      }
      Contact localContact = (Contact)paramClass.next();
      Annotation localAnnotation = localContact.getAnnotation();
      if (localAnnotation != null) {
        builder.process(localContact, localAnnotation);
      }
    }
  }
  
  private boolean isEmpty(String paramString)
  {
    return paramString.length() == 0;
  }
  
  private void order(Class<?> paramClass)
  {
    builder.assemble(paramClass);
  }
  
  private void root(Class<?> paramClass)
  {
    String str2 = paramClass.getSimpleName();
    paramClass = scanner.getRoot();
    if (paramClass != null)
    {
      String str1 = paramClass.name();
      paramClass = str1;
      if (isEmpty(str1)) {
        paramClass = Reflector.getName(str2);
      }
      name = paramClass.intern();
    }
  }
  
  private void scan(Class paramClass)
  {
    root(paramClass);
    order(paramClass);
    access(paramClass);
    field(paramClass);
    method(paramClass);
    validate(paramClass);
    commit(paramClass);
  }
  
  private void validate(Class paramClass)
  {
    builder.validate(paramClass);
  }
  
  public Caller getCaller(Context paramContext)
  {
    return new Caller(this, paramContext);
  }
  
  public Function getCommit()
  {
    return scanner.getCommit();
  }
  
  public Function getComplete()
  {
    return scanner.getComplete();
  }
  
  public Creator getCreator()
  {
    return scanner.getCreator();
  }
  
  public Decorator getDecorator()
  {
    return scanner.getDecorator();
  }
  
  public String getName()
  {
    return name;
  }
  
  public Order getOrder()
  {
    return scanner.getOrder();
  }
  
  public Function getPersist()
  {
    return scanner.getPersist();
  }
  
  public Function getReplace()
  {
    return scanner.getReplace();
  }
  
  public Function getResolve()
  {
    return scanner.getResolve();
  }
  
  public Version getRevision()
  {
    return structure.getRevision();
  }
  
  public Section getSection(Context paramContext)
  {
    return structure.getSection(paramContext);
  }
  
  public Label getText()
  {
    return structure.getText();
  }
  
  public Class getType()
  {
    return type;
  }
  
  public Function getValidate()
  {
    return scanner.getValidate();
  }
  
  public Label getVersion()
  {
    return structure.getVersion();
  }
  
  public boolean isEmpty()
  {
    return scanner.getRoot() == null;
  }
  
  public boolean isPrimitive()
  {
    return structure.isPrimitive();
  }
  
  public boolean isStrict()
  {
    return scanner.isStrict();
  }
  
  public void method(Class paramClass)
  {
    paramClass = new MethodScanner(paramClass, access, required).iterator();
    for (;;)
    {
      if (!paramClass.hasNext()) {
        return;
      }
      Contact localContact = (Contact)paramClass.next();
      Annotation localAnnotation = localContact.getAnnotation();
      if (localAnnotation != null) {
        builder.process(localContact, localAnnotation);
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Scanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */