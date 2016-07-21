.class Lcom/google/android/gms/tagmanager/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/dq;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/bz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ca;->a:Lcom/google/android/gms/tagmanager/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/ap;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->a:Lcom/google/android/gms/tagmanager/bz;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/bz;->a(Lcom/google/android/gms/tagmanager/bz;J)V

    return-void
.end method

.method public b(Lcom/google/android/gms/tagmanager/ap;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->a:Lcom/google/android/gms/tagmanager/bz;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/bz;->a(Lcom/google/android/gms/tagmanager/bz;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permanent failure dispatching hitId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bg;->e(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/tagmanager/ap;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->a:Lcom/google/android/gms/tagmanager/bz;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ca;->a:Lcom/google/android/gms/tagmanager/bz;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bz;->a(Lcom/google/android/gms/tagmanager/bz;)Lcom/google/android/gms/internal/te;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/te;->a()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/tagmanager/bz;->a(Lcom/google/android/gms/tagmanager/bz;JJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/32 v2, 0xdbba00

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ca;->a:Lcom/google/android/gms/tagmanager/bz;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/bz;->a(Lcom/google/android/gms/tagmanager/bz;)Lcom/google/android/gms/internal/te;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/te;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->a:Lcom/google/android/gms/tagmanager/bz;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/bz;->a(Lcom/google/android/gms/tagmanager/bz;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Giving up on failed hitId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/ap;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bg;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
