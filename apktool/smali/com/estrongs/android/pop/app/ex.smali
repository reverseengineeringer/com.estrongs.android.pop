.class Lcom/estrongs/android/pop/app/ex;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/eu;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ew;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ex;->a:Lcom/estrongs/android/pop/app/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/c/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ex;->a:Lcom/estrongs/android/pop/app/ew;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ew;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const v1, 0x7f0802c0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ex;->a:Lcom/estrongs/android/pop/app/ew;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ew;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->v()Lcom/estrongs/android/pop/app/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/c/j;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->e()V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/app/c/m;->a()Lcom/estrongs/android/pop/app/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/m;->g()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ex;->a:Lcom/estrongs/android/pop/app/ew;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ew;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ex;->a:Lcom/estrongs/android/pop/app/ew;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ew;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->l()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ex;->a:Lcom/estrongs/android/pop/app/ew;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ew;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->supportInvalidateOptionsMenu()V

    goto :goto_0
.end method
