package android.support.v4.view;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

public abstract class ae
{
  private DataSetObservable a = new DataSetObservable();
  
  public abstract int a();
  
  public CharSequence a(int paramInt)
  {
    return null;
  }
  
  public Object a(View paramView, int paramInt)
  {
    throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
  }
  
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    return a(paramViewGroup, paramInt);
  }
  
  public void a(DataSetObserver paramDataSetObserver)
  {
    a.registerObserver(paramDataSetObserver);
  }
  
  public void a(Parcelable paramParcelable, ClassLoader paramClassLoader) {}
  
  public void a(View paramView) {}
  
  public void a(View paramView, int paramInt, Object paramObject)
  {
    throw new UnsupportedOperationException("Required method destroyItem was not overridden");
  }
  
  public void a(ViewGroup paramViewGroup)
  {
    a(paramViewGroup);
  }
  
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    a(paramViewGroup, paramInt, paramObject);
  }
  
  public abstract boolean a(View paramView, Object paramObject);
  
  public float b(int paramInt)
  {
    return 1.0F;
  }
  
  public Parcelable b()
  {
    return null;
  }
  
  public void b(DataSetObserver paramDataSetObserver)
  {
    a.unregisterObserver(paramDataSetObserver);
  }
  
  public void b(View paramView) {}
  
  public void b(View paramView, int paramInt, Object paramObject) {}
  
  public void b(ViewGroup paramViewGroup)
  {
    b(paramViewGroup);
  }
  
  public void b(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    b(paramViewGroup, paramInt, paramObject);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */