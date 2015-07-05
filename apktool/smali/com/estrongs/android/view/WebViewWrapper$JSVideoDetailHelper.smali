.class public Lcom/estrongs/android/view/WebViewWrapper$JSVideoDetailHelper;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/WebViewWrapper;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/view/WebViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/WebViewWrapper$JSVideoDetailHelper;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setVideoSource(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/view/en;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/view/en;-><init>(Lcom/estrongs/android/view/WebViewWrapper$JSVideoDetailHelper;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
