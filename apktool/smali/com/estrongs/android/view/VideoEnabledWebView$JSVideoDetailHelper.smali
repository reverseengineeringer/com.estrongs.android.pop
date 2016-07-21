.class Lcom/estrongs/android/view/VideoEnabledWebView$JSVideoDetailHelper;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/VideoEnabledWebView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/VideoEnabledWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/VideoEnabledWebView$JSVideoDetailHelper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setVideoSource(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView$JSVideoDetailHelper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-static {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->a(Lcom/estrongs/android/view/VideoEnabledWebView;)Lcom/estrongs/android/view/fy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/VideoEnabledWebView$JSVideoDetailHelper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    invoke-static {v0}, Lcom/estrongs/android/view/VideoEnabledWebView;->a(Lcom/estrongs/android/view/VideoEnabledWebView;)Lcom/estrongs/android/view/fy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/fy;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
