.class Lcom/estrongs/android/ui/dialog/el;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/l;


# instance fields
.field a:J

.field final synthetic b:Lcom/estrongs/android/ui/dialog/ee;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ee;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/el;->b:Lcom/estrongs/android/ui/dialog/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/el;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/ui/dialog/el;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/ui/dialog/el;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/ui/dialog/el;->a:J

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/el;->b:Lcom/estrongs/android/ui/dialog/ee;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ee;->h(Lcom/estrongs/android/ui/dialog/ee;)V

    :cond_1
    return-void
.end method
