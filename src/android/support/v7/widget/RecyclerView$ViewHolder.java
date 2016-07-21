package android.support.v7.widget;

import android.support.v4.view.cn;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class RecyclerView$ViewHolder
{
  static final int FLAG_ADAPTER_FULLUPDATE = 1024;
  static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
  static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
  static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
  static final int FLAG_BOUND = 1;
  static final int FLAG_IGNORE = 128;
  static final int FLAG_INVALID = 4;
  static final int FLAG_MOVED = 2048;
  static final int FLAG_NOT_RECYCLABLE = 16;
  static final int FLAG_REMOVED = 8;
  static final int FLAG_RETURNED_FROM_SCRAP = 32;
  static final int FLAG_TMP_DETACHED = 256;
  static final int FLAG_UPDATE = 2;
  private static final List<Object> FULLUPDATE_PAYLOADS = Collections.EMPTY_LIST;
  public final View itemView;
  private int mFlags;
  private boolean mInChangeScrap = false;
  private int mIsRecyclableCount = 0;
  long mItemId = -1L;
  int mItemViewType = -1;
  int mOldPosition = -1;
  RecyclerView mOwnerRecyclerView;
  List<Object> mPayloads = null;
  int mPosition = -1;
  int mPreLayoutPosition = -1;
  private RecyclerView.Recycler mScrapContainer = null;
  ViewHolder mShadowedHolder = null;
  ViewHolder mShadowingHolder = null;
  List<Object> mUnmodifiedPayloads = null;
  private int mWasImportantForAccessibilityBeforeHidden = 0;
  
  public RecyclerView$ViewHolder(View paramView)
  {
    if (paramView == null) {
      throw new IllegalArgumentException("itemView may not be null");
    }
    itemView = paramView;
  }
  
  private void createPayloadsIfNeeded()
  {
    if (mPayloads == null)
    {
      mPayloads = new ArrayList();
      mUnmodifiedPayloads = Collections.unmodifiableList(mPayloads);
    }
  }
  
  private boolean doesTransientStatePreventRecycling()
  {
    return ((mFlags & 0x10) == 0) && (cn.c(itemView));
  }
  
  private void onEnteredHiddenState()
  {
    mWasImportantForAccessibilityBeforeHidden = cn.e(itemView);
    cn.c(itemView, 4);
  }
  
  private void onLeftHiddenState()
  {
    cn.c(itemView, mWasImportantForAccessibilityBeforeHidden);
    mWasImportantForAccessibilityBeforeHidden = 0;
  }
  
  private boolean shouldBeKeptAsChild()
  {
    return (mFlags & 0x10) != 0;
  }
  
  void addChangePayload(Object paramObject)
  {
    if (paramObject == null) {
      addFlags(1024);
    }
    while ((mFlags & 0x400) != 0) {
      return;
    }
    createPayloadsIfNeeded();
    mPayloads.add(paramObject);
  }
  
  void addFlags(int paramInt)
  {
    mFlags |= paramInt;
  }
  
  void clearOldPosition()
  {
    mOldPosition = -1;
    mPreLayoutPosition = -1;
  }
  
  void clearPayload()
  {
    if (mPayloads != null) {
      mPayloads.clear();
    }
    mFlags &= 0xFBFF;
  }
  
  void clearReturnedFromScrapFlag()
  {
    mFlags &= 0xFFFFFFDF;
  }
  
  void clearTmpDetachFlag()
  {
    mFlags &= 0xFEFF;
  }
  
  void flagRemovedAndOffsetPosition(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    addFlags(8);
    offsetPosition(paramInt2, paramBoolean);
    mPosition = paramInt1;
  }
  
  public final int getAdapterPosition()
  {
    if (mOwnerRecyclerView == null) {
      return -1;
    }
    return RecyclerView.access$5700(mOwnerRecyclerView, this);
  }
  
  public final long getItemId()
  {
    return mItemId;
  }
  
  public final int getItemViewType()
  {
    return mItemViewType;
  }
  
  public final int getLayoutPosition()
  {
    if (mPreLayoutPosition == -1) {
      return mPosition;
    }
    return mPreLayoutPosition;
  }
  
  public final int getOldPosition()
  {
    return mOldPosition;
  }
  
  @Deprecated
  public final int getPosition()
  {
    if (mPreLayoutPosition == -1) {
      return mPosition;
    }
    return mPreLayoutPosition;
  }
  
  List<Object> getUnmodifiedPayloads()
  {
    if ((mFlags & 0x400) == 0)
    {
      if ((mPayloads == null) || (mPayloads.size() == 0)) {
        return FULLUPDATE_PAYLOADS;
      }
      return mUnmodifiedPayloads;
    }
    return FULLUPDATE_PAYLOADS;
  }
  
  boolean hasAnyOfTheFlags(int paramInt)
  {
    return (mFlags & paramInt) != 0;
  }
  
  boolean isAdapterPositionUnknown()
  {
    return ((mFlags & 0x200) != 0) || (isInvalid());
  }
  
  boolean isBound()
  {
    return (mFlags & 0x1) != 0;
  }
  
  boolean isInvalid()
  {
    return (mFlags & 0x4) != 0;
  }
  
  public final boolean isRecyclable()
  {
    return ((mFlags & 0x10) == 0) && (!cn.c(itemView));
  }
  
  boolean isRemoved()
  {
    return (mFlags & 0x8) != 0;
  }
  
  boolean isScrap()
  {
    return mScrapContainer != null;
  }
  
  boolean isTmpDetached()
  {
    return (mFlags & 0x100) != 0;
  }
  
  boolean isUpdated()
  {
    return (mFlags & 0x2) != 0;
  }
  
  boolean needsUpdate()
  {
    return (mFlags & 0x2) != 0;
  }
  
  void offsetPosition(int paramInt, boolean paramBoolean)
  {
    if (mOldPosition == -1) {
      mOldPosition = mPosition;
    }
    if (mPreLayoutPosition == -1) {
      mPreLayoutPosition = mPosition;
    }
    if (paramBoolean) {
      mPreLayoutPosition += paramInt;
    }
    mPosition += paramInt;
    if (itemView.getLayoutParams() != null) {
      itemView.getLayoutParams()).mInsetsDirty = true;
    }
  }
  
  void resetInternal()
  {
    mFlags = 0;
    mPosition = -1;
    mOldPosition = -1;
    mItemId = -1L;
    mPreLayoutPosition = -1;
    mIsRecyclableCount = 0;
    mShadowedHolder = null;
    mShadowingHolder = null;
    clearPayload();
    mWasImportantForAccessibilityBeforeHidden = 0;
  }
  
  void saveOldPosition()
  {
    if (mOldPosition == -1) {
      mOldPosition = mPosition;
    }
  }
  
  void setFlags(int paramInt1, int paramInt2)
  {
    mFlags = (mFlags & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public final void setIsRecyclable(boolean paramBoolean)
  {
    int i;
    if (paramBoolean)
    {
      i = mIsRecyclableCount - 1;
      mIsRecyclableCount = i;
      if (mIsRecyclableCount >= 0) {
        break label64;
      }
      mIsRecyclableCount = 0;
      Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
    }
    label64:
    do
    {
      return;
      i = mIsRecyclableCount + 1;
      break;
      if ((!paramBoolean) && (mIsRecyclableCount == 1))
      {
        mFlags |= 0x10;
        return;
      }
    } while ((!paramBoolean) || (mIsRecyclableCount != 0));
    mFlags &= 0xFFFFFFEF;
  }
  
  void setScrapContainer(RecyclerView.Recycler paramRecycler, boolean paramBoolean)
  {
    mScrapContainer = paramRecycler;
    mInChangeScrap = paramBoolean;
  }
  
  boolean shouldIgnore()
  {
    return (mFlags & 0x80) != 0;
  }
  
  void stopIgnoring()
  {
    mFlags &= 0xFF7F;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder("ViewHolder{" + Integer.toHexString(hashCode()) + " position=" + mPosition + " id=" + mItemId + ", oldPos=" + mOldPosition + ", pLpos:" + mPreLayoutPosition);
    StringBuilder localStringBuilder2;
    if (isScrap())
    {
      localStringBuilder2 = localStringBuilder1.append(" scrap ");
      if (!mInChangeScrap) {
        break label295;
      }
    }
    label295:
    for (String str = "[changeScrap]";; str = "[attachedScrap]")
    {
      localStringBuilder2.append(str);
      if (isInvalid()) {
        localStringBuilder1.append(" invalid");
      }
      if (!isBound()) {
        localStringBuilder1.append(" unbound");
      }
      if (needsUpdate()) {
        localStringBuilder1.append(" update");
      }
      if (isRemoved()) {
        localStringBuilder1.append(" removed");
      }
      if (shouldIgnore()) {
        localStringBuilder1.append(" ignored");
      }
      if (isTmpDetached()) {
        localStringBuilder1.append(" tmpDetached");
      }
      if (!isRecyclable()) {
        localStringBuilder1.append(" not recyclable(" + mIsRecyclableCount + ")");
      }
      if (isAdapterPositionUnknown()) {
        localStringBuilder1.append(" undefined adapter position");
      }
      if (itemView.getParent() == null) {
        localStringBuilder1.append(" no parent");
      }
      localStringBuilder1.append("}");
      return localStringBuilder1.toString();
    }
  }
  
  void unScrap()
  {
    mScrapContainer.unscrapView(this);
  }
  
  boolean wasReturnedFromScrap()
  {
    return (mFlags & 0x20) != 0;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.ViewHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */