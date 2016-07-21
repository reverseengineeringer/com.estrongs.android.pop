.class Lcom/estrongs/android/pop/app/cleaner/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/cleaner/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cleaner/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/cleaner/h;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/w;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/h;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/cleaner/v;->a(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/ak;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/app/cleaner/ak;->a(Lcom/estrongs/android/cleaner/h;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/cleaner/v;->f(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(Lcom/estrongs/android/cleaner/h;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/v;->a(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/ak;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/cleaner/ak;->a(Ljava/util/List;)V

    return-void
.end method

.method public b(Lcom/estrongs/android/cleaner/h;)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/v;->a(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/ak;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/cleaner/v;->b(Lcom/estrongs/android/pop/app/cleaner/v;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/cleaner/v;->c(Lcom/estrongs/android/pop/app/cleaner/v;)I

    move-result v1

    div-int v0, v1, v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/cleaner/v;->d(Lcom/estrongs/android/pop/app/cleaner/v;)I

    move-result v1

    mul-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/cleaner/v;->e(Lcom/estrongs/android/pop/app/cleaner/v;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    int-to-long v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/cleaner/v;->e(Lcom/estrongs/android/pop/app/cleaner/v;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/w;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v1}, Lcom/estrongs/android/view/w;->u()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/cleaner/x;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/pop/app/cleaner/x;-><init>(Lcom/estrongs/android/pop/app/cleaner/w;Lcom/estrongs/android/cleaner/h;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
