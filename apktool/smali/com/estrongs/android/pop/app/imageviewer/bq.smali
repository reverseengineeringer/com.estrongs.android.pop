.class Lcom/estrongs/android/pop/app/imageviewer/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Z

.field b:Lcom/estrongs/android/pop/app/imageviewer/am;

.field final synthetic c:Landroid/view/View$OnTouchListener;

.field final synthetic d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/view/View$OnTouchListener;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->c:Landroid/view/View$OnTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->b:Lcom/estrongs/android/pop/app/imageviewer/am;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->c:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Landroid/view/MotionEvent;)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getScale()F

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getDefaultScale()F

    move-result v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getScaledWidth()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getScaledHeight()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->a:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/widget/RealViewSwitcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->a:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->a:Z

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->b:Lcom/estrongs/android/pop/app/imageviewer/am;

    if-nez v0, :cond_5

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/br;

    invoke-direct {v0, p0, p2}, Lcom/estrongs/android/pop/app/imageviewer/br;-><init>(Lcom/estrongs/android/pop/app/imageviewer/bq;Landroid/view/MotionEvent;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->b:Lcom/estrongs/android/pop/app/imageviewer/am;

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/bq;->b:Lcom/estrongs/android/pop/app/imageviewer/am;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->setOnImageEdgeDetector(Lcom/estrongs/android/pop/app/imageviewer/am;)V

    goto :goto_1
.end method
