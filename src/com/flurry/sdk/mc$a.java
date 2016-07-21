package com.flurry.sdk;

final class mc$a
  implements Thread.UncaughtExceptionHandler
{
  private mc$a(mc parammc) {}
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    mc.a(a, paramThread, paramThrowable);
    mc.b(a, paramThread, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.mc.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */