package com.estrongs.android.exception;

public class a
{
  public static Throwable a(Throwable paramThrowable)
  {
    while (((paramThrowable instanceof AbstractException)) && (((AbstractException)paramThrowable).getException() != null)) {
      paramThrowable = ((AbstractException)paramThrowable).getException();
    }
    return paramThrowable;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.exception.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */