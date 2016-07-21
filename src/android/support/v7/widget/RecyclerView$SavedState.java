package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

public class RecyclerView$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new RecyclerView.SavedState.1();
  Parcelable mLayoutState;
  
  RecyclerView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    mLayoutState = paramParcel.readParcelable(RecyclerView.LayoutManager.class.getClassLoader());
  }
  
  RecyclerView$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  private void copyFrom(SavedState paramSavedState)
  {
    mLayoutState = mLayoutState;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(mLayoutState, 0);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */