.class public Lcom/estrongs/android/pop/app/editor/ObservableScrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/editor/f;

.field private b:Ljava/lang/Runnable;

.field private c:I

.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->a:Lcom/estrongs/android/pop/app/editor/f;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->d:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->a:Lcom/estrongs/android/pop/app/editor/f;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->d:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->f:Z

    new-instance v0, Lcom/estrongs/android/pop/app/editor/e;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/editor/e;-><init>(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->a:Lcom/estrongs/android/pop/app/editor/f;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->d:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->c:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->c:I

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;)Lcom/estrongs/android/pop/app/editor/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->a:Lcom/estrongs/android/pop/app/editor/f;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->d:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->c:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->b:Ljava/lang/Runnable;

    iget v2, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->d:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->f:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->a:Lcom/estrongs/android/pop/app/editor/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->a:Lcom/estrongs/android/pop/app/editor/f;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/estrongs/android/pop/app/editor/f;->a(Lcom/estrongs/android/pop/app/editor/ObservableScrollView;IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScrollViewListener(Lcom/estrongs/android/pop/app/editor/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/ObservableScrollView;->a:Lcom/estrongs/android/pop/app/editor/f;

    return-void
.end method
