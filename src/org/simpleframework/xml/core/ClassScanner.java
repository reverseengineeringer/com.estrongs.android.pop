package org.simpleframework.xml.core;

import java.lang.reflect.Method;
import java.util.Map;
import org.simpleframework.xml.Default;
import org.simpleframework.xml.Namespace;
import org.simpleframework.xml.NamespaceList;
import org.simpleframework.xml.Order;
import org.simpleframework.xml.Root;

class ClassScanner
{
  private Default access;
  private Function commit;
  private Function complete;
  private NamespaceDecorator decorator;
  private Namespace namespace;
  private Order order;
  private Function persist;
  private Function replace;
  private Function resolve;
  private Root root;
  private ConstructorScanner scanner;
  private Function validate;
  
  public ClassScanner(Class paramClass)
  {
    scanner = new ConstructorScanner(paramClass);
    decorator = new NamespaceDecorator();
    scan(paramClass);
  }
  
  private void access(Class<?> paramClass)
  {
    if (paramClass.isAnnotationPresent(Default.class)) {
      access = ((Default)paramClass.getAnnotation(Default.class));
    }
  }
  
  private void commit(Method paramMethod)
  {
    if (paramMethod.getAnnotation(Commit.class) != null) {
      commit = getFunction(paramMethod);
    }
  }
  
  private void complete(Method paramMethod)
  {
    if (paramMethod.getAnnotation(Complete.class) != null) {
      complete = getFunction(paramMethod);
    }
  }
  
  private Function getFunction(Method paramMethod)
  {
    boolean bool = isContextual(paramMethod);
    if (!paramMethod.isAccessible()) {
      paramMethod.setAccessible(true);
    }
    return new Function(paramMethod, bool);
  }
  
  private void global(Class paramClass)
  {
    if (namespace == null) {
      namespace(paramClass);
    }
    if (root == null) {
      root(paramClass);
    }
    if (order == null) {
      order(paramClass);
    }
    if (access == null) {
      access(paramClass);
    }
  }
  
  private boolean isContextual(Method paramMethod)
  {
    boolean bool = false;
    paramMethod = paramMethod.getParameterTypes();
    if (paramMethod.length == 1) {
      bool = Map.class.equals(paramMethod[0]);
    }
    return bool;
  }
  
  private void namespace(Class<?> paramClass)
  {
    if (paramClass.isAnnotationPresent(Namespace.class))
    {
      namespace = ((Namespace)paramClass.getAnnotation(Namespace.class));
      if (namespace != null) {
        decorator.add(namespace);
      }
    }
  }
  
  private void order(Class<?> paramClass)
  {
    if (paramClass.isAnnotationPresent(Order.class)) {
      order = ((Order)paramClass.getAnnotation(Order.class));
    }
  }
  
  private void persist(Method paramMethod)
  {
    if (paramMethod.getAnnotation(Persist.class) != null) {
      persist = getFunction(paramMethod);
    }
  }
  
  private void process(Class paramClass)
  {
    if (namespace != null) {
      decorator.set(namespace);
    }
  }
  
  private void replace(Method paramMethod)
  {
    if (paramMethod.getAnnotation(Replace.class) != null) {
      replace = getFunction(paramMethod);
    }
  }
  
  private void resolve(Method paramMethod)
  {
    if (paramMethod.getAnnotation(Resolve.class) != null) {
      resolve = getFunction(paramMethod);
    }
  }
  
  private void root(Class<?> paramClass)
  {
    if (paramClass.isAnnotationPresent(Root.class)) {
      root = ((Root)paramClass.getAnnotation(Root.class));
    }
  }
  
  private void scan(Class paramClass)
  {
    for (Class localClass = paramClass;; localClass = localClass.getSuperclass())
    {
      if (localClass == null)
      {
        process(paramClass);
        return;
      }
      global(localClass);
      scope(localClass);
      scan(paramClass, localClass);
    }
  }
  
  private void scan(Class paramClass1, Class paramClass2)
  {
    paramClass1 = paramClass2.getDeclaredMethods();
    int i = 0;
    for (;;)
    {
      if (i >= paramClass1.length) {
        return;
      }
      scan(paramClass1[i]);
      i += 1;
    }
  }
  
  private void scan(Method paramMethod)
  {
    if (commit == null) {
      commit(paramMethod);
    }
    if (validate == null) {
      validate(paramMethod);
    }
    if (persist == null) {
      persist(paramMethod);
    }
    if (complete == null) {
      complete(paramMethod);
    }
    if (replace == null) {
      replace(paramMethod);
    }
    if (resolve == null) {
      resolve(paramMethod);
    }
  }
  
  private void scope(Class<?> paramClass)
  {
    int j;
    int i;
    if (paramClass.isAnnotationPresent(NamespaceList.class))
    {
      paramClass = ((NamespaceList)paramClass.getAnnotation(NamespaceList.class)).value();
      j = paramClass.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        return;
      }
      Namespace localNamespace = paramClass[i];
      decorator.add(localNamespace);
      i += 1;
    }
  }
  
  private void validate(Method paramMethod)
  {
    if (paramMethod.getAnnotation(Validate.class) != null) {
      validate = getFunction(paramMethod);
    }
  }
  
  public Function getCommit()
  {
    return commit;
  }
  
  public Function getComplete()
  {
    return complete;
  }
  
  public Creator getCreator()
  {
    return scanner.getCreator();
  }
  
  public Decorator getDecorator()
  {
    return decorator;
  }
  
  public Default getDefault()
  {
    return access;
  }
  
  public Order getOrder()
  {
    return order;
  }
  
  public Function getPersist()
  {
    return persist;
  }
  
  public Function getReplace()
  {
    return replace;
  }
  
  public Function getResolve()
  {
    return resolve;
  }
  
  public Root getRoot()
  {
    return root;
  }
  
  public Function getValidate()
  {
    return validate;
  }
  
  public boolean isStrict()
  {
    if (root != null) {
      return root.strict();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ClassScanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */