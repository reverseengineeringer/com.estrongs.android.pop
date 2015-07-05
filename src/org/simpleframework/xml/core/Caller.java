package org.simpleframework.xml.core;

class Caller
{
  private final Function commit;
  private final Function complete;
  private final Context context;
  private final Function persist;
  private final Function replace;
  private final Function resolve;
  private final Function validate;
  
  public Caller(Scanner paramScanner, Context paramContext)
  {
    validate = paramScanner.getValidate();
    complete = paramScanner.getComplete();
    replace = paramScanner.getReplace();
    resolve = paramScanner.getResolve();
    persist = paramScanner.getPersist();
    commit = paramScanner.getCommit();
    context = paramContext;
  }
  
  public void commit(Object paramObject)
  {
    if (commit != null) {
      commit.call(context, paramObject);
    }
  }
  
  public void complete(Object paramObject)
  {
    if (complete != null) {
      complete.call(context, paramObject);
    }
  }
  
  public void persist(Object paramObject)
  {
    if (persist != null) {
      persist.call(context, paramObject);
    }
  }
  
  public Object replace(Object paramObject)
  {
    Object localObject = paramObject;
    if (replace != null) {
      localObject = replace.call(context, paramObject);
    }
    return localObject;
  }
  
  public Object resolve(Object paramObject)
  {
    Object localObject = paramObject;
    if (resolve != null) {
      localObject = resolve.call(context, paramObject);
    }
    return localObject;
  }
  
  public void validate(Object paramObject)
  {
    if (validate != null) {
      validate.call(context, paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Caller
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */