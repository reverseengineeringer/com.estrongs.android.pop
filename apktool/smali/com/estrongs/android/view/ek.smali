.class Lcom/estrongs/android/view/ek;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/WebViewWrapper;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/WebViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ek;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/view/ek;->a:Lcom/estrongs/android/view/WebViewWrapper;

    invoke-static {v0}, Lcom/estrongs/android/view/WebViewWrapper;->e(Lcom/estrongs/android/view/WebViewWrapper;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ek;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v1, p0, Lcom/estrongs/android/view/ek;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v1, v1, Lcom/estrongs/android/view/WebViewWrapper;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/view/WebViewWrapper;->c(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ek;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v0, v0, Lcom/estrongs/android/view/WebViewWrapper;->v:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/view/ek;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v2, v1, Lcom/estrongs/android/view/WebViewWrapper;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/view/WebViewWrapper;->av()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    const-string v4, "&"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/view/WebViewWrapper;->v:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/ek;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v1, p0, Lcom/estrongs/android/view/ek;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v1, v1, Lcom/estrongs/android/view/WebViewWrapper;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/view/WebViewWrapper;->f(Lcom/estrongs/android/view/WebViewWrapper;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/view/ek;->a:Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v2, v1, Lcom/estrongs/android/view/WebViewWrapper;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/view/WebViewWrapper;->av()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/view/WebViewWrapper;->v:Ljava/lang/String;

    goto :goto_0
.end method
