.class public Lcom/estrongs/android/ui/navigation/TabIndicatorView;
.super Landroid/view/View;


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Rect;

.field c:Landroid/graphics/Rect;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->d:I

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->h:F

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->d:I

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->h:F

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->d:I

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->h:F

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a:Landroid/graphics/Paint;

    const v1, -0xce5022

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 1

    :try_start_0
    iput p1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->g:I

    iput p2, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->h:F

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->d:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->e:I

    iget v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->f:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Rect;

    iget v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->e:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Rect;

    iget v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->f:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iget v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->e:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->f:I

    int-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->h:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Rect;

    iget v2, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->f:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->f:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method
