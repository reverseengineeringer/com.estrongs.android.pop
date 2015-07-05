.class public Lcom/estrongs/android/view/dt;
.super Landroid/webkit/WebChromeClient;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Landroid/view/View$OnTouchListener;

.field private c:Landroid/view/View;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/View;

.field private f:Lcom/estrongs/android/view/VideoEnabledWebView;

.field private g:Z

.field private h:Landroid/widget/FrameLayout;

.field private i:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private j:Lcom/estrongs/android/view/dx;

.field private k:Ljava/lang/String;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/dt;->k:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/view/dv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/dv;-><init>(Lcom/estrongs/android/view/dt;)V

    iput-object v0, p0, Lcom/estrongs/android/view/dt;->a:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/dt;->l:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/view/dw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/dw;-><init>(Lcom/estrongs/android/view/dt;)V

    iput-object v0, p0, Lcom/estrongs/android/view/dt;->b:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Lcom/estrongs/android/view/VideoEnabledWebView;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/dt;->k:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/view/dv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/dv;-><init>(Lcom/estrongs/android/view/dt;)V

    iput-object v0, p0, Lcom/estrongs/android/view/dt;->a:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/dt;->l:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/view/dw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/dw;-><init>(Lcom/estrongs/android/view/dt;)V

    iput-object v0, p0, Lcom/estrongs/android/view/dt;->b:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/estrongs/android/view/dt;->c:Landroid/view/View;

    iput-object p2, p0, Lcom/estrongs/android/view/dt;->d:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/estrongs/android/view/dt;->e:Landroid/view/View;

    iput-object p4, p0, Lcom/estrongs/android/view/dt;->f:Lcom/estrongs/android/view/VideoEnabledWebView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/dt;->g:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ct;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/ct;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0b0011

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const v3, 0x7f0b003c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, -0x1

    new-instance v3, Lcom/estrongs/android/view/du;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/view/du;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/dialog/ct;->d(Z)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/dt;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/dt;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/view/dt;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/dt;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/dt;)Lcom/estrongs/android/view/VideoEnabledWebView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->f:Lcom/estrongs/android/view/VideoEnabledWebView;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dt;->k:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/dt;->g:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/dt;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/dt;->onHideCustomView()V

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

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->e:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/view/dt;->onHideCustomView()V

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

    iget-boolean v0, p0, Lcom/estrongs/android/view/dt;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->d:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/estrongs/android/view/dt;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->i:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->i:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_0
    iput-boolean v2, p0, Lcom/estrongs/android/view/dt;->g:Z

    iput-object v3, p0, Lcom/estrongs/android/view/dt;->h:Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/estrongs/android/view/dt;->i:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->j:Lcom/estrongs/android/view/dx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->j:Lcom/estrongs/android/view/dx;

    invoke-interface {v0, v2}, Lcom/estrongs/android/view/dx;->a(Z)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    iput-boolean v2, v1, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b:Z

    iget-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a:Z

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/estrongs/android/view/dt;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->b:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iput-boolean v4, p0, Lcom/estrongs/android/view/dt;->g:Z

    iput-object p1, p0, Lcom/estrongs/android/view/dt;->h:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/estrongs/android/view/dt;->i:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v1, p0, Lcom/estrongs/android/view/dt;->c:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/view/dt;->d:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/estrongs/android/view/dt;->h:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/estrongs/android/view/dt;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    instance-of v1, v0, Landroid/widget/VideoView;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    new-instance v1, Lcom/estrongs/android/util/al;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/al;-><init>(Ljava/lang/Object;)V

    const-string v0, "mUri"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/util/al;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/dt;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/dt;->j:Lcom/estrongs/android/view/dx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->j:Lcom/estrongs/android/view/dx;

    invoke-interface {v0, v4}, Lcom/estrongs/android/view/dx;->a(Z)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    iput-boolean v4, v1, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->b:Z

    iget-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    iput-boolean v6, v1, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a:Z

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->postInvalidate()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/dt;->f:Lcom/estrongs/android/view/VideoEnabledWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/dt;->f:Lcom/estrongs/android/view/VideoEnabledWebView;

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

    iget-object v1, p0, Lcom/estrongs/android/view/dt;->f:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
