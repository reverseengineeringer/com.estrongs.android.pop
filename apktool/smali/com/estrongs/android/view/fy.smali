.class public Lcom/estrongs/android/view/fy;
.super Landroid/webkit/WebChromeClient;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field a:Ljava/lang/Runnable;

.field final b:Landroid/graphics/Rect;

.field c:Landroid/view/View$OnTouchListener;

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/View;

.field private g:Lcom/estrongs/android/view/VideoEnabledWebView;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private l:Lcom/estrongs/android/view/gc;

.field private m:Ljava/lang/String;

.field private n:Landroid/view/WindowManager$LayoutParams;

.field private o:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/view/fy;->m:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/view/ga;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/ga;-><init>(Lcom/estrongs/android/view/fy;)V

    iput-object v0, p0, Lcom/estrongs/android/view/fy;->a:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/estrongs/android/view/fy;->n:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/fy;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/fy;->o:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/view/gb;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/gb;-><init>(Lcom/estrongs/android/view/fy;)V

    iput-object v0, p0, Lcom/estrongs/android/view/fy;->c:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/estrongs/android/view/VideoEnabledWebView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/view/fy;->m:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/view/ga;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/ga;-><init>(Lcom/estrongs/android/view/fy;)V

    iput-object v0, p0, Lcom/estrongs/android/view/fy;->a:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/estrongs/android/view/fy;->n:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/fy;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/fy;->o:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/view/gb;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/gb;-><init>(Lcom/estrongs/android/view/fy;)V

    iput-object v0, p0, Lcom/estrongs/android/view/fy;->c:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/estrongs/android/view/fy;->d:Landroid/view/View;

    iput-object p2, p0, Lcom/estrongs/android/view/fy;->e:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/estrongs/android/view/fy;->f:Landroid/view/View;

    iput-object p4, p0, Lcom/estrongs/android/view/fy;->g:Lcom/estrongs/android/view/VideoEnabledWebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/fy;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/fy;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0800a3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const v3, 0x7f0800ac

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, -0x1

    new-instance v3, Lcom/estrongs/android/view/fz;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/view/fz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/dialog/cv;->d(Z)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/fy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/fy;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/fy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->o:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/fy;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    const v1, 0x7f0203b5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/view/fy;->c:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/fy;->n:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->n:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->n:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->n:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->n:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/estrongs/android/view/fy;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x1e

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/view/fy;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/view/fy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->m:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/fy;->h:Landroid/view/View;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/view/fy;)Lcom/estrongs/android/view/VideoEnabledWebView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->g:Lcom/estrongs/android/view/VideoEnabledWebView;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/fy;->m:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/fy;->i:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/fy;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/fy;->onHideCustomView()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->f:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/view/fy;->onHideCustomView()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHideCustomView()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/view/fy;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/estrongs/android/view/fy;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->e:Landroid/view/ViewGroup;

    check-cast v0, Lcom/estrongs/android/widget/FullScrnVideoLayout;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/FullScrnVideoLayout;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/view/fy;->d()V

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_0
    iput-boolean v2, p0, Lcom/estrongs/android/view/fy;->i:Z

    iput-object v3, p0, Lcom/estrongs/android/view/fy;->j:Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/estrongs/android/view/fy;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->l:Lcom/estrongs/android/view/gc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->l:Lcom/estrongs/android/view/gc;

    invoke-interface {v0, v2}, Lcom/estrongs/android/view/gc;->a(Z)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a:Z

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/estrongs/android/view/fy;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    iput-boolean v4, p0, Lcom/estrongs/android/view/fy;->i:Z

    iput-object p1, p0, Lcom/estrongs/android/view/fy;->j:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/estrongs/android/view/fy;->k:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->d:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/estrongs/android/view/fy;->j:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->e:Landroid/view/ViewGroup;

    check-cast v0, Lcom/estrongs/android/widget/FullScrnVideoLayout;

    iget-object v2, p0, Lcom/estrongs/android/view/fy;->c:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/FullScrnVideoLayout;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/view/fy;->c()V

    instance-of v0, v1, Landroid/widget/VideoView;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    new-instance v1, Lcom/estrongs/android/util/ao;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/ao;-><init>(Ljava/lang/Object;)V

    const-string v0, "mUri"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/ao;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fy;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/fy;->l:Lcom/estrongs/android/view/gc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->l:Lcom/estrongs/android/view/gc;

    invoke-interface {v0, v4}, Lcom/estrongs/android/view/gc;->a(Z)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    iput-boolean v5, v1, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a:Z

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->postInvalidate()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/fy;->g:Lcom/estrongs/android/view/VideoEnabledWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fy;->g:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "javascript:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ytrp_html5_video = document.getElementsByTagName(\'video\')[0];"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "if (_ytrp_html5_video !== undefined) {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "JSVideoFullScreenHelper.setVideoSource(_ytrp_html5_video.currentSrc);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "function _ytrp_html5_video_ended() {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ytrp_html5_video.removeEventListener(\'ended\', _ytrp_html5_video_ended);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_VideoEnabledWebView.notifyVideoEnd();"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ytrp_html5_video.addEventListener(\'ended\', _ytrp_html5_video_ended);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} else { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "JSVideoFullScreenHelper.setVideoSource(\'\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/fy;->g:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
