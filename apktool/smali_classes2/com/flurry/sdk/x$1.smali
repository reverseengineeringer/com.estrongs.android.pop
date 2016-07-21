.class Lcom/flurry/sdk/x$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/x;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/x;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)Z
    .locals 7

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v3, [I

    new-array v3, v3, [I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p3, v3}, Landroid/view/View;->getLocationInWindow([I)V

    aget v4, v3, v1

    aget v5, v2, v1

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    if-lt v5, v4, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    if-le v5, v4, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    aget v3, v3, v0

    aget v2, v2, v0

    sub-int v2, v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    if-lt v3, v2, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    if-le v3, v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->a(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/x;->J()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On item clicked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v1}, Lcom/flurry/sdk/x;->b(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, v0, v1}, Lcom/flurry/sdk/x$1;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->c(Lcom/flurry/sdk/x;)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v1}, Lcom/flurry/sdk/x;->d(Lcom/flurry/sdk/x;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0, v1}, Lcom/flurry/sdk/x$1;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->e(Lcom/flurry/sdk/x;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->f(Lcom/flurry/sdk/x;)V

    iget-object v0, p0, Lcom/flurry/sdk/x$1;->a:Lcom/flurry/sdk/x;

    invoke-static {v0}, Lcom/flurry/sdk/x;->g(Lcom/flurry/sdk/x;)V

    goto :goto_0
.end method
