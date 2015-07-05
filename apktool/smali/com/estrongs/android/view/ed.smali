.class Lcom/estrongs/android/view/ed;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/estrongs/android/view/ec;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ec;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ed;->b:Lcom/estrongs/android/view/ec;

    iput-object p2, p0, Lcom/estrongs/android/view/ed;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/ed;->b:Lcom/estrongs/android/view/ec;

    iget-object v0, v0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ed;->b:Lcom/estrongs/android/view/ec;

    iget-object v0, v0, Lcom/estrongs/android/view/ec;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->a:Lcom/estrongs/android/view/VideoEnabledWebView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/view/ed;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/view/VideoEnabledWebView;->scrollTo(II)V

    :cond_0
    return-void
.end method
