package android.support.v4.app;

import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import java.util.List;
import java.util.Map;

class g
  extends SharedElementCallback
{
  private f a;
  
  public g(f paramf)
  {
    a = paramf;
  }
  
  public Parcelable onCaptureSharedElementSnapshot(View paramView, Matrix paramMatrix, RectF paramRectF)
  {
    return a.a(paramView, paramMatrix, paramRectF);
  }
  
  public View onCreateSnapshotView(Context paramContext, Parcelable paramParcelable)
  {
    return a.a(paramContext, paramParcelable);
  }
  
  public void onMapSharedElements(List<String> paramList, Map<String, View> paramMap)
  {
    a.a(paramList, paramMap);
  }
  
  public void onRejectSharedElements(List<View> paramList)
  {
    a.a(paramList);
  }
  
  public void onSharedElementEnd(List<String> paramList, List<View> paramList1, List<View> paramList2)
  {
    a.b(paramList, paramList1, paramList2);
  }
  
  public void onSharedElementStart(List<String> paramList, List<View> paramList1, List<View> paramList2)
  {
    a.a(paramList, paramList1, paramList2);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */