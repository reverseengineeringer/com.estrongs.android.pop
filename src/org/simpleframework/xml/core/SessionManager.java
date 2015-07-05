package org.simpleframework.xml.core;

class SessionManager
{
  private ThreadLocal<SessionManager.Reference> local = new ThreadLocal();
  
  private Session create(boolean paramBoolean)
  {
    SessionManager.Reference localReference = new SessionManager.Reference(paramBoolean);
    local.set(localReference);
    return localReference.get();
  }
  
  public void close()
  {
    SessionManager.Reference localReference = (SessionManager.Reference)local.get();
    if (localReference == null) {
      throw new PersistenceException("Session does not exist", new Object[0]);
    }
    if (localReference.clear() == 0) {
      local.remove();
    }
  }
  
  public Session open()
  {
    return open(true);
  }
  
  public Session open(boolean paramBoolean)
  {
    SessionManager.Reference localReference = (SessionManager.Reference)local.get();
    if (localReference != null) {
      return localReference.get();
    }
    return create(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.SessionManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */