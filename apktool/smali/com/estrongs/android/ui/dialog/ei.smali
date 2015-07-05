.class Lcom/estrongs/android/ui/dialog/ei;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/l;


# instance fields
.field a:J

.field final synthetic b:Lcom/estrongs/android/ui/dialog/eb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/eb;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ei;->b:Lcom/estrongs/android/ui/dialog/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/ui/dialog/ei;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/ei;->a:J

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ei;->b:Lcom/estrongs/android/ui/dialog/eb;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/eb;->e(Lcom/estrongs/android/ui/dialog/eb;)V

    :cond_1
    return-void
.end method
