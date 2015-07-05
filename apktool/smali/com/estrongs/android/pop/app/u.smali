.class Lcom/estrongs/android/pop/app/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/t;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/t;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/t;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->a(Lcom/estrongs/android/pop/app/r;)Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/t;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/r;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/r;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/t;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/r;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/r;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/t;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->e(Lcom/estrongs/android/pop/app/r;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/u;->a:Lcom/estrongs/android/pop/app/t;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/t;->a:Lcom/estrongs/android/pop/app/r;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/r;->f(Lcom/estrongs/android/pop/app/r;)V

    goto :goto_0
.end method
