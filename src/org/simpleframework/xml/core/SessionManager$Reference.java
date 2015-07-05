package org.simpleframework.xml.core;

class SessionManager$Reference
{
  private int count;
  private Session session;
  
  public SessionManager$Reference(boolean paramBoolean)
  {
    session = new Session(paramBoolean);
  }
  
  public int clear()
  {
    int i = count - 1;
    count = i;
    return i;
  }
  
  public Session get()
  {
    if (count >= 0) {
      count += 1;
    }
    return session;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.SessionManager.Reference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */