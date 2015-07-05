.class Lcom/estrongs/android/ui/dialog/bn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/l;


# instance fields
.field a:J

.field final synthetic b:Lcom/estrongs/android/ui/dialog/bj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/bj;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/bn;->b:Lcom/estrongs/android/ui/dialog/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/bn;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/ui/dialog/bn;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/bn;->a:J

    new-instance v0, Lcom/estrongs/android/ui/dialog/bo;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/bo;-><init>(Lcom/estrongs/android/ui/dialog/bn;)V

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
