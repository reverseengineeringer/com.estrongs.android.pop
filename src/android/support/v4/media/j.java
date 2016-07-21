package android.support.v4.media;

public class j<T>
{
  private Object a;
  private boolean b;
  private boolean c;
  private int d;
  
  j(Object paramObject)
  {
    a = paramObject;
  }
  
  void a(int paramInt)
  {
    d = paramInt;
  }
  
  public void a(T paramT)
  {
    if (c) {
      throw new IllegalStateException("sendResult() called twice for: " + a);
    }
    c = true;
    a(paramT, d);
  }
  
  void a(T paramT, int paramInt) {}
  
  boolean a()
  {
    return (b) || (c);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */