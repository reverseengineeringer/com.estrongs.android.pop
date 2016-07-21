package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.os.n;
import android.support.v4.view.a.a;
import android.support.v4.view.bi;
import android.support.v4.view.br;
import android.support.v4.view.bs;
import android.support.v4.view.cg;
import android.support.v4.view.ci;
import android.support.v4.view.cn;
import android.support.v4.view.dn;
import android.support.v4.widget.ai;
import android.support.v7.recyclerview.R.styleable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

public class RecyclerView
  extends ViewGroup
  implements br, cg
{
  private static final boolean DEBUG = false;
  private static final boolean DISPATCH_TEMP_DETACH = false;
  private static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
  public static final int HORIZONTAL = 0;
  private static final int INVALID_POINTER = -1;
  public static final int INVALID_TYPE = -1;
  private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
  private static final int MAX_SCROLL_DURATION = 2000;
  public static final long NO_ID = -1L;
  public static final int NO_POSITION = -1;
  public static final int SCROLL_STATE_DRAGGING = 1;
  public static final int SCROLL_STATE_IDLE = 0;
  public static final int SCROLL_STATE_SETTLING = 2;
  private static final String TAG = "RecyclerView";
  public static final int TOUCH_SLOP_DEFAULT = 0;
  public static final int TOUCH_SLOP_PAGING = 1;
  private static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
  private static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
  private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
  private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
  private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
  private static final String TRACE_SCROLL_TAG = "RV Scroll";
  public static final int VERTICAL = 1;
  private static final Interpolator sQuinticInterpolator;
  private RecyclerViewAccessibilityDelegate mAccessibilityDelegate;
  private final AccessibilityManager mAccessibilityManager;
  private RecyclerView.OnItemTouchListener mActiveOnItemTouchListener;
  private RecyclerView.Adapter mAdapter;
  AdapterHelper mAdapterHelper;
  private boolean mAdapterUpdateDuringMeasure;
  private ai mBottomGlow;
  private RecyclerView.ChildDrawingOrderCallback mChildDrawingOrderCallback;
  ChildHelper mChildHelper;
  private boolean mClipToPadding;
  private boolean mDataSetHasChangedAfterLayout = false;
  private int mEatRequestLayout = 0;
  private int mEatenAccessibilityChangeFlags;
  private boolean mFirstLayoutComplete;
  private boolean mHasFixedSize;
  private boolean mIgnoreMotionEventTillDown;
  private int mInitialTouchX;
  private int mInitialTouchY;
  private boolean mIsAttached;
  RecyclerView.ItemAnimator mItemAnimator = new DefaultItemAnimator();
  private RecyclerView.ItemAnimator.ItemAnimatorListener mItemAnimatorListener = new RecyclerView.ItemAnimatorRestoreListener(this, null);
  private Runnable mItemAnimatorRunner = new RecyclerView.2(this);
  private final ArrayList<RecyclerView.ItemDecoration> mItemDecorations = new ArrayList();
  boolean mItemsAddedOrRemoved = false;
  boolean mItemsChanged = false;
  private int mLastTouchX;
  private int mLastTouchY;
  RecyclerView.LayoutManager mLayout;
  private boolean mLayoutFrozen;
  private int mLayoutOrScrollCounter = 0;
  private boolean mLayoutRequestEaten;
  private ai mLeftGlow;
  private final int mMaxFlingVelocity;
  private final int mMinFlingVelocity;
  private final int[] mMinMaxLayoutPositions = new int[2];
  private final int[] mNestedOffsets = new int[2];
  private final RecyclerView.RecyclerViewDataObserver mObserver = new RecyclerView.RecyclerViewDataObserver(this, null);
  private List<RecyclerView.OnChildAttachStateChangeListener> mOnChildAttachStateListeners;
  private final ArrayList<RecyclerView.OnItemTouchListener> mOnItemTouchListeners = new ArrayList();
  private RecyclerView.SavedState mPendingSavedState;
  private final boolean mPostUpdatesOnAnimation;
  private boolean mPostedAnimatorRunner = false;
  final RecyclerView.Recycler mRecycler = new RecyclerView.Recycler(this);
  private RecyclerView.RecyclerListener mRecyclerListener;
  private ai mRightGlow;
  private final int[] mScrollConsumed = new int[2];
  private float mScrollFactor = Float.MIN_VALUE;
  private RecyclerView.OnScrollListener mScrollListener;
  private List<RecyclerView.OnScrollListener> mScrollListeners;
  private final int[] mScrollOffset = new int[2];
  private int mScrollPointerId = -1;
  private int mScrollState = 0;
  private final bs mScrollingChildHelper;
  final RecyclerView.State mState = new RecyclerView.State();
  private final Rect mTempRect = new Rect();
  private ai mTopGlow;
  private int mTouchSlop;
  private final Runnable mUpdateChildViewsRunnable = new RecyclerView.1(this);
  private VelocityTracker mVelocityTracker;
  private final RecyclerView.ViewFlinger mViewFlinger = new RecyclerView.ViewFlinger(this);
  private final ViewInfoStore.ProcessCallback mViewInfoProcessCallback = new RecyclerView.4(this);
  final ViewInfoStore mViewInfoStore = new ViewInfoStore();
  
  static
  {
    if ((Build.VERSION.SDK_INT == 18) || (Build.VERSION.SDK_INT == 19) || (Build.VERSION.SDK_INT == 20)) {}
    for (boolean bool = true;; bool = false)
    {
      FORCE_INVALIDATE_DISPLAY_LIST = bool;
      LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[] { Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE };
      sQuinticInterpolator = new RecyclerView.3();
      return;
    }
  }
  
  public RecyclerView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setScrollContainer(true);
    setFocusableInTouchMode(true);
    Object localObject;
    if (Build.VERSION.SDK_INT >= 16)
    {
      bool = true;
      mPostUpdatesOnAnimation = bool;
      localObject = ViewConfiguration.get(paramContext);
      mTouchSlop = ((ViewConfiguration)localObject).getScaledTouchSlop();
      mMinFlingVelocity = ((ViewConfiguration)localObject).getScaledMinimumFlingVelocity();
      mMaxFlingVelocity = ((ViewConfiguration)localObject).getScaledMaximumFlingVelocity();
      if (cn.a(this) != 2) {
        break label435;
      }
    }
    label435:
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      mItemAnimator.setListener(mItemAnimatorListener);
      initAdapterManager();
      initChildrenHelper();
      if (cn.e(this) == 0) {
        cn.c(this, 1);
      }
      mAccessibilityManager = ((AccessibilityManager)getContext().getSystemService("accessibility"));
      setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
      if (paramAttributeSet != null)
      {
        localObject = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RecyclerView, paramInt, 0);
        String str = ((TypedArray)localObject).getString(R.styleable.RecyclerView_layoutManager);
        ((TypedArray)localObject).recycle();
        createLayoutManager(paramContext, str, paramAttributeSet, paramInt, 0);
      }
      mScrollingChildHelper = new bs(this);
      setNestedScrollingEnabled(true);
      return;
      bool = false;
      break;
    }
  }
  
  private void addAnimatingView(RecyclerView.ViewHolder paramViewHolder)
  {
    View localView = itemView;
    if (localView.getParent() == this) {}
    for (int i = 1;; i = 0)
    {
      mRecycler.unscrapView(getChildViewHolder(localView));
      if (!paramViewHolder.isTmpDetached()) {
        break;
      }
      mChildHelper.attachViewToParent(localView, -1, localView.getLayoutParams(), true);
      return;
    }
    if (i == 0)
    {
      mChildHelper.addView(localView, true);
      return;
    }
    mChildHelper.hide(localView);
  }
  
  private void animateAppearance(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    paramViewHolder.setIsRecyclable(false);
    if (mItemAnimator.animateAppearance(paramViewHolder, paramItemHolderInfo1, paramItemHolderInfo2)) {
      postAnimationRunner();
    }
  }
  
  private void animateChange(RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramViewHolder1.setIsRecyclable(false);
    if (paramBoolean1) {
      addAnimatingView(paramViewHolder1);
    }
    if (paramViewHolder1 != paramViewHolder2)
    {
      if (paramBoolean2) {
        addAnimatingView(paramViewHolder2);
      }
      mShadowedHolder = paramViewHolder2;
      addAnimatingView(paramViewHolder1);
      mRecycler.unscrapView(paramViewHolder1);
      paramViewHolder2.setIsRecyclable(false);
      mShadowingHolder = paramViewHolder1;
    }
    if (mItemAnimator.animateChange(paramViewHolder1, paramViewHolder2, paramItemHolderInfo1, paramItemHolderInfo2)) {
      postAnimationRunner();
    }
  }
  
  private void animateDisappearance(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo1, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo2)
  {
    addAnimatingView(paramViewHolder);
    paramViewHolder.setIsRecyclable(false);
    if (mItemAnimator.animateDisappearance(paramViewHolder, paramItemHolderInfo1, paramItemHolderInfo2)) {
      postAnimationRunner();
    }
  }
  
  private boolean canReuseUpdatedViewHolder(RecyclerView.ViewHolder paramViewHolder)
  {
    return (mItemAnimator == null) || (mItemAnimator.canReuseUpdatedViewHolder(paramViewHolder, paramViewHolder.getUnmodifiedPayloads()));
  }
  
  private void cancelTouch()
  {
    resetTouch();
    setScrollState(0);
  }
  
  private void considerReleasingGlowsOnScroll(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (mLeftGlow != null)
    {
      bool1 = bool2;
      if (!mLeftGlow.a())
      {
        bool1 = bool2;
        if (paramInt1 > 0) {
          bool1 = mLeftGlow.c();
        }
      }
    }
    bool2 = bool1;
    if (mRightGlow != null)
    {
      bool2 = bool1;
      if (!mRightGlow.a())
      {
        bool2 = bool1;
        if (paramInt1 < 0) {
          bool2 = bool1 | mRightGlow.c();
        }
      }
    }
    bool1 = bool2;
    if (mTopGlow != null)
    {
      bool1 = bool2;
      if (!mTopGlow.a())
      {
        bool1 = bool2;
        if (paramInt2 > 0) {
          bool1 = bool2 | mTopGlow.c();
        }
      }
    }
    bool2 = bool1;
    if (mBottomGlow != null)
    {
      bool2 = bool1;
      if (!mBottomGlow.a())
      {
        bool2 = bool1;
        if (paramInt2 < 0) {
          bool2 = bool1 | mBottomGlow.c();
        }
      }
    }
    if (bool2) {
      cn.d(this);
    }
  }
  
  private void consumePendingUpdateOperations()
  {
    if (!mFirstLayoutComplete) {}
    label104:
    do
    {
      do
      {
        return;
        if (mDataSetHasChangedAfterLayout)
        {
          n.a("RV FullInvalidate");
          dispatchLayout();
          n.a();
          return;
        }
      } while (!mAdapterHelper.hasPendingUpdates());
      if ((mAdapterHelper.hasAnyUpdateTypes(4)) && (!mAdapterHelper.hasAnyUpdateTypes(11)))
      {
        n.a("RV PartialInvalidate");
        eatRequestLayout();
        mAdapterHelper.preProcess();
        if (!mLayoutRequestEaten)
        {
          if (!hasUpdatedView()) {
            break label104;
          }
          dispatchLayout();
        }
        for (;;)
        {
          resumeRequestLayout(true);
          n.a();
          return;
          mAdapterHelper.consumePostponedUpdates();
        }
      }
    } while (!mAdapterHelper.hasPendingUpdates());
    n.a("RV FullInvalidate");
    dispatchLayout();
    n.a();
  }
  
  private void createLayoutManager(Context paramContext, String paramString, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    if (paramString != null)
    {
      paramString = paramString.trim();
      if (paramString.length() != 0)
      {
        String str = getFullClassName(paramContext, paramString);
        try
        {
          if (isInEditMode()) {}
          Class localClass;
          for (paramString = getClass().getClassLoader();; paramString = paramContext.getClassLoader())
          {
            localClass = paramString.loadClass(str).asSubclass(RecyclerView.LayoutManager.class);
            try
            {
              paramString = localClass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
              Object[] arrayOfObject = new Object[4];
              arrayOfObject[0] = paramContext;
              arrayOfObject[1] = paramAttributeSet;
              arrayOfObject[2] = Integer.valueOf(paramInt1);
              arrayOfObject[3] = Integer.valueOf(paramInt2);
              paramContext = arrayOfObject;
            }
            catch (NoSuchMethodException paramContext)
            {
              try
              {
                paramString = localClass.getConstructor(new Class[0]);
                paramContext = null;
              }
              catch (NoSuchMethodException paramString)
              {
                paramString.initCause(paramContext);
                throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, paramString);
              }
            }
            paramString.setAccessible(true);
            setLayoutManager((RecyclerView.LayoutManager)paramString.newInstance(paramContext));
            return;
          }
          return;
        }
        catch (ClassNotFoundException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, paramContext);
        }
        catch (InvocationTargetException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, paramContext);
        }
        catch (InstantiationException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, paramContext);
        }
        catch (IllegalAccessException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, paramContext);
        }
        catch (ClassCastException paramContext)
        {
          throw new IllegalStateException(paramAttributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, paramContext);
        }
      }
    }
  }
  
  private boolean didChildRangeChange(int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    int j = mChildHelper.getChildCount();
    boolean bool1;
    if (j == 0) {
      if (paramInt1 == 0)
      {
        bool1 = bool2;
        if (paramInt2 == 0) {}
      }
      else
      {
        bool1 = true;
      }
    }
    int i;
    do
    {
      return bool1;
      i = 0;
      bool1 = bool2;
    } while (i >= j);
    RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getChildAt(i));
    if (localViewHolder.shouldIgnore()) {}
    int k;
    do
    {
      i += 1;
      break;
      k = localViewHolder.getLayoutPosition();
    } while ((k >= paramInt1) && (k <= paramInt2));
    return true;
  }
  
  private void dispatchChildAttached(View paramView)
  {
    RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(paramView);
    onChildAttachedToWindow(paramView);
    if ((mAdapter != null) && (localViewHolder != null)) {
      mAdapter.onViewAttachedToWindow(localViewHolder);
    }
    if (mOnChildAttachStateListeners != null)
    {
      int i = mOnChildAttachStateListeners.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.OnChildAttachStateChangeListener)mOnChildAttachStateListeners.get(i)).onChildViewAttachedToWindow(paramView);
        i -= 1;
      }
    }
  }
  
  private void dispatchChildDetached(View paramView)
  {
    RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(paramView);
    onChildDetachedFromWindow(paramView);
    if ((mAdapter != null) && (localViewHolder != null)) {
      mAdapter.onViewDetachedFromWindow(localViewHolder);
    }
    if (mOnChildAttachStateListeners != null)
    {
      int i = mOnChildAttachStateListeners.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.OnChildAttachStateChangeListener)mOnChildAttachStateListeners.get(i)).onChildViewDetachedFromWindow(paramView);
        i -= 1;
      }
    }
  }
  
  private void dispatchContentChangedIfNecessary()
  {
    int i = mEatenAccessibilityChangeFlags;
    mEatenAccessibilityChangeFlags = 0;
    if ((i != 0) && (isAccessibilityEnabled()))
    {
      AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain();
      localAccessibilityEvent.setEventType(2048);
      a.a(localAccessibilityEvent, i);
      sendAccessibilityEventUnchecked(localAccessibilityEvent);
    }
  }
  
  private void dispatchLayoutStep1()
  {
    boolean bool = true;
    mState.assertLayoutStep(1);
    RecyclerView.State.access$2202(mState, false);
    eatRequestLayout();
    mViewInfoStore.clear();
    onEnterLayoutOrScroll();
    processAdapterUpdatesAndSetAnimationFlags();
    Object localObject = mState;
    int j;
    int i;
    if ((RecyclerView.State.access$2500(mState)) && (mItemsChanged))
    {
      RecyclerView.State.access$2702((RecyclerView.State)localObject, bool);
      mItemsChanged = false;
      mItemsAddedOrRemoved = false;
      RecyclerView.State.access$2402(mState, RecyclerView.State.access$2300(mState));
      mState.mItemCount = mAdapter.getItemCount();
      findMinMaxChildLayoutPositions(mMinMaxLayoutPositions);
      if (!RecyclerView.State.access$2500(mState)) {
        break label294;
      }
      j = mChildHelper.getChildCount();
      i = 0;
      label137:
      if (i >= j) {
        break label294;
      }
      localObject = getChildViewHolderInt(mChildHelper.getChildAt(i));
      if ((!((RecyclerView.ViewHolder)localObject).shouldIgnore()) && ((!((RecyclerView.ViewHolder)localObject).isInvalid()) || (mAdapter.hasStableIds()))) {
        break label194;
      }
    }
    label194:
    RecyclerView.ItemAnimator.ItemHolderInfo localItemHolderInfo;
    for (;;)
    {
      i += 1;
      break label137;
      bool = false;
      break;
      localItemHolderInfo = mItemAnimator.recordPreLayoutInformation(mState, (RecyclerView.ViewHolder)localObject, RecyclerView.ItemAnimator.buildAdapterChangeFlagsForAnimations((RecyclerView.ViewHolder)localObject), ((RecyclerView.ViewHolder)localObject).getUnmodifiedPayloads());
      mViewInfoStore.addToPreLayout((RecyclerView.ViewHolder)localObject, localItemHolderInfo);
      if ((RecyclerView.State.access$2700(mState)) && (((RecyclerView.ViewHolder)localObject).isUpdated()) && (!((RecyclerView.ViewHolder)localObject).isRemoved()) && (!((RecyclerView.ViewHolder)localObject).shouldIgnore()) && (!((RecyclerView.ViewHolder)localObject).isInvalid()))
      {
        long l = getChangedHolderKey((RecyclerView.ViewHolder)localObject);
        mViewInfoStore.addToOldChangeHolders(l, (RecyclerView.ViewHolder)localObject);
      }
    }
    label294:
    if (RecyclerView.State.access$2300(mState))
    {
      saveOldPositions();
      bool = RecyclerView.State.access$1800(mState);
      RecyclerView.State.access$1802(mState, false);
      mLayout.onLayoutChildren(mRecycler, mState);
      RecyclerView.State.access$1802(mState, bool);
      i = 0;
      if (i < mChildHelper.getChildCount())
      {
        localObject = getChildViewHolderInt(mChildHelper.getChildAt(i));
        if (((RecyclerView.ViewHolder)localObject).shouldIgnore()) {}
        for (;;)
        {
          i += 1;
          break;
          if (!mViewInfoStore.isInPreLayout((RecyclerView.ViewHolder)localObject))
          {
            int k = RecyclerView.ItemAnimator.buildAdapterChangeFlagsForAnimations((RecyclerView.ViewHolder)localObject);
            bool = ((RecyclerView.ViewHolder)localObject).hasAnyOfTheFlags(8192);
            j = k;
            if (!bool) {
              j = k | 0x1000;
            }
            localItemHolderInfo = mItemAnimator.recordPreLayoutInformation(mState, (RecyclerView.ViewHolder)localObject, j, ((RecyclerView.ViewHolder)localObject).getUnmodifiedPayloads());
            if (bool) {
              recordAnimationInfoIfBouncedHiddenView((RecyclerView.ViewHolder)localObject, localItemHolderInfo);
            } else {
              mViewInfoStore.addToAppearedInPreLayoutHolders((RecyclerView.ViewHolder)localObject, localItemHolderInfo);
            }
          }
        }
      }
      clearOldPositions();
    }
    for (;;)
    {
      onExitLayoutOrScroll();
      resumeRequestLayout(false);
      RecyclerView.State.access$2102(mState, 2);
      return;
      clearOldPositions();
    }
  }
  
  private void dispatchLayoutStep2()
  {
    eatRequestLayout();
    onEnterLayoutOrScroll();
    mState.assertLayoutStep(6);
    mAdapterHelper.consumeUpdatesInOnePass();
    mState.mItemCount = mAdapter.getItemCount();
    RecyclerView.State.access$1702(mState, 0);
    RecyclerView.State.access$2402(mState, false);
    mLayout.onLayoutChildren(mRecycler, mState);
    RecyclerView.State.access$1802(mState, false);
    mPendingSavedState = null;
    RecyclerView.State localState = mState;
    if ((RecyclerView.State.access$2500(mState)) && (mItemAnimator != null)) {}
    for (boolean bool = true;; bool = false)
    {
      RecyclerView.State.access$2502(localState, bool);
      RecyclerView.State.access$2102(mState, 4);
      onExitLayoutOrScroll();
      resumeRequestLayout(false);
      return;
    }
  }
  
  private void dispatchLayoutStep3()
  {
    mState.assertLayoutStep(4);
    eatRequestLayout();
    onEnterLayoutOrScroll();
    RecyclerView.State.access$2102(mState, 1);
    if (RecyclerView.State.access$2500(mState))
    {
      int i = mChildHelper.getChildCount() - 1;
      if (i >= 0)
      {
        RecyclerView.ViewHolder localViewHolder1 = getChildViewHolderInt(mChildHelper.getChildAt(i));
        if (localViewHolder1.shouldIgnore()) {}
        for (;;)
        {
          i -= 1;
          break;
          long l = getChangedHolderKey(localViewHolder1);
          RecyclerView.ItemAnimator.ItemHolderInfo localItemHolderInfo2 = mItemAnimator.recordPostLayoutInformation(mState, localViewHolder1);
          RecyclerView.ViewHolder localViewHolder2 = mViewInfoStore.getFromOldChangeHolders(l);
          if ((localViewHolder2 != null) && (!localViewHolder2.shouldIgnore()))
          {
            boolean bool1 = mViewInfoStore.isDisappearing(localViewHolder2);
            boolean bool2 = mViewInfoStore.isDisappearing(localViewHolder1);
            if ((bool1) && (localViewHolder2 == localViewHolder1))
            {
              mViewInfoStore.addToPostLayout(localViewHolder1, localItemHolderInfo2);
            }
            else
            {
              RecyclerView.ItemAnimator.ItemHolderInfo localItemHolderInfo1 = mViewInfoStore.popFromPreLayout(localViewHolder2);
              mViewInfoStore.addToPostLayout(localViewHolder1, localItemHolderInfo2);
              localItemHolderInfo2 = mViewInfoStore.popFromPostLayout(localViewHolder1);
              if (localItemHolderInfo1 == null) {
                handleMissingPreInfoForChangeError(l, localViewHolder1, localViewHolder2);
              } else {
                animateChange(localViewHolder2, localViewHolder1, localItemHolderInfo1, localItemHolderInfo2, bool1, bool2);
              }
            }
          }
          else
          {
            mViewInfoStore.addToPostLayout(localViewHolder1, localItemHolderInfo2);
          }
        }
      }
      mViewInfoStore.process(mViewInfoProcessCallback);
    }
    mLayout.removeAndRecycleScrapInt(mRecycler);
    RecyclerView.State.access$2802(mState, mState.mItemCount);
    mDataSetHasChangedAfterLayout = false;
    RecyclerView.State.access$2502(mState, false);
    RecyclerView.State.access$2302(mState, false);
    RecyclerView.LayoutManager.access$2602(mLayout, false);
    if (RecyclerView.Recycler.access$2900(mRecycler) != null) {
      RecyclerView.Recycler.access$2900(mRecycler).clear();
    }
    onExitLayoutOrScroll();
    resumeRequestLayout(false);
    mViewInfoStore.clear();
    if (didChildRangeChange(mMinMaxLayoutPositions[0], mMinMaxLayoutPositions[1])) {
      dispatchOnScrolled(0, 0);
    }
  }
  
  private boolean dispatchOnItemTouch(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j;
    if (mActiveOnItemTouchListener != null)
    {
      if (i == 0) {
        mActiveOnItemTouchListener = null;
      }
    }
    else
    {
      if (i == 0) {
        break label108;
      }
      j = mOnItemTouchListeners.size();
      i = 0;
    }
    while (i < j)
    {
      RecyclerView.OnItemTouchListener localOnItemTouchListener = (RecyclerView.OnItemTouchListener)mOnItemTouchListeners.get(i);
      if (localOnItemTouchListener.onInterceptTouchEvent(this, paramMotionEvent))
      {
        mActiveOnItemTouchListener = localOnItemTouchListener;
        return true;
        mActiveOnItemTouchListener.onTouchEvent(this, paramMotionEvent);
        if ((i == 3) || (i == 1)) {
          mActiveOnItemTouchListener = null;
        }
        return true;
      }
      i += 1;
    }
    label108:
    return false;
  }
  
  private boolean dispatchOnItemTouchIntercept(MotionEvent paramMotionEvent)
  {
    int j = paramMotionEvent.getAction();
    if ((j == 3) || (j == 0)) {
      mActiveOnItemTouchListener = null;
    }
    int k = mOnItemTouchListeners.size();
    int i = 0;
    while (i < k)
    {
      RecyclerView.OnItemTouchListener localOnItemTouchListener = (RecyclerView.OnItemTouchListener)mOnItemTouchListeners.get(i);
      if ((localOnItemTouchListener.onInterceptTouchEvent(this, paramMotionEvent)) && (j != 3))
      {
        mActiveOnItemTouchListener = localOnItemTouchListener;
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private void findMinMaxChildLayoutPositions(int[] paramArrayOfInt)
  {
    int i1 = mChildHelper.getChildCount();
    if (i1 == 0)
    {
      paramArrayOfInt[0] = 0;
      paramArrayOfInt[1] = 0;
      return;
    }
    int i = Integer.MAX_VALUE;
    int m = Integer.MIN_VALUE;
    int k = 0;
    RecyclerView.ViewHolder localViewHolder;
    if (k < i1)
    {
      localViewHolder = getChildViewHolderInt(mChildHelper.getChildAt(k));
      if (!localViewHolder.shouldIgnore()) {}
    }
    for (;;)
    {
      k += 1;
      break;
      int n = localViewHolder.getLayoutPosition();
      int j = i;
      if (n < i) {
        j = n;
      }
      if (n > m)
      {
        m = n;
        i = j;
        continue;
        paramArrayOfInt[0] = i;
        paramArrayOfInt[1] = m;
      }
      else
      {
        i = j;
      }
    }
  }
  
  private int getAdapterPositionFor(RecyclerView.ViewHolder paramViewHolder)
  {
    if ((paramViewHolder.hasAnyOfTheFlags(524)) || (!paramViewHolder.isBound())) {
      return -1;
    }
    return mAdapterHelper.applyPendingUpdatesToPosition(mPosition);
  }
  
  static RecyclerView.ViewHolder getChildViewHolderInt(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return getLayoutParamsmViewHolder;
  }
  
  private String getFullClassName(Context paramContext, String paramString)
  {
    if (paramString.charAt(0) == '.') {
      paramContext = paramContext.getPackageName() + paramString;
    }
    do
    {
      return paramContext;
      paramContext = paramString;
    } while (paramString.contains("."));
    return RecyclerView.class.getPackage().getName() + '.' + paramString;
  }
  
  private float getScrollFactor()
  {
    if (mScrollFactor == Float.MIN_VALUE)
    {
      TypedValue localTypedValue = new TypedValue();
      if (getContext().getTheme().resolveAttribute(16842829, localTypedValue, true)) {
        mScrollFactor = localTypedValue.getDimension(getContext().getResources().getDisplayMetrics());
      }
    }
    else
    {
      return mScrollFactor;
    }
    return 0.0F;
  }
  
  private void handleMissingPreInfoForChangeError(long paramLong, RecyclerView.ViewHolder paramViewHolder1, RecyclerView.ViewHolder paramViewHolder2)
  {
    int j = mChildHelper.getChildCount();
    int i = 0;
    if (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getChildAt(i));
      if (localViewHolder == paramViewHolder1) {}
      while (getChangedHolderKey(localViewHolder) != paramLong)
      {
        i += 1;
        break;
      }
      if ((mAdapter != null) && (mAdapter.hasStableIds())) {
        throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + localViewHolder + " \n View Holder 2:" + paramViewHolder1);
      }
      throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + localViewHolder + " \n View Holder 2:" + paramViewHolder1);
    }
    Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + paramViewHolder2 + " cannot be found but it is necessary for " + paramViewHolder1);
  }
  
  private boolean hasUpdatedView()
  {
    boolean bool2 = false;
    int j = mChildHelper.getChildCount();
    int i = 0;
    boolean bool1 = bool2;
    if (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getChildAt(i));
      if ((localViewHolder == null) || (localViewHolder.shouldIgnore())) {}
      while (!localViewHolder.isUpdated())
      {
        i += 1;
        break;
      }
      bool1 = true;
    }
    return bool1;
  }
  
  private void initChildrenHelper()
  {
    mChildHelper = new ChildHelper(new RecyclerView.5(this));
  }
  
  private void jumpToPositionForSmoothScroller(int paramInt)
  {
    if (mLayout == null) {
      return;
    }
    mLayout.scrollToPosition(paramInt);
    awakenScrollBars();
  }
  
  private void onEnterLayoutOrScroll()
  {
    mLayoutOrScrollCounter += 1;
  }
  
  private void onExitLayoutOrScroll()
  {
    mLayoutOrScrollCounter -= 1;
    if (mLayoutOrScrollCounter < 1)
    {
      mLayoutOrScrollCounter = 0;
      dispatchContentChangedIfNecessary();
    }
  }
  
  private void onPointerUp(MotionEvent paramMotionEvent)
  {
    int i = bi.b(paramMotionEvent);
    if (bi.b(paramMotionEvent, i) == mScrollPointerId) {
      if (i != 0) {
        break label75;
      }
    }
    label75:
    for (i = 1;; i = 0)
    {
      mScrollPointerId = bi.b(paramMotionEvent, i);
      int j = (int)(bi.c(paramMotionEvent, i) + 0.5F);
      mLastTouchX = j;
      mInitialTouchX = j;
      i = (int)(bi.d(paramMotionEvent, i) + 0.5F);
      mLastTouchY = i;
      mInitialTouchY = i;
      return;
    }
  }
  
  private void postAnimationRunner()
  {
    if ((!mPostedAnimatorRunner) && (mIsAttached))
    {
      cn.a(this, mItemAnimatorRunner);
      mPostedAnimatorRunner = true;
    }
  }
  
  private boolean predictiveItemAnimationsEnabled()
  {
    return (mItemAnimator != null) && (mLayout.supportsPredictiveItemAnimations());
  }
  
  private void processAdapterUpdatesAndSetAnimationFlags()
  {
    boolean bool2 = true;
    if (mDataSetHasChangedAfterLayout)
    {
      mAdapterHelper.reset();
      markKnownViewsInvalid();
      mLayout.onItemsChanged(this);
    }
    int i;
    label58:
    RecyclerView.State localState;
    if (predictiveItemAnimationsEnabled())
    {
      mAdapterHelper.preProcess();
      if ((!mItemsAddedOrRemoved) && (!mItemsChanged)) {
        break label179;
      }
      i = 1;
      localState = mState;
      if ((!mFirstLayoutComplete) || (mItemAnimator == null) || ((!mDataSetHasChangedAfterLayout) && (i == 0) && (!RecyclerView.LayoutManager.access$2600(mLayout))) || ((mDataSetHasChangedAfterLayout) && (!mAdapter.hasStableIds()))) {
        break label184;
      }
      bool1 = true;
      label118:
      RecyclerView.State.access$2502(localState, bool1);
      localState = mState;
      if ((!RecyclerView.State.access$2500(mState)) || (i == 0) || (mDataSetHasChangedAfterLayout) || (!predictiveItemAnimationsEnabled())) {
        break label189;
      }
    }
    label179:
    label184:
    label189:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      RecyclerView.State.access$2302(localState, bool1);
      return;
      mAdapterHelper.consumeUpdatesInOnePass();
      break;
      i = 0;
      break label58;
      bool1 = false;
      break label118;
    }
  }
  
  private void pullGlows(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    int j = 1;
    int k = 0;
    int i;
    if (paramFloat2 < 0.0F)
    {
      ensureLeftGlow();
      i = k;
      if (mLeftGlow.a(-paramFloat2 / getWidth(), 1.0F - paramFloat3 / getHeight())) {
        i = 1;
      }
      if (paramFloat4 >= 0.0F) {
        break label158;
      }
      ensureTopGlow();
      if (!mTopGlow.a(-paramFloat4 / getHeight(), paramFloat1 / getWidth())) {
        break label196;
      }
    }
    for (;;)
    {
      if ((j != 0) || (paramFloat2 != 0.0F) || (paramFloat4 != 0.0F)) {
        cn.d(this);
      }
      return;
      i = k;
      if (paramFloat2 <= 0.0F) {
        break;
      }
      ensureRightGlow();
      i = k;
      if (!mRightGlow.a(paramFloat2 / getWidth(), paramFloat3 / getHeight())) {
        break;
      }
      i = 1;
      break;
      label158:
      if (paramFloat4 > 0.0F)
      {
        ensureBottomGlow();
        if (mBottomGlow.a(paramFloat4 / getHeight(), 1.0F - paramFloat1 / getWidth())) {}
      }
      else
      {
        label196:
        j = i;
      }
    }
  }
  
  private void recordAnimationInfoIfBouncedHiddenView(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo)
  {
    paramViewHolder.setFlags(0, 8192);
    if ((RecyclerView.State.access$2700(mState)) && (paramViewHolder.isUpdated()) && (!paramViewHolder.isRemoved()) && (!paramViewHolder.shouldIgnore()))
    {
      long l = getChangedHolderKey(paramViewHolder);
      mViewInfoStore.addToOldChangeHolders(l, paramViewHolder);
    }
    mViewInfoStore.addToPreLayout(paramViewHolder, paramItemHolderInfo);
  }
  
  private void releaseGlows()
  {
    boolean bool2 = false;
    if (mLeftGlow != null) {
      bool2 = mLeftGlow.c();
    }
    boolean bool1 = bool2;
    if (mTopGlow != null) {
      bool1 = bool2 | mTopGlow.c();
    }
    bool2 = bool1;
    if (mRightGlow != null) {
      bool2 = bool1 | mRightGlow.c();
    }
    bool1 = bool2;
    if (mBottomGlow != null) {
      bool1 = bool2 | mBottomGlow.c();
    }
    if (bool1) {
      cn.d(this);
    }
  }
  
  private boolean removeAnimatingView(View paramView)
  {
    eatRequestLayout();
    boolean bool2 = mChildHelper.removeViewIfHidden(paramView);
    if (bool2)
    {
      paramView = getChildViewHolderInt(paramView);
      mRecycler.unscrapView(paramView);
      mRecycler.recycleViewHolderInternal(paramView);
    }
    if (!bool2) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      resumeRequestLayout(bool1);
      return bool2;
    }
  }
  
  private void repositionShadowingViews()
  {
    int j = mChildHelper.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = mChildHelper.getChildAt(i);
      Object localObject = getChildViewHolder(localView);
      if ((localObject != null) && (mShadowingHolder != null))
      {
        localObject = mShadowingHolder.itemView;
        int k = localView.getLeft();
        int m = localView.getTop();
        if ((k != ((View)localObject).getLeft()) || (m != ((View)localObject).getTop())) {
          ((View)localObject).layout(k, m, ((View)localObject).getWidth() + k, ((View)localObject).getHeight() + m);
        }
      }
      i += 1;
    }
  }
  
  private void resetTouch()
  {
    if (mVelocityTracker != null) {
      mVelocityTracker.clear();
    }
    stopNestedScroll();
    releaseGlows();
  }
  
  private void setAdapterInternal(RecyclerView.Adapter paramAdapter, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (mAdapter != null)
    {
      mAdapter.unregisterAdapterDataObserver(mObserver);
      mAdapter.onDetachedFromRecyclerView(this);
    }
    if ((!paramBoolean1) || (paramBoolean2))
    {
      if (mItemAnimator != null) {
        mItemAnimator.endAnimations();
      }
      if (mLayout != null)
      {
        mLayout.removeAndRecycleAllViews(mRecycler);
        mLayout.removeAndRecycleScrapInt(mRecycler);
      }
      mRecycler.clear();
    }
    mAdapterHelper.reset();
    RecyclerView.Adapter localAdapter = mAdapter;
    mAdapter = paramAdapter;
    if (paramAdapter != null)
    {
      paramAdapter.registerAdapterDataObserver(mObserver);
      paramAdapter.onAttachedToRecyclerView(this);
    }
    if (mLayout != null) {
      mLayout.onAdapterChanged(localAdapter, mAdapter);
    }
    mRecycler.onAdapterChanged(localAdapter, mAdapter, paramBoolean1);
    RecyclerView.State.access$1802(mState, true);
    markKnownViewsInvalid();
  }
  
  private void setDataSetChangedAfterLayout()
  {
    if (mDataSetHasChangedAfterLayout) {
      return;
    }
    mDataSetHasChangedAfterLayout = true;
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.shouldIgnore())) {
        localViewHolder.addFlags(512);
      }
      i += 1;
    }
    mRecycler.setAdapterPositionsAsUnknown();
  }
  
  private void setScrollState(int paramInt)
  {
    if (paramInt == mScrollState) {
      return;
    }
    mScrollState = paramInt;
    if (paramInt != 2) {
      stopScrollersInternal();
    }
    dispatchOnScrollStateChanged(paramInt);
  }
  
  private void stopScrollersInternal()
  {
    mViewFlinger.stop();
    if (mLayout != null) {
      mLayout.stopSmoothScroller();
    }
  }
  
  void absorbGlows(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
    {
      ensureLeftGlow();
      mLeftGlow.a(-paramInt1);
      if (paramInt2 >= 0) {
        break label69;
      }
      ensureTopGlow();
      mTopGlow.a(-paramInt2);
    }
    for (;;)
    {
      if ((paramInt1 != 0) || (paramInt2 != 0)) {
        cn.d(this);
      }
      return;
      if (paramInt1 <= 0) {
        break;
      }
      ensureRightGlow();
      mRightGlow.a(paramInt1);
      break;
      label69:
      if (paramInt2 > 0)
      {
        ensureBottomGlow();
        mBottomGlow.a(paramInt2);
      }
    }
  }
  
  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    if ((mLayout == null) || (!mLayout.onAddFocusables(this, paramArrayList, paramInt1, paramInt2))) {
      super.addFocusables(paramArrayList, paramInt1, paramInt2);
    }
  }
  
  public void addItemDecoration(RecyclerView.ItemDecoration paramItemDecoration)
  {
    addItemDecoration(paramItemDecoration, -1);
  }
  
  public void addItemDecoration(RecyclerView.ItemDecoration paramItemDecoration, int paramInt)
  {
    if (mLayout != null) {
      mLayout.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
    }
    if (mItemDecorations.isEmpty()) {
      setWillNotDraw(false);
    }
    if (paramInt < 0) {
      mItemDecorations.add(paramItemDecoration);
    }
    for (;;)
    {
      markItemDecorInsetsDirty();
      requestLayout();
      return;
      mItemDecorations.add(paramInt, paramItemDecoration);
    }
  }
  
  public void addOnChildAttachStateChangeListener(RecyclerView.OnChildAttachStateChangeListener paramOnChildAttachStateChangeListener)
  {
    if (mOnChildAttachStateListeners == null) {
      mOnChildAttachStateListeners = new ArrayList();
    }
    mOnChildAttachStateListeners.add(paramOnChildAttachStateChangeListener);
  }
  
  public void addOnItemTouchListener(RecyclerView.OnItemTouchListener paramOnItemTouchListener)
  {
    mOnItemTouchListeners.add(paramOnItemTouchListener);
  }
  
  public void addOnScrollListener(RecyclerView.OnScrollListener paramOnScrollListener)
  {
    if (mScrollListeners == null) {
      mScrollListeners = new ArrayList();
    }
    mScrollListeners.add(paramOnScrollListener);
  }
  
  void assertInLayoutOrScroll(String paramString)
  {
    if (!isComputingLayout())
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method unless RecyclerView is computing a layout or scrolling");
      }
      throw new IllegalStateException(paramString);
    }
  }
  
  void assertNotInLayoutOrScroll(String paramString)
  {
    if (isComputingLayout())
    {
      if (paramString == null) {
        throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
      }
      throw new IllegalStateException(paramString);
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof RecyclerView.LayoutParams)) && (mLayout.checkLayoutParams((RecyclerView.LayoutParams)paramLayoutParams));
  }
  
  void clearOldPositions()
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if (!localViewHolder.shouldIgnore()) {
        localViewHolder.clearOldPosition();
      }
      i += 1;
    }
    mRecycler.clearOldPositions();
  }
  
  public void clearOnChildAttachStateChangeListeners()
  {
    if (mOnChildAttachStateListeners != null) {
      mOnChildAttachStateListeners.clear();
    }
  }
  
  public void clearOnScrollListeners()
  {
    if (mScrollListeners != null) {
      mScrollListeners.clear();
    }
  }
  
  public int computeHorizontalScrollExtent()
  {
    if (mLayout == null) {}
    while (!mLayout.canScrollHorizontally()) {
      return 0;
    }
    return mLayout.computeHorizontalScrollExtent(mState);
  }
  
  public int computeHorizontalScrollOffset()
  {
    if (mLayout == null) {}
    while (!mLayout.canScrollHorizontally()) {
      return 0;
    }
    return mLayout.computeHorizontalScrollOffset(mState);
  }
  
  public int computeHorizontalScrollRange()
  {
    if (mLayout == null) {}
    while (!mLayout.canScrollHorizontally()) {
      return 0;
    }
    return mLayout.computeHorizontalScrollRange(mState);
  }
  
  public int computeVerticalScrollExtent()
  {
    if (mLayout == null) {}
    while (!mLayout.canScrollVertically()) {
      return 0;
    }
    return mLayout.computeVerticalScrollExtent(mState);
  }
  
  public int computeVerticalScrollOffset()
  {
    if (mLayout == null) {}
    while (!mLayout.canScrollVertically()) {
      return 0;
    }
    return mLayout.computeVerticalScrollOffset(mState);
  }
  
  public int computeVerticalScrollRange()
  {
    if (mLayout == null) {}
    while (!mLayout.canScrollVertically()) {
      return 0;
    }
    return mLayout.computeVerticalScrollRange(mState);
  }
  
  void defaultOnMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(RecyclerView.LayoutManager.chooseSize(paramInt1, getPaddingLeft() + getPaddingRight(), cn.q(this)), RecyclerView.LayoutManager.chooseSize(paramInt2, getPaddingTop() + getPaddingBottom(), cn.r(this)));
  }
  
  void dispatchLayout()
  {
    if (mAdapter == null)
    {
      Log.e("RecyclerView", "No adapter attached; skipping layout");
      return;
    }
    if (mLayout == null)
    {
      Log.e("RecyclerView", "No layout manager attached; skipping layout");
      return;
    }
    RecyclerView.State.access$2202(mState, false);
    if (RecyclerView.State.access$2100(mState) == 1)
    {
      dispatchLayoutStep1();
      mLayout.setExactMeasureSpecsFrom(this);
      dispatchLayoutStep2();
    }
    for (;;)
    {
      dispatchLayoutStep3();
      return;
      if ((mAdapterHelper.hasUpdates()) || (mLayout.getWidth() != getWidth()) || (mLayout.getHeight() != getHeight()))
      {
        mLayout.setExactMeasureSpecsFrom(this);
        dispatchLayoutStep2();
      }
      else
      {
        mLayout.setExactMeasureSpecsFrom(this);
      }
    }
  }
  
  public boolean dispatchNestedFling(float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return mScrollingChildHelper.a(paramFloat1, paramFloat2, paramBoolean);
  }
  
  public boolean dispatchNestedPreFling(float paramFloat1, float paramFloat2)
  {
    return mScrollingChildHelper.a(paramFloat1, paramFloat2);
  }
  
  public boolean dispatchNestedPreScroll(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
  {
    return mScrollingChildHelper.a(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
  }
  
  public boolean dispatchNestedScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
  {
    return mScrollingChildHelper.a(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
  }
  
  void dispatchOnScrollStateChanged(int paramInt)
  {
    if (mLayout != null) {
      mLayout.onScrollStateChanged(paramInt);
    }
    onScrollStateChanged(paramInt);
    if (mScrollListener != null) {
      mScrollListener.onScrollStateChanged(this, paramInt);
    }
    if (mScrollListeners != null)
    {
      int i = mScrollListeners.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.OnScrollListener)mScrollListeners.get(i)).onScrollStateChanged(this, paramInt);
        i -= 1;
      }
    }
  }
  
  void dispatchOnScrolled(int paramInt1, int paramInt2)
  {
    int i = getScrollX();
    int j = getScrollY();
    onScrollChanged(i, j, i, j);
    onScrolled(paramInt1, paramInt2);
    if (mScrollListener != null) {
      mScrollListener.onScrolled(this, paramInt1, paramInt2);
    }
    if (mScrollListeners != null)
    {
      i = mScrollListeners.size() - 1;
      while (i >= 0)
      {
        ((RecyclerView.OnScrollListener)mScrollListeners.get(i)).onScrolled(this, paramInt1, paramInt2);
        i -= 1;
      }
    }
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public void draw(Canvas paramCanvas)
  {
    int k = 1;
    int m = 0;
    super.draw(paramCanvas);
    int j = mItemDecorations.size();
    int i = 0;
    while (i < j)
    {
      ((RecyclerView.ItemDecoration)mItemDecorations.get(i)).onDrawOver(paramCanvas, this, mState);
      i += 1;
    }
    int n;
    if ((mLeftGlow != null) && (!mLeftGlow.a()))
    {
      n = paramCanvas.save();
      if (mClipToPadding)
      {
        i = getPaddingBottom();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(i + -getHeight(), 0.0F);
        if ((mLeftGlow == null) || (!mLeftGlow.a(paramCanvas))) {
          break label456;
        }
        j = 1;
        label128:
        paramCanvas.restoreToCount(n);
      }
    }
    for (;;)
    {
      i = j;
      if (mTopGlow != null)
      {
        i = j;
        if (!mTopGlow.a())
        {
          n = paramCanvas.save();
          if (mClipToPadding) {
            paramCanvas.translate(getPaddingLeft(), getPaddingTop());
          }
          if ((mTopGlow == null) || (!mTopGlow.a(paramCanvas))) {
            break label461;
          }
          i = 1;
          label202:
          i = j | i;
          paramCanvas.restoreToCount(n);
        }
      }
      j = i;
      if (mRightGlow != null)
      {
        j = i;
        if (!mRightGlow.a())
        {
          n = paramCanvas.save();
          int i1 = getWidth();
          if (!mClipToPadding) {
            break label466;
          }
          j = getPaddingTop();
          label257:
          paramCanvas.rotate(90.0F);
          paramCanvas.translate(-j, -i1);
          if ((mRightGlow == null) || (!mRightGlow.a(paramCanvas))) {
            break label471;
          }
          j = 1;
          label295:
          j = i | j;
          paramCanvas.restoreToCount(n);
        }
      }
      i = j;
      if (mBottomGlow != null)
      {
        i = j;
        if (!mBottomGlow.a())
        {
          n = paramCanvas.save();
          paramCanvas.rotate(180.0F);
          if (!mClipToPadding) {
            break label476;
          }
          paramCanvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
          label372:
          i = m;
          if (mBottomGlow != null)
          {
            i = m;
            if (mBottomGlow.a(paramCanvas)) {
              i = 1;
            }
          }
          i = j | i;
          paramCanvas.restoreToCount(n);
        }
      }
      if ((i == 0) && (mItemAnimator != null) && (mItemDecorations.size() > 0) && (mItemAnimator.isRunning())) {
        i = k;
      }
      for (;;)
      {
        if (i != 0) {
          cn.d(this);
        }
        return;
        i = 0;
        break;
        label456:
        j = 0;
        break label128;
        label461:
        i = 0;
        break label202;
        label466:
        j = 0;
        break label257;
        label471:
        j = 0;
        break label295;
        label476:
        paramCanvas.translate(-getWidth(), -getHeight());
        break label372;
      }
      j = 0;
    }
  }
  
  public boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  void eatRequestLayout()
  {
    mEatRequestLayout += 1;
    if ((mEatRequestLayout == 1) && (!mLayoutFrozen)) {
      mLayoutRequestEaten = false;
    }
  }
  
  void ensureBottomGlow()
  {
    if (mBottomGlow != null) {
      return;
    }
    mBottomGlow = new ai(getContext());
    if (mClipToPadding)
    {
      mBottomGlow.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    mBottomGlow.a(getMeasuredWidth(), getMeasuredHeight());
  }
  
  void ensureLeftGlow()
  {
    if (mLeftGlow != null) {
      return;
    }
    mLeftGlow = new ai(getContext());
    if (mClipToPadding)
    {
      mLeftGlow.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    mLeftGlow.a(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void ensureRightGlow()
  {
    if (mRightGlow != null) {
      return;
    }
    mRightGlow = new ai(getContext());
    if (mClipToPadding)
    {
      mRightGlow.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
      return;
    }
    mRightGlow.a(getMeasuredHeight(), getMeasuredWidth());
  }
  
  void ensureTopGlow()
  {
    if (mTopGlow != null) {
      return;
    }
    mTopGlow = new ai(getContext());
    if (mClipToPadding)
    {
      mTopGlow.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
      return;
    }
    mTopGlow.a(getMeasuredWidth(), getMeasuredHeight());
  }
  
  public View findChildViewUnder(float paramFloat1, float paramFloat2)
  {
    int i = mChildHelper.getChildCount() - 1;
    while (i >= 0)
    {
      View localView = mChildHelper.getChildAt(i);
      float f1 = cn.o(localView);
      float f2 = cn.p(localView);
      if ((paramFloat1 >= localView.getLeft() + f1) && (paramFloat1 <= f1 + localView.getRight()) && (paramFloat2 >= localView.getTop() + f2) && (paramFloat2 <= localView.getBottom() + f2)) {
        return localView;
      }
      i -= 1;
    }
    return null;
  }
  
  public View findContainingItemView(View paramView)
  {
    for (ViewParent localViewParent = paramView.getParent(); (localViewParent != null) && (localViewParent != this) && ((localViewParent instanceof View)); localViewParent = paramView.getParent()) {
      paramView = (View)localViewParent;
    }
    if (localViewParent == this) {
      return paramView;
    }
    return null;
  }
  
  public RecyclerView.ViewHolder findContainingViewHolder(View paramView)
  {
    paramView = findContainingItemView(paramView);
    if (paramView == null) {
      return null;
    }
    return getChildViewHolder(paramView);
  }
  
  public RecyclerView.ViewHolder findViewHolderForAdapterPosition(int paramInt)
  {
    if (mDataSetHasChangedAfterLayout) {}
    for (;;)
    {
      return null;
      int j = mChildHelper.getUnfilteredChildCount();
      int i = 0;
      while (i < j)
      {
        RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
        if ((localViewHolder != null) && (!localViewHolder.isRemoved()) && (getAdapterPositionFor(localViewHolder) == paramInt)) {
          return localViewHolder;
        }
        i += 1;
      }
    }
  }
  
  public RecyclerView.ViewHolder findViewHolderForItemId(long paramLong)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (localViewHolder.getItemId() == paramLong)) {
        return localViewHolder;
      }
      i += 1;
    }
    return null;
  }
  
  public RecyclerView.ViewHolder findViewHolderForLayoutPosition(int paramInt)
  {
    return findViewHolderForPosition(paramInt, false);
  }
  
  @Deprecated
  public RecyclerView.ViewHolder findViewHolderForPosition(int paramInt)
  {
    return findViewHolderForPosition(paramInt, false);
  }
  
  RecyclerView.ViewHolder findViewHolderForPosition(int paramInt, boolean paramBoolean)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.isRemoved())) {
        if (paramBoolean)
        {
          if (mPosition != paramInt) {}
        }
        else {
          while (localViewHolder.getLayoutPosition() == paramInt) {
            return localViewHolder;
          }
        }
      }
      i += 1;
    }
    return null;
  }
  
  public boolean fling(int paramInt1, int paramInt2)
  {
    if (mLayout == null) {
      Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    boolean bool2;
    int i;
    do
    {
      do
      {
        return false;
      } while (mLayoutFrozen);
      bool1 = mLayout.canScrollHorizontally();
      bool2 = mLayout.canScrollVertically();
      if (bool1)
      {
        i = paramInt1;
        if (Math.abs(paramInt1) >= mMinFlingVelocity) {}
      }
      else
      {
        i = 0;
      }
      if (bool2)
      {
        paramInt1 = paramInt2;
        if (Math.abs(paramInt2) >= mMinFlingVelocity) {}
      }
      else
      {
        paramInt1 = 0;
      }
    } while (((i == 0) && (paramInt1 == 0)) || (dispatchNestedPreFling(i, paramInt1)));
    if ((bool1) || (bool2)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      dispatchNestedFling(i, paramInt1, bool1);
      if (!bool1) {
        break;
      }
      paramInt2 = Math.max(-mMaxFlingVelocity, Math.min(i, mMaxFlingVelocity));
      paramInt1 = Math.max(-mMaxFlingVelocity, Math.min(paramInt1, mMaxFlingVelocity));
      mViewFlinger.fling(paramInt2, paramInt1);
      return true;
    }
  }
  
  public View focusSearch(View paramView, int paramInt)
  {
    Object localObject2 = mLayout.onInterceptFocusSearch(paramView, paramInt);
    if (localObject2 != null) {}
    Object localObject1;
    do
    {
      return (View)localObject2;
      localObject2 = FocusFinder.getInstance().findNextFocus(this, paramView, paramInt);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = localObject2;
        if (mAdapter != null)
        {
          localObject1 = localObject2;
          if (mLayout != null)
          {
            localObject1 = localObject2;
            if (!isComputingLayout())
            {
              localObject1 = localObject2;
              if (!mLayoutFrozen)
              {
                eatRequestLayout();
                localObject1 = mLayout.onFocusSearchFailed(paramView, paramInt, mRecycler, mState);
                resumeRequestLayout(false);
              }
            }
          }
        }
      }
      localObject2 = localObject1;
    } while (localObject1 != null);
    return super.focusSearch(paramView, paramInt);
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    if (mLayout == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return mLayout.generateDefaultLayoutParams();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    if (mLayout == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return mLayout.generateLayoutParams(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (mLayout == null) {
      throw new IllegalStateException("RecyclerView has no LayoutManager");
    }
    return mLayout.generateLayoutParams(paramLayoutParams);
  }
  
  public RecyclerView.Adapter getAdapter()
  {
    return mAdapter;
  }
  
  public int getBaseline()
  {
    if (mLayout != null) {
      return mLayout.getBaseline();
    }
    return super.getBaseline();
  }
  
  long getChangedHolderKey(RecyclerView.ViewHolder paramViewHolder)
  {
    if (mAdapter.hasStableIds()) {
      return paramViewHolder.getItemId();
    }
    return mPosition;
  }
  
  public int getChildAdapterPosition(View paramView)
  {
    paramView = getChildViewHolderInt(paramView);
    if (paramView != null) {
      return paramView.getAdapterPosition();
    }
    return -1;
  }
  
  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (mChildDrawingOrderCallback == null) {
      return super.getChildDrawingOrder(paramInt1, paramInt2);
    }
    return mChildDrawingOrderCallback.onGetChildDrawingOrder(paramInt1, paramInt2);
  }
  
  public long getChildItemId(View paramView)
  {
    if ((mAdapter == null) || (!mAdapter.hasStableIds())) {}
    do
    {
      return -1L;
      paramView = getChildViewHolderInt(paramView);
    } while (paramView == null);
    return paramView.getItemId();
  }
  
  public int getChildLayoutPosition(View paramView)
  {
    paramView = getChildViewHolderInt(paramView);
    if (paramView != null) {
      return paramView.getLayoutPosition();
    }
    return -1;
  }
  
  @Deprecated
  public int getChildPosition(View paramView)
  {
    return getChildAdapterPosition(paramView);
  }
  
  public RecyclerView.ViewHolder getChildViewHolder(View paramView)
  {
    ViewParent localViewParent = paramView.getParent();
    if ((localViewParent != null) && (localViewParent != this)) {
      throw new IllegalArgumentException("View " + paramView + " is not a direct child of " + this);
    }
    return getChildViewHolderInt(paramView);
  }
  
  public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate()
  {
    return mAccessibilityDelegate;
  }
  
  public RecyclerView.ItemAnimator getItemAnimator()
  {
    return mItemAnimator;
  }
  
  Rect getItemDecorInsetsForChild(View paramView)
  {
    RecyclerView.LayoutParams localLayoutParams = (RecyclerView.LayoutParams)paramView.getLayoutParams();
    if (!mInsetsDirty) {
      return mDecorInsets;
    }
    Rect localRect = mDecorInsets;
    localRect.set(0, 0, 0, 0);
    int j = mItemDecorations.size();
    int i = 0;
    while (i < j)
    {
      mTempRect.set(0, 0, 0, 0);
      ((RecyclerView.ItemDecoration)mItemDecorations.get(i)).getItemOffsets(mTempRect, paramView, this, mState);
      left += mTempRect.left;
      top += mTempRect.top;
      right += mTempRect.right;
      bottom += mTempRect.bottom;
      i += 1;
    }
    mInsetsDirty = false;
    return localRect;
  }
  
  public RecyclerView.LayoutManager getLayoutManager()
  {
    return mLayout;
  }
  
  public int getMaxFlingVelocity()
  {
    return mMaxFlingVelocity;
  }
  
  public int getMinFlingVelocity()
  {
    return mMinFlingVelocity;
  }
  
  public RecyclerView.RecycledViewPool getRecycledViewPool()
  {
    return mRecycler.getRecycledViewPool();
  }
  
  public int getScrollState()
  {
    return mScrollState;
  }
  
  public boolean hasFixedSize()
  {
    return mHasFixedSize;
  }
  
  public boolean hasNestedScrollingParent()
  {
    return mScrollingChildHelper.b();
  }
  
  public boolean hasPendingAdapterUpdates()
  {
    return (!mFirstLayoutComplete) || (mDataSetHasChangedAfterLayout) || (mAdapterHelper.hasPendingUpdates());
  }
  
  void initAdapterManager()
  {
    mAdapterHelper = new AdapterHelper(new RecyclerView.6(this));
  }
  
  void invalidateGlows()
  {
    mBottomGlow = null;
    mTopGlow = null;
    mRightGlow = null;
    mLeftGlow = null;
  }
  
  public void invalidateItemDecorations()
  {
    if (mItemDecorations.size() == 0) {
      return;
    }
    if (mLayout != null) {
      mLayout.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
    }
    markItemDecorInsetsDirty();
    requestLayout();
  }
  
  boolean isAccessibilityEnabled()
  {
    return (mAccessibilityManager != null) && (mAccessibilityManager.isEnabled());
  }
  
  public boolean isAnimating()
  {
    return (mItemAnimator != null) && (mItemAnimator.isRunning());
  }
  
  public boolean isAttachedToWindow()
  {
    return mIsAttached;
  }
  
  public boolean isComputingLayout()
  {
    return mLayoutOrScrollCounter > 0;
  }
  
  public boolean isLayoutFrozen()
  {
    return mLayoutFrozen;
  }
  
  public boolean isNestedScrollingEnabled()
  {
    return mScrollingChildHelper.a();
  }
  
  void markItemDecorInsetsDirty()
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      mChildHelper.getUnfilteredChildAt(i).getLayoutParams()).mInsetsDirty = true;
      i += 1;
    }
    mRecycler.markItemDecorInsetsDirty();
  }
  
  void markKnownViewsInvalid()
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.shouldIgnore())) {
        localViewHolder.addFlags(6);
      }
      i += 1;
    }
    markItemDecorInsetsDirty();
    mRecycler.markKnownViewsInvalid();
  }
  
  public void offsetChildrenHorizontal(int paramInt)
  {
    int j = mChildHelper.getChildCount();
    int i = 0;
    while (i < j)
    {
      mChildHelper.getChildAt(i).offsetLeftAndRight(paramInt);
      i += 1;
    }
  }
  
  public void offsetChildrenVertical(int paramInt)
  {
    int j = mChildHelper.getChildCount();
    int i = 0;
    while (i < j)
    {
      mChildHelper.getChildAt(i).offsetTopAndBottom(paramInt);
      i += 1;
    }
  }
  
  void offsetPositionRecordsForInsert(int paramInt1, int paramInt2)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.shouldIgnore()) && (mPosition >= paramInt1))
      {
        localViewHolder.offsetPosition(paramInt2, false);
        RecyclerView.State.access$1802(mState, true);
      }
      i += 1;
    }
    mRecycler.offsetPositionRecordsForInsert(paramInt1, paramInt2);
    requestLayout();
  }
  
  void offsetPositionRecordsForMove(int paramInt1, int paramInt2)
  {
    int n = mChildHelper.getUnfilteredChildCount();
    int i;
    int j;
    if (paramInt1 < paramInt2)
    {
      i = -1;
      j = paramInt2;
    }
    RecyclerView.ViewHolder localViewHolder;
    for (int k = paramInt1;; k = paramInt2)
    {
      int m = 0;
      for (;;)
      {
        if (m >= n) {
          break label131;
        }
        localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(m));
        if ((localViewHolder != null) && (mPosition >= k) && (mPosition <= j)) {
          break;
        }
        m += 1;
      }
      i = 1;
      j = paramInt1;
    }
    if (mPosition == paramInt1) {
      localViewHolder.offsetPosition(paramInt2 - paramInt1, false);
    }
    for (;;)
    {
      RecyclerView.State.access$1802(mState, true);
      break;
      localViewHolder.offsetPosition(i, false);
    }
    label131:
    mRecycler.offsetPositionRecordsForMove(paramInt1, paramInt2);
    requestLayout();
  }
  
  void offsetPositionRecordsForRemove(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    if (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if ((localViewHolder != null) && (!localViewHolder.shouldIgnore()))
      {
        if (mPosition < paramInt1 + paramInt2) {
          break label83;
        }
        localViewHolder.offsetPosition(-paramInt2, paramBoolean);
        RecyclerView.State.access$1802(mState, true);
      }
      for (;;)
      {
        i += 1;
        break;
        label83:
        if (mPosition >= paramInt1)
        {
          localViewHolder.flagRemovedAndOffsetPosition(paramInt1 - 1, -paramInt2, paramBoolean);
          RecyclerView.State.access$1802(mState, true);
        }
      }
    }
    mRecycler.offsetPositionRecordsForRemove(paramInt1, paramInt2, paramBoolean);
    requestLayout();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    mLayoutOrScrollCounter = 0;
    mIsAttached = true;
    mFirstLayoutComplete = false;
    if (mLayout != null) {
      mLayout.dispatchAttachedToWindow(this);
    }
    mPostedAnimatorRunner = false;
  }
  
  public void onChildAttachedToWindow(View paramView) {}
  
  public void onChildDetachedFromWindow(View paramView) {}
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (mItemAnimator != null) {
      mItemAnimator.endAnimations();
    }
    mFirstLayoutComplete = false;
    stopScroll();
    mIsAttached = false;
    if (mLayout != null) {
      mLayout.dispatchDetachedFromWindow(this, mRecycler);
    }
    removeCallbacks(mItemAnimatorRunner);
    mViewInfoStore.onDetach();
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    int j = mItemDecorations.size();
    int i = 0;
    while (i < j)
    {
      ((RecyclerView.ItemDecoration)mItemDecorations.get(i)).onDraw(paramCanvas, this, mState);
      i += 1;
    }
  }
  
  public boolean onGenericMotionEvent(MotionEvent paramMotionEvent)
  {
    if (mLayout == null) {}
    label110:
    label113:
    for (;;)
    {
      return false;
      if ((!mLayoutFrozen) && ((bi.d(paramMotionEvent) & 0x2) != 0) && (paramMotionEvent.getAction() == 8))
      {
        float f1;
        if (mLayout.canScrollVertically())
        {
          f1 = -bi.e(paramMotionEvent, 9);
          if (!mLayout.canScrollHorizontally()) {
            break label110;
          }
        }
        for (float f2 = bi.e(paramMotionEvent, 10);; f2 = 0.0F)
        {
          if ((f1 == 0.0F) && (f2 == 0.0F)) {
            break label113;
          }
          float f3 = getScrollFactor();
          scrollByInternal((int)(f2 * f3), (int)(f1 * f3), paramMotionEvent);
          return false;
          f1 = 0.0F;
          break;
        }
      }
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int k = -1;
    boolean bool1 = true;
    if (mLayoutFrozen) {}
    do
    {
      return false;
      if (dispatchOnItemTouchIntercept(paramMotionEvent))
      {
        cancelTouch();
        return true;
      }
    } while (mLayout == null);
    boolean bool2 = mLayout.canScrollHorizontally();
    boolean bool3 = mLayout.canScrollVertically();
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain();
    }
    mVelocityTracker.addMovement(paramMotionEvent);
    int j = bi.a(paramMotionEvent);
    int i = bi.b(paramMotionEvent);
    switch (j)
    {
    case 4: 
    default: 
      if (mScrollState == 1) {
        return bool1;
      }
      break;
    case 0: 
      label136:
      if (mIgnoreMotionEventTillDown) {
        mIgnoreMotionEventTillDown = false;
      }
      mScrollPointerId = bi.b(paramMotionEvent, 0);
      i = (int)(paramMotionEvent.getX() + 0.5F);
      mLastTouchX = i;
      mInitialTouchX = i;
      i = (int)(paramMotionEvent.getY() + 0.5F);
      mLastTouchY = i;
      mInitialTouchY = i;
      if (mScrollState == 2)
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        setScrollState(1);
      }
      paramMotionEvent = mNestedOffsets;
      mNestedOffsets[1] = 0;
      paramMotionEvent[0] = 0;
      if (!bool2) {}
      break;
    }
    for (i = 1;; i = 0)
    {
      j = i;
      if (bool3) {
        j = i | 0x2;
      }
      startNestedScroll(j);
      break;
      mScrollPointerId = bi.b(paramMotionEvent, i);
      j = (int)(bi.c(paramMotionEvent, i) + 0.5F);
      mLastTouchX = j;
      mInitialTouchX = j;
      i = (int)(bi.d(paramMotionEvent, i) + 0.5F);
      mLastTouchY = i;
      mInitialTouchY = i;
      break;
      j = bi.a(paramMotionEvent, mScrollPointerId);
      if (j < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + mScrollPointerId + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      i = (int)(bi.c(paramMotionEvent, j) + 0.5F);
      j = (int)(bi.d(paramMotionEvent, j) + 0.5F);
      if (mScrollState == 1) {
        break;
      }
      i -= mInitialTouchX;
      int m = j - mInitialTouchY;
      int n;
      if ((bool2) && (Math.abs(i) > mTouchSlop))
      {
        j = mInitialTouchX;
        n = mTouchSlop;
        if (i < 0)
        {
          i = -1;
          label448:
          mLastTouchX = (i * n + j);
        }
      }
      for (i = 1;; i = 0)
      {
        j = i;
        if (bool3)
        {
          j = i;
          if (Math.abs(m) > mTouchSlop)
          {
            j = mInitialTouchY;
            n = mTouchSlop;
            if (m >= 0) {
              break label529;
            }
          }
        }
        label529:
        for (i = k;; i = 1)
        {
          mLastTouchY = (j + i * n);
          j = 1;
          if (j == 0) {
            break;
          }
          setScrollState(1);
          break;
          i = 1;
          break label448;
        }
        onPointerUp(paramMotionEvent);
        break;
        mVelocityTracker.clear();
        stopNestedScroll();
        break;
        cancelTouch();
        break;
        bool1 = false;
        break label136;
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    n.a("RV OnLayout");
    dispatchLayout();
    n.a();
    mFirstLayoutComplete = true;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int j = 0;
    if (mLayout == null) {
      defaultOnMeasure(paramInt1, paramInt2);
    }
    do
    {
      int i;
      do
      {
        return;
        if (!RecyclerView.LayoutManager.access$2000(mLayout)) {
          break;
        }
        int k = View.MeasureSpec.getMode(paramInt1);
        int m = View.MeasureSpec.getMode(paramInt2);
        i = j;
        if (k == 1073741824)
        {
          i = j;
          if (m == 1073741824) {
            i = 1;
          }
        }
        mLayout.onMeasure(mRecycler, mState, paramInt1, paramInt2);
      } while ((i != 0) || (mAdapter == null));
      if (RecyclerView.State.access$2100(mState) == 1) {
        dispatchLayoutStep1();
      }
      mLayout.setMeasureSpecs(paramInt1, paramInt2);
      RecyclerView.State.access$2202(mState, true);
      dispatchLayoutStep2();
      mLayout.setMeasuredDimensionFromChildren(paramInt1, paramInt2);
    } while (!mLayout.shouldMeasureTwice());
    mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
    RecyclerView.State.access$2202(mState, true);
    dispatchLayoutStep2();
    mLayout.setMeasuredDimensionFromChildren(paramInt1, paramInt2);
    return;
    if (mHasFixedSize)
    {
      mLayout.onMeasure(mRecycler, mState, paramInt1, paramInt2);
      return;
    }
    if (mAdapterUpdateDuringMeasure)
    {
      eatRequestLayout();
      processAdapterUpdatesAndSetAnimationFlags();
      if (RecyclerView.State.access$2300(mState))
      {
        RecyclerView.State.access$2402(mState, true);
        mAdapterUpdateDuringMeasure = false;
        resumeRequestLayout(false);
      }
    }
    else
    {
      if (mAdapter == null) {
        break label342;
      }
    }
    label342:
    for (mState.mItemCount = mAdapter.getItemCount();; mState.mItemCount = 0)
    {
      eatRequestLayout();
      mLayout.onMeasure(mRecycler, mState, paramInt1, paramInt2);
      resumeRequestLayout(false);
      RecyclerView.State.access$2402(mState, false);
      return;
      mAdapterHelper.consumeUpdatesInOnePass();
      RecyclerView.State.access$2402(mState, false);
      break;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    mPendingSavedState = ((RecyclerView.SavedState)paramParcelable);
    super.onRestoreInstanceState(mPendingSavedState.getSuperState());
    if ((mLayout != null) && (mPendingSavedState.mLayoutState != null)) {
      mLayout.onRestoreInstanceState(mPendingSavedState.mLayoutState);
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    RecyclerView.SavedState localSavedState = new RecyclerView.SavedState(super.onSaveInstanceState());
    if (mPendingSavedState != null)
    {
      RecyclerView.SavedState.access$1900(localSavedState, mPendingSavedState);
      return localSavedState;
    }
    if (mLayout != null)
    {
      mLayoutState = mLayout.onSaveInstanceState();
      return localSavedState;
    }
    mLayoutState = null;
    return localSavedState;
  }
  
  public void onScrollStateChanged(int paramInt) {}
  
  public void onScrolled(int paramInt1, int paramInt2) {}
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      invalidateGlows();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i2 = 0;
    if ((mLayoutFrozen) || (mIgnoreMotionEventTillDown)) {}
    do
    {
      return false;
      if (dispatchOnItemTouch(paramMotionEvent))
      {
        cancelTouch();
        return true;
      }
    } while (mLayout == null);
    boolean bool1 = mLayout.canScrollHorizontally();
    boolean bool2 = mLayout.canScrollVertically();
    if (mVelocityTracker == null) {
      mVelocityTracker = VelocityTracker.obtain();
    }
    MotionEvent localMotionEvent = MotionEvent.obtain(paramMotionEvent);
    int k = bi.a(paramMotionEvent);
    int j = bi.b(paramMotionEvent);
    if (k == 0)
    {
      int[] arrayOfInt = mNestedOffsets;
      mNestedOffsets[1] = 0;
      arrayOfInt[0] = 0;
    }
    localMotionEvent.offsetLocation(mNestedOffsets[0], mNestedOffsets[1]);
    int i = i2;
    switch (k)
    {
    default: 
      i = i2;
    case 4: 
      if (i == 0) {
        mVelocityTracker.addMovement(localMotionEvent);
      }
      localMotionEvent.recycle();
      return true;
    case 0: 
      mScrollPointerId = bi.b(paramMotionEvent, 0);
      i = (int)(paramMotionEvent.getX() + 0.5F);
      mLastTouchX = i;
      mInitialTouchX = i;
      i = (int)(paramMotionEvent.getY() + 0.5F);
      mLastTouchY = i;
      mInitialTouchY = i;
      if (!bool1) {
        break;
      }
    }
    for (i = 1;; i = 0)
    {
      j = i;
      if (bool2) {
        j = i | 0x2;
      }
      startNestedScroll(j);
      i = i2;
      break;
      mScrollPointerId = bi.b(paramMotionEvent, j);
      i = (int)(bi.c(paramMotionEvent, j) + 0.5F);
      mLastTouchX = i;
      mInitialTouchX = i;
      i = (int)(bi.d(paramMotionEvent, j) + 0.5F);
      mLastTouchY = i;
      mInitialTouchY = i;
      i = i2;
      break;
      i = bi.a(paramMotionEvent, mScrollPointerId);
      if (i < 0)
      {
        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + mScrollPointerId + " not found. Did any MotionEvents get skipped?");
        return false;
      }
      int i3 = (int)(bi.c(paramMotionEvent, i) + 0.5F);
      int i4 = (int)(bi.d(paramMotionEvent, i) + 0.5F);
      int m = mLastTouchX - i3;
      k = mLastTouchY - i4;
      i = k;
      j = m;
      if (dispatchNestedPreScroll(m, k, mScrollConsumed, mScrollOffset))
      {
        j = m - mScrollConsumed[0];
        i = k - mScrollConsumed[1];
        localMotionEvent.offsetLocation(mScrollOffset[0], mScrollOffset[1]);
        paramMotionEvent = mNestedOffsets;
        paramMotionEvent[0] += mScrollOffset[0];
        paramMotionEvent = mNestedOffsets;
        paramMotionEvent[1] += mScrollOffset[1];
      }
      k = i;
      m = j;
      if (mScrollState != 1)
      {
        if ((!bool1) || (Math.abs(j) <= mTouchSlop)) {
          break label939;
        }
        if (j <= 0) {
          break label772;
        }
        j -= mTouchSlop;
      }
      label611:
      label661:
      label733:
      label772:
      label784:
      label802:
      label862:
      label923:
      label939:
      for (k = 1;; k = 0)
      {
        int n = i;
        int i1 = k;
        if (bool2)
        {
          n = i;
          i1 = k;
          if (Math.abs(i) > mTouchSlop)
          {
            if (i <= 0) {
              break label784;
            }
            n = i - mTouchSlop;
            i1 = 1;
          }
        }
        k = n;
        m = j;
        if (i1 != 0)
        {
          setScrollState(1);
          m = j;
          k = n;
        }
        i = i2;
        if (mScrollState != 1) {
          break;
        }
        mLastTouchX = (i3 - mScrollOffset[0]);
        mLastTouchY = (i4 - mScrollOffset[1]);
        if (bool1) {
          if (!bool2) {
            break label802;
          }
        }
        for (;;)
        {
          i = i2;
          if (!scrollByInternal(m, k, localMotionEvent)) {
            break;
          }
          getParent().requestDisallowInterceptTouchEvent(true);
          i = i2;
          break;
          j += mTouchSlop;
          break label611;
          n = i + mTouchSlop;
          break label661;
          m = 0;
          break label733;
          k = 0;
        }
        onPointerUp(paramMotionEvent);
        i = i2;
        break;
        mVelocityTracker.addMovement(localMotionEvent);
        mVelocityTracker.computeCurrentVelocity(1000, mMaxFlingVelocity);
        float f1;
        if (bool1)
        {
          f1 = -ci.a(mVelocityTracker, mScrollPointerId);
          if (!bool2) {
            break label923;
          }
        }
        for (float f2 = -ci.b(mVelocityTracker, mScrollPointerId);; f2 = 0.0F)
        {
          if (((f1 == 0.0F) && (f2 == 0.0F)) || (!fling((int)f1, (int)f2))) {
            setScrollState(0);
          }
          resetTouch();
          i = 1;
          break;
          f1 = 0.0F;
          break label862;
        }
        cancelTouch();
        i = i2;
        break;
      }
    }
  }
  
  protected void removeDetachedView(View paramView, boolean paramBoolean)
  {
    RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(paramView);
    if (localViewHolder != null)
    {
      if (!localViewHolder.isTmpDetached()) {
        break label32;
      }
      localViewHolder.clearTmpDetachFlag();
    }
    label32:
    while (localViewHolder.shouldIgnore())
    {
      dispatchChildDetached(paramView);
      super.removeDetachedView(paramView, paramBoolean);
      return;
    }
    throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + localViewHolder);
  }
  
  public void removeItemDecoration(RecyclerView.ItemDecoration paramItemDecoration)
  {
    if (mLayout != null) {
      mLayout.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
    }
    mItemDecorations.remove(paramItemDecoration);
    if (mItemDecorations.isEmpty()) {
      if (cn.a(this) != 2) {
        break label60;
      }
    }
    label60:
    for (boolean bool = true;; bool = false)
    {
      setWillNotDraw(bool);
      markItemDecorInsetsDirty();
      requestLayout();
      return;
    }
  }
  
  public void removeOnChildAttachStateChangeListener(RecyclerView.OnChildAttachStateChangeListener paramOnChildAttachStateChangeListener)
  {
    if (mOnChildAttachStateListeners == null) {
      return;
    }
    mOnChildAttachStateListeners.remove(paramOnChildAttachStateChangeListener);
  }
  
  public void removeOnItemTouchListener(RecyclerView.OnItemTouchListener paramOnItemTouchListener)
  {
    mOnItemTouchListeners.remove(paramOnItemTouchListener);
    if (mActiveOnItemTouchListener == paramOnItemTouchListener) {
      mActiveOnItemTouchListener = null;
    }
  }
  
  public void removeOnScrollListener(RecyclerView.OnScrollListener paramOnScrollListener)
  {
    if (mScrollListeners != null) {
      mScrollListeners.remove(paramOnScrollListener);
    }
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    Object localObject;
    if ((!mLayout.onRequestChildFocus(this, mState, paramView1, paramView2)) && (paramView2 != null))
    {
      mTempRect.set(0, 0, paramView2.getWidth(), paramView2.getHeight());
      localObject = paramView2.getLayoutParams();
      if ((localObject instanceof RecyclerView.LayoutParams))
      {
        localObject = (RecyclerView.LayoutParams)localObject;
        if (!mInsetsDirty)
        {
          localObject = mDecorInsets;
          Rect localRect = mTempRect;
          left -= left;
          localRect = mTempRect;
          right += right;
          localRect = mTempRect;
          top -= top;
          localRect = mTempRect;
          int i = bottom;
          bottom = (bottom + i);
        }
      }
      offsetDescendantRectToMyCoords(paramView2, mTempRect);
      offsetRectIntoDescendantCoords(paramView1, mTempRect);
      localObject = mTempRect;
      if (mFirstLayoutComplete) {
        break label215;
      }
    }
    label215:
    for (boolean bool = true;; bool = false)
    {
      requestChildRectangleOnScreen(paramView1, (Rect)localObject, bool);
      super.requestChildFocus(paramView1, paramView2);
      return;
    }
  }
  
  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    return mLayout.requestChildRectangleOnScreen(this, paramView, paramRect, paramBoolean);
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    int j = mOnItemTouchListeners.size();
    int i = 0;
    while (i < j)
    {
      ((RecyclerView.OnItemTouchListener)mOnItemTouchListeners.get(i)).onRequestDisallowInterceptTouchEvent(paramBoolean);
      i += 1;
    }
    super.requestDisallowInterceptTouchEvent(paramBoolean);
  }
  
  public void requestLayout()
  {
    if ((mEatRequestLayout == 0) && (!mLayoutFrozen))
    {
      super.requestLayout();
      return;
    }
    mLayoutRequestEaten = true;
  }
  
  void resumeRequestLayout(boolean paramBoolean)
  {
    if (mEatRequestLayout < 1) {
      mEatRequestLayout = 1;
    }
    if (!paramBoolean) {
      mLayoutRequestEaten = false;
    }
    if (mEatRequestLayout == 1)
    {
      if ((paramBoolean) && (mLayoutRequestEaten) && (!mLayoutFrozen) && (mLayout != null) && (mAdapter != null)) {
        dispatchLayout();
      }
      if (!mLayoutFrozen) {
        mLayoutRequestEaten = false;
      }
    }
    mEatRequestLayout -= 1;
  }
  
  void saveOldPositions()
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    while (i < j)
    {
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(mChildHelper.getUnfilteredChildAt(i));
      if (!localViewHolder.shouldIgnore()) {
        localViewHolder.saveOldPosition();
      }
      i += 1;
    }
  }
  
  public void scrollBy(int paramInt1, int paramInt2)
  {
    if (mLayout == null) {}
    boolean bool1;
    boolean bool2;
    do
    {
      Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      do
      {
        return;
      } while (mLayoutFrozen);
      bool1 = mLayout.canScrollHorizontally();
      bool2 = mLayout.canScrollVertically();
    } while ((!bool1) && (!bool2));
    if (bool1) {
      if (!bool2) {
        break label73;
      }
    }
    for (;;)
    {
      scrollByInternal(paramInt1, paramInt2, null);
      return;
      paramInt1 = 0;
      break;
      label73:
      paramInt2 = 0;
    }
  }
  
  boolean scrollByInternal(int paramInt1, int paramInt2, MotionEvent paramMotionEvent)
  {
    boolean bool = false;
    consumePendingUpdateOperations();
    int j;
    int i;
    int k;
    int m;
    if (mAdapter != null)
    {
      eatRequestLayout();
      onEnterLayoutOrScroll();
      n.a("RV Scroll");
      if (paramInt1 != 0)
      {
        j = mLayout.scrollHorizontallyBy(paramInt1, mRecycler, mState);
        i = paramInt1 - j;
        if (paramInt2 != 0)
        {
          k = mLayout.scrollVerticallyBy(paramInt2, mRecycler, mState);
          m = paramInt2 - k;
          label83:
          n.a();
          repositionShadowingViews();
          onExitLayoutOrScroll();
          resumeRequestLayout(false);
          int n = k;
          k = i;
          i = n;
        }
      }
    }
    for (;;)
    {
      if (!mItemDecorations.isEmpty()) {
        invalidate();
      }
      if (dispatchNestedScroll(j, i, k, m, mScrollOffset))
      {
        mLastTouchX -= mScrollOffset[0];
        mLastTouchY -= mScrollOffset[1];
        if (paramMotionEvent != null) {
          paramMotionEvent.offsetLocation(mScrollOffset[0], mScrollOffset[1]);
        }
        paramMotionEvent = mNestedOffsets;
        paramMotionEvent[0] += mScrollOffset[0];
        paramMotionEvent = mNestedOffsets;
        paramMotionEvent[1] += mScrollOffset[1];
      }
      for (;;)
      {
        if ((j != 0) || (i != 0)) {
          dispatchOnScrolled(j, i);
        }
        if (!awakenScrollBars()) {
          invalidate();
        }
        if ((j != 0) || (i != 0)) {
          bool = true;
        }
        return bool;
        if (cn.a(this) != 2)
        {
          if (paramMotionEvent != null) {
            pullGlows(paramMotionEvent.getX(), k, paramMotionEvent.getY(), m);
          }
          considerReleasingGlowsOnScroll(paramInt1, paramInt2);
        }
      }
      k = 0;
      m = 0;
      break label83;
      j = 0;
      i = 0;
      break;
      i = 0;
      j = 0;
      m = 0;
      k = 0;
    }
  }
  
  public void scrollTo(int paramInt1, int paramInt2)
  {
    Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
  }
  
  public void scrollToPosition(int paramInt)
  {
    if (mLayoutFrozen) {
      return;
    }
    stopScroll();
    if (mLayout == null)
    {
      Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    mLayout.scrollToPosition(paramInt);
    awakenScrollBars();
  }
  
  public void sendAccessibilityEventUnchecked(AccessibilityEvent paramAccessibilityEvent)
  {
    if (shouldDeferAccessibilityEvent(paramAccessibilityEvent)) {
      return;
    }
    super.sendAccessibilityEventUnchecked(paramAccessibilityEvent);
  }
  
  public void setAccessibilityDelegateCompat(RecyclerViewAccessibilityDelegate paramRecyclerViewAccessibilityDelegate)
  {
    mAccessibilityDelegate = paramRecyclerViewAccessibilityDelegate;
    cn.a(this, mAccessibilityDelegate);
  }
  
  public void setAdapter(RecyclerView.Adapter paramAdapter)
  {
    setLayoutFrozen(false);
    setAdapterInternal(paramAdapter, false, true);
    requestLayout();
  }
  
  public void setChildDrawingOrderCallback(RecyclerView.ChildDrawingOrderCallback paramChildDrawingOrderCallback)
  {
    if (paramChildDrawingOrderCallback == mChildDrawingOrderCallback) {
      return;
    }
    mChildDrawingOrderCallback = paramChildDrawingOrderCallback;
    if (mChildDrawingOrderCallback != null) {}
    for (boolean bool = true;; bool = false)
    {
      setChildrenDrawingOrderEnabled(bool);
      return;
    }
  }
  
  public void setClipToPadding(boolean paramBoolean)
  {
    if (paramBoolean != mClipToPadding) {
      invalidateGlows();
    }
    mClipToPadding = paramBoolean;
    super.setClipToPadding(paramBoolean);
    if (mFirstLayoutComplete) {
      requestLayout();
    }
  }
  
  public void setHasFixedSize(boolean paramBoolean)
  {
    mHasFixedSize = paramBoolean;
  }
  
  public void setItemAnimator(RecyclerView.ItemAnimator paramItemAnimator)
  {
    if (mItemAnimator != null)
    {
      mItemAnimator.endAnimations();
      mItemAnimator.setListener(null);
    }
    mItemAnimator = paramItemAnimator;
    if (mItemAnimator != null) {
      mItemAnimator.setListener(mItemAnimatorListener);
    }
  }
  
  public void setItemViewCacheSize(int paramInt)
  {
    mRecycler.setViewCacheSize(paramInt);
  }
  
  public void setLayoutFrozen(boolean paramBoolean)
  {
    if (paramBoolean != mLayoutFrozen)
    {
      assertNotInLayoutOrScroll("Do not setLayoutFrozen in layout or scroll");
      if (!paramBoolean)
      {
        mLayoutFrozen = false;
        if ((mLayoutRequestEaten) && (mLayout != null) && (mAdapter != null)) {
          requestLayout();
        }
        mLayoutRequestEaten = false;
      }
    }
    else
    {
      return;
    }
    long l = SystemClock.uptimeMillis();
    onTouchEvent(MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0));
    mLayoutFrozen = true;
    mIgnoreMotionEventTillDown = true;
    stopScroll();
  }
  
  public void setLayoutManager(RecyclerView.LayoutManager paramLayoutManager)
  {
    if (paramLayoutManager == mLayout) {
      return;
    }
    stopScroll();
    if (mLayout != null)
    {
      if (mIsAttached) {
        mLayout.dispatchDetachedFromWindow(this, mRecycler);
      }
      mLayout.setRecyclerView(null);
    }
    mRecycler.clear();
    mChildHelper.removeAllViewsUnfiltered();
    mLayout = paramLayoutManager;
    if (paramLayoutManager != null)
    {
      if (mRecyclerView != null) {
        throw new IllegalArgumentException("LayoutManager " + paramLayoutManager + " is already attached to a RecyclerView: " + mRecyclerView);
      }
      mLayout.setRecyclerView(this);
      if (mIsAttached) {
        mLayout.dispatchAttachedToWindow(this);
      }
    }
    requestLayout();
  }
  
  public void setNestedScrollingEnabled(boolean paramBoolean)
  {
    mScrollingChildHelper.a(paramBoolean);
  }
  
  @Deprecated
  public void setOnScrollListener(RecyclerView.OnScrollListener paramOnScrollListener)
  {
    mScrollListener = paramOnScrollListener;
  }
  
  public void setRecycledViewPool(RecyclerView.RecycledViewPool paramRecycledViewPool)
  {
    mRecycler.setRecycledViewPool(paramRecycledViewPool);
  }
  
  public void setRecyclerListener(RecyclerView.RecyclerListener paramRecyclerListener)
  {
    mRecyclerListener = paramRecyclerListener;
  }
  
  public void setScrollingTouchSlop(int paramInt)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    switch (paramInt)
    {
    default: 
      Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + paramInt + "; using default value");
    case 0: 
      mTouchSlop = localViewConfiguration.getScaledTouchSlop();
      return;
    }
    mTouchSlop = dn.a(localViewConfiguration);
  }
  
  public void setViewCacheExtension(RecyclerView.ViewCacheExtension paramViewCacheExtension)
  {
    mRecycler.setViewCacheExtension(paramViewCacheExtension);
  }
  
  boolean shouldDeferAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool = false;
    int j = 0;
    if (isComputingLayout()) {
      if (paramAccessibilityEvent == null) {
        break label46;
      }
    }
    label46:
    for (int i = a.b(paramAccessibilityEvent);; i = 0)
    {
      if (i == 0) {
        i = j;
      }
      for (;;)
      {
        mEatenAccessibilityChangeFlags = (i | mEatenAccessibilityChangeFlags);
        bool = true;
        return bool;
      }
    }
  }
  
  public void smoothScrollBy(int paramInt1, int paramInt2)
  {
    int i = 0;
    if (mLayout == null) {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
    }
    for (;;)
    {
      return;
      if (!mLayoutFrozen)
      {
        if (!mLayout.canScrollHorizontally()) {
          paramInt1 = 0;
        }
        if (!mLayout.canScrollVertically()) {
          paramInt2 = i;
        }
        while ((paramInt1 != 0) || (paramInt2 != 0))
        {
          mViewFlinger.smoothScrollBy(paramInt1, paramInt2);
          return;
        }
      }
    }
  }
  
  public void smoothScrollToPosition(int paramInt)
  {
    if (mLayoutFrozen) {
      return;
    }
    if (mLayout == null)
    {
      Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
      return;
    }
    mLayout.smoothScrollToPosition(this, mState, paramInt);
  }
  
  public boolean startNestedScroll(int paramInt)
  {
    return mScrollingChildHelper.a(paramInt);
  }
  
  public void stopNestedScroll()
  {
    mScrollingChildHelper.c();
  }
  
  public void stopScroll()
  {
    setScrollState(0);
    stopScrollersInternal();
  }
  
  public void swapAdapter(RecyclerView.Adapter paramAdapter, boolean paramBoolean)
  {
    setLayoutFrozen(false);
    setAdapterInternal(paramAdapter, true, paramBoolean);
    setDataSetChangedAfterLayout();
    requestLayout();
  }
  
  void viewRangeUpdate(int paramInt1, int paramInt2, Object paramObject)
  {
    int j = mChildHelper.getUnfilteredChildCount();
    int i = 0;
    if (i < j)
    {
      View localView = mChildHelper.getUnfilteredChildAt(i);
      RecyclerView.ViewHolder localViewHolder = getChildViewHolderInt(localView);
      if ((localViewHolder == null) || (localViewHolder.shouldIgnore())) {}
      for (;;)
      {
        i += 1;
        break;
        if ((mPosition >= paramInt1) && (mPosition < paramInt1 + paramInt2))
        {
          localViewHolder.addFlags(2);
          localViewHolder.addChangePayload(paramObject);
          getLayoutParamsmInsetsDirty = true;
        }
      }
    }
    mRecycler.viewRangeUpdate(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */