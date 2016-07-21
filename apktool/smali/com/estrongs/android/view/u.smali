.class Lcom/estrongs/android/view/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/t;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/t;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/u;->a:Lcom/estrongs/android/view/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/u;->a:Lcom/estrongs/android/view/t;

    iget-object v0, v0, Lcom/estrongs/android/view/t;->b:Lcom/estrongs/android/view/g;

    invoke-static {v0}, Lcom/estrongs/android/view/g;->h(Lcom/estrongs/android/view/g;)Lcom/estrongs/android/view/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/u;->a:Lcom/estrongs/android/view/t;

    iget-object v0, v0, Lcom/estrongs/android/view/t;->b:Lcom/estrongs/android/view/g;

    invoke-static {v0}, Lcom/estrongs/android/view/g;->h(Lcom/estrongs/android/view/g;)Lcom/estrongs/android/view/v;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/u;->a:Lcom/estrongs/android/view/t;

    iget-object v1, v1, Lcom/estrongs/android/view/t;->b:Lcom/estrongs/android/view/g;

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/v;->a(Lcom/estrongs/android/view/g;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/u;->a:Lcom/estrongs/android/view/t;

    iget-object v0, v0, Lcom/estrongs/android/view/t;->b:Lcom/estrongs/android/view/g;

    iget-object v0, v0, Lcom/estrongs/android/view/g;->O:Lcom/estrongs/android/view/dw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/u;->a:Lcom/estrongs/android/view/t;

    iget-object v0, v0, Lcom/estrongs/android/view/t;->b:Lcom/estrongs/android/view/g;

    iget-object v0, v0, Lcom/estrongs/android/view/g;->O:Lcom/estrongs/android/view/dw;

    iget-object v1, p0, Lcom/estrongs/android/view/u;->a:Lcom/estrongs/android/view/t;

    iget-object v1, v1, Lcom/estrongs/android/view/t;->b:Lcom/estrongs/android/view/g;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/dw;->a(Lcom/estrongs/android/view/cr;Z)V

    :cond_1
    return-void
.end method
