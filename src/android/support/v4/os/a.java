package android.support.v4.os;

import android.os.AsyncTask;
import android.os.Build.VERSION;

public final class a
{
  public static <Params, Progress, Result> AsyncTask<Params, Progress, Result> a(AsyncTask<Params, Progress, Result> paramAsyncTask, Params... paramVarArgs)
  {
    if (paramAsyncTask == null) {
      throw new IllegalArgumentException("task can not be null");
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      b.a(paramAsyncTask, paramVarArgs);
      return paramAsyncTask;
    }
    paramAsyncTask.execute(paramVarArgs);
    return paramAsyncTask;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */