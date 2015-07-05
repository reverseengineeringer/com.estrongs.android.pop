.class Lcom/estrongs/android/pop/bt/f;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Lcom/estrongs/android/pop/bt/g;


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/f;->a:Lcom/estrongs/android/pop/bt/g;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/g;->b()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/f;->a:Lcom/estrongs/android/pop/bt/g;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/g;->c()V

    return-void
.end method

.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/bt/f;->a:Lcom/estrongs/android/pop/bt/g;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/g;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
