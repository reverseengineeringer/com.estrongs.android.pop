.class Lcom/estrongs/android/pop/app/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/z;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/z;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/aa;->a:Lcom/estrongs/android/pop/app/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->a:Lcom/estrongs/android/pop/app/z;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/x;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/x;->a(Lcom/estrongs/android/pop/app/x;)Lcom/estrongs/android/pop/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->a:Lcom/estrongs/android/pop/app/z;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/x;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/x;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->a:Lcom/estrongs/android/pop/app/z;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/x;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/x;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->a:Lcom/estrongs/android/pop/app/z;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/x;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/x;->d(Lcom/estrongs/android/pop/app/x;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aa;->a:Lcom/estrongs/android/pop/app/z;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/z;->a:Lcom/estrongs/android/pop/app/x;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/x;->e(Lcom/estrongs/android/pop/app/x;)V

    goto :goto_0
.end method
