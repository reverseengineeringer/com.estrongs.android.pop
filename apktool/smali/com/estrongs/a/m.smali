.class Lcom/estrongs/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/a/l;


# direct methods
.method constructor <init>(Lcom/estrongs/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/m;->a:Lcom/estrongs/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 4

    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-ne p3, v0, :cond_2

    :cond_0
    instance-of v0, p1, Lcom/estrongs/fs/b/ar;

    if-nez v0, :cond_1

    const-string v0, "end_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/a/a;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/a/m;->a:Lcom/estrongs/a/l;

    invoke-virtual {v0, p1}, Lcom/estrongs/a/l;->b(Lcom/estrongs/a/a;)V

    :cond_2
    return-void
.end method
