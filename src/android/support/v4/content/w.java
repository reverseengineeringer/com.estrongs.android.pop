package android.support.v4.content;

import android.os.Build.VERSION;
import java.util.concurrent.Executor;

public final class w
{
  public static Executor a()
  {
    if (Build.VERSION.SDK_INT >= 11) {
      return f.a();
    }
    return ModernAsyncTask.a;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */