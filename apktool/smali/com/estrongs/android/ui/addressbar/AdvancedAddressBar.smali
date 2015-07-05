.class public Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;
.super Landroid/view/View;


# instance fields
.field private a:Lcom/estrongs/android/ui/addressbar/a;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/RectF;

.field private d:I

.field private e:I

.field private f:Lcom/estrongs/android/ui/addressbar/e;

.field private g:Lcom/estrongs/android/ui/addressbar/f;

.field private h:Landroid/os/Handler;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->e:I

    iput v1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->k:I

    iput-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->m:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->e:I

    iput v1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->k:I

    iput-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->m:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->e:I

    iput v1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->k:I

    iput-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->m:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b()V

    return-void
.end method

.method private a(I)V
    .locals 1

    iput p1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->d:I

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/addressbar/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->d:I

    return v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/estrongs/android/ui/addressbar/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setClickable(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->h:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/addressbar/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/addressbar/b;-><init>(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/ui/addressbar/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/addressbar/c;-><init>(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/addressbar/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/addressbar/d;-><init>(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)Lcom/estrongs/android/ui/addressbar/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->g:Lcom/estrongs/android/ui/addressbar/f;

    return-object v0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->c:Landroid/graphics/RectF;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->invalidate()V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->e:I

    return v0
.end method

.method private d()V
    .locals 8

    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->getHeight()I

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    iget v2, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->e:I

    div-int v2, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->e:I

    if-ge v0, v3, :cond_1

    new-instance v3, Landroid/graphics/RectF;

    mul-int v4, v2, v0

    int-to-float v4, v4

    const/4 v5, 0x0

    add-int/lit8 v6, v0, 0x1

    mul-int/2addr v6, v2

    int-to-float v6, v6

    int-to-float v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v4, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->c()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;)Lcom/estrongs/android/ui/addressbar/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->f:Lcom/estrongs/android/ui/addressbar/e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/addressbar/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->f:Lcom/estrongs/android/ui/addressbar/e;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/addressbar/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->g:Lcom/estrongs/android/ui/addressbar/f;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/estrongs/android/ui/addressbar/a;->a(Ljava/util/List;Ljava/util/List;F)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->invalidate()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/addressbar/a;->a(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->postInvalidate()V

    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/addressbar/a;->e()V

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/ui/addressbar/a;->a([Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/addressbar/a;->a()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->e:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->e:I

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->c()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->invalidate()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->l:Z

    return v0
.end method

.method public b(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->l:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->m:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->m:Z

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->m:Z

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v3, v4, v1, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->invalidate(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/addressbar/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/addressbar/a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/addressbar/a;->b(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_1

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->e:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(I)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->d()V

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/addressbar/a;->e()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/addressbar/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->m:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->e:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a(I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->c:Landroid/graphics/RectF;

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->invalidate()V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->c:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->c()V

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->f:Lcom/estrongs/android/ui/addressbar/e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->f:Lcom/estrongs/android/ui/addressbar/e;

    iget v1, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->d:I

    iget v2, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->e:I

    invoke-interface {v0, p0, v1, v2}, Lcom/estrongs/android/ui/addressbar/e;->a(Landroid/view/View;II)V

    :cond_5
    invoke-direct {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->c()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->c()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/AdvancedAddressBar;->a:Lcom/estrongs/android/ui/addressbar/a;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/addressbar/a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
