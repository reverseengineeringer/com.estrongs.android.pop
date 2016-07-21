.class Lcom/estrongs/android/view/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/bg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bh;->a:Lcom/estrongs/android/view/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/bh;->a:Lcom/estrongs/android/view/bg;

    iget-object v0, v0, Lcom/estrongs/android/view/bg;->b:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->i(Lcom/estrongs/android/view/ak;)Lcom/estrongs/android/view/bm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/bh;->a:Lcom/estrongs/android/view/bg;

    iget-object v0, v0, Lcom/estrongs/android/view/bg;->b:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->i(Lcom/estrongs/android/view/ak;)Lcom/estrongs/android/view/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/bh;->a:Lcom/estrongs/android/view/bg;

    iget-object v1, v1, Lcom/estrongs/android/view/bg;->b:Lcom/estrongs/android/view/ak;

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/bm;->a(Lcom/estrongs/android/view/ak;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/bh;->a:Lcom/estrongs/android/view/bg;

    iget-object v0, v0, Lcom/estrongs/android/view/bg;->b:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->O:Lcom/estrongs/android/view/dw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/bh;->a:Lcom/estrongs/android/view/bg;

    iget-object v0, v0, Lcom/estrongs/android/view/bg;->b:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->O:Lcom/estrongs/android/view/dw;

    iget-object v1, p0, Lcom/estrongs/android/view/bh;->a:Lcom/estrongs/android/view/bg;

    iget-object v1, v1, Lcom/estrongs/android/view/bg;->b:Lcom/estrongs/android/view/ak;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/dw;->a(Lcom/estrongs/android/view/cr;Z)V

    :cond_1
    return-void
.end method
