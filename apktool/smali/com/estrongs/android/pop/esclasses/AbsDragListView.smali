.class public abstract Lcom/estrongs/android/pop/esclasses/AbsDragListView;
.super Landroid/widget/ListView;


# instance fields
.field protected a:I

.field protected b:I

.field private c:Landroid/widget/ImageView;

.field private d:I

.field private e:I

.field private f:Landroid/view/WindowManager;

.field private g:Landroid/view/WindowManager$LayoutParams;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->h:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->f:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->c:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->c:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->g:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x3f4ccccd    # 0.8f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->g:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->d:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->e:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->f:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->c:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->pointToPosition(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->b:I

    :cond_1
    iget v1, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->i:I

    if-ge p1, v1, :cond_4

    const/16 v0, 0x8

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    :try_start_0
    iget v1, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->b:I

    iget v2, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->b:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->setSelectionFromTop(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget v1, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->j:I

    if-le p1, v1, :cond_2

    const/4 v0, -0x8

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public abstract a(II)V
.end method

.method public a(Landroid/graphics/Bitmap;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->a()V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->g:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->g:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->g:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->d:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->e:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->g:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->g:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->g:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x198

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->g:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->g:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->f:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->f:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->c:Landroid/widget/ImageView;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->a:I

    return v0
.end method

.method public b(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->b:I

    :cond_0
    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge p1, v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->b:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->b:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->a:I

    iget v1, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->b:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->a:I

    iget v1, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->a(II)V

    goto :goto_0
.end method

.method public abstract c()I
.end method

.method public abstract d()Z
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->b:I

    iput v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->a:I

    iget v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->b:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->b:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    sub-int v4, v3, v4

    iput v4, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    int-to-float v5, v3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->e:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget v2, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->h:I

    sub-int v2, v3, v2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->i:I

    iget v2, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->h:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->j:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v2

    const v4, 0x7f02012e

    invoke-virtual {v2, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->a(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->a()V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->b(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->a(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/AbsDragListView;->a()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
