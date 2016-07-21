.class Lcom/estrongs/android/pop/app/cleaner/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cleaner/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/cleaner/v;->e(Lcom/estrongs/android/pop/app/cleaner/v;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/cleaner/v;->c(Lcom/estrongs/android/pop/app/cleaner/v;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v2}, Lcom/estrongs/android/view/w;->v()Lcom/estrongs/android/cleaner/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/cleaner/a;->b()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/app/cleaner/v;->a(Lcom/estrongs/android/pop/app/cleaner/v;J)J

    int-to-long v0, v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/cleaner/v;->g(Lcom/estrongs/android/pop/app/cleaner/v;)J

    move-result-wide v2

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/cleaner/v;->c(Lcom/estrongs/android/pop/app/cleaner/v;)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/view/w;->a(J)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/v;->h(Lcom/estrongs/android/pop/app/cleaner/v;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->y()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->u()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cleaner/v;->a(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/ak;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/cleaner/v;->a(Lcom/estrongs/android/pop/app/cleaner/v;)Lcom/estrongs/android/pop/app/cleaner/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/cleaner/ak;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/app/cleaner/ak;->notifyItemRangeChanged(II)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/z;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v1}, Lcom/estrongs/android/view/w;->v()Lcom/estrongs/android/cleaner/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/cleaner/a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/view/w;->a(J)V

    goto :goto_0
.end method
