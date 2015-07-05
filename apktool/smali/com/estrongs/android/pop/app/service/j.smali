.class public abstract Lcom/estrongs/android/pop/app/service/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/service/j;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()I
    .locals 1

    const v0, 0x1b7740

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/j;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/service/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/service/j;->a()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/service/j;->b:J

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/service/j;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/service/j;->a:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/service/j;->c()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
