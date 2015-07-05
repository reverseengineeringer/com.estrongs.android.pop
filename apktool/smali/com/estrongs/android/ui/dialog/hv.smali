.class Lcom/estrongs/android/ui/dialog/hv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/l;


# instance fields
.field a:J

.field final synthetic b:Lcom/estrongs/android/ui/dialog/hn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/hn;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hv;->b:Lcom/estrongs/android/ui/dialog/hn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/hv;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/ui/dialog/hv;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/hv;->a:J

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hv;->b:Lcom/estrongs/android/ui/dialog/hn;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/hn;->f(Lcom/estrongs/android/ui/dialog/hn;)V

    :cond_0
    return-void
.end method
