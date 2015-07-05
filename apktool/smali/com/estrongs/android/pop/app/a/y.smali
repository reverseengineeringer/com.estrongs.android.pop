.class Lcom/estrongs/android/pop/app/a/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/er;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/y;->a:Lcom/estrongs/android/pop/app/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/a/ao;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/y;->a:Lcom/estrongs/android/pop/app/a/x;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/x;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    const v1, 0x7f0b03dd

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/y;->a:Lcom/estrongs/android/pop/app/a/x;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/x;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->q()Lcom/estrongs/android/pop/app/a/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/a/al;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->e()V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->g()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/y;->a:Lcom/estrongs/android/pop/app/a/x;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/x;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/y;->a:Lcom/estrongs/android/pop/app/a/x;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/x;->a:Lcom/estrongs/android/pop/app/a/e;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/e;->a(Lcom/estrongs/android/pop/app/a/e;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->h()V

    goto :goto_0
.end method
