.class Lcom/estrongs/android/view/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/r;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/r;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/s;->a:Lcom/estrongs/android/view/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/s;->a:Lcom/estrongs/android/view/r;

    iget-object v0, v0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->h(Lcom/estrongs/android/view/e;)Lcom/estrongs/android/view/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/s;->a:Lcom/estrongs/android/view/r;

    iget-object v0, v0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    invoke-static {v0}, Lcom/estrongs/android/view/e;->h(Lcom/estrongs/android/view/e;)Lcom/estrongs/android/view/t;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/s;->a:Lcom/estrongs/android/view/r;

    iget-object v1, v1, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/t;->a(Lcom/estrongs/android/view/e;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/s;->a:Lcom/estrongs/android/view/r;

    iget-object v0, v0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->H:Lcom/estrongs/android/view/cb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/s;->a:Lcom/estrongs/android/view/r;

    iget-object v0, v0, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    iget-object v0, v0, Lcom/estrongs/android/view/e;->H:Lcom/estrongs/android/view/cb;

    iget-object v1, p0, Lcom/estrongs/android/view/s;->a:Lcom/estrongs/android/view/r;

    iget-object v1, v1, Lcom/estrongs/android/view/r;->b:Lcom/estrongs/android/view/e;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/cb;->a(Lcom/estrongs/android/view/aw;Z)V

    :cond_1
    return-void
.end method
