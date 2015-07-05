.class Lcom/estrongs/android/pop/app/ej;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/gc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "Market"

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Market"

    const-string v1, "Huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->b(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/gd;)Lcom/estrongs/android/pop/app/gd;

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    return-void
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    return-void
.end method

.method public f(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;II)V

    return-void
.end method

.method public g(I)V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->i()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/gd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/gd;->q()V

    goto :goto_1

    :cond_2
    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ej;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
