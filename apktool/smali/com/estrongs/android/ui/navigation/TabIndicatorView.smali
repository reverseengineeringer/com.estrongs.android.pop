.class public Lcom/estrongs/android/ui/navigation/TabIndicatorView;
.super Landroid/view/View;


# instance fields
.field a:Landroid/graphics/Paint;

.field b:Landroid/graphics/Paint;

.field c:Landroid/graphics/Rect;

.field d:Landroid/graphics/Rect;

.field e:Landroid/graphics/Rect;

.field f:I

.field g:I

.field h:I

.field i:I

.field j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->f:I

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->j:F

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->f:I

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->j:F

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->f:I

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->j:F

    invoke-direct {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d00f0

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d00f1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 1

    :try_start_0
    iput p1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->i:I

    iput p2, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->j:F

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
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->f:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->g:I

    iget v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->f:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->h:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iget v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->g:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iget v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->h:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->d:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->d:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->d:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->d:Landroid/graphics/Rect;

    iget v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->g:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->d:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->g:I

    sub-int v0, v2, v0

    iget v2, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->f:I

    iget v3, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->g:I

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->e:Landroid/graphics/Rect;

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->j:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iget v2, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->h:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->h:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/estrongs/android/ui/navigation/TabIndicatorView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method
