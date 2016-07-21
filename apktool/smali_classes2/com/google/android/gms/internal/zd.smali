.class public abstract Lcom/google/android/gms/internal/zd;
.super Lcom/google/android/gms/internal/zi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zd",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/zi;"
    }
.end annotation


# instance fields
.field protected r:Lcom/google/android/gms/internal/zf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/zzrq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zf;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zf;->b(I)Lcom/google/android/gms/internal/zg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zg;->a(Lcom/google/android/gms/internal/zzrq;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/zc;I)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zc;->o()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zc;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zo;->b(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zc;->o()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zc;->a(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zk;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/zk;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/zf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zf;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zg;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/zf;->a(ILcom/google/android/gms/internal/zg;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zg;->a(Lcom/google/android/gms/internal/zk;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zf;->a(I)Lcom/google/android/gms/internal/zg;

    move-result-object v0

    goto :goto_1
.end method

.method protected final a(Lcom/google/android/gms/internal/zd;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zf;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zf;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    iget-object v1, p1, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zf;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zf;->a()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zf;->b(I)Lcom/google/android/gms/internal/zg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zg;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zd;->e()Lcom/google/android/gms/internal/zd;

    move-result-object v0

    return-object v0
.end method

.method protected final d()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zf;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zd;->r:Lcom/google/android/gms/internal/zf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zf;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public e()Lcom/google/android/gms/internal/zd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/android/gms/internal/zi;->f()Lcom/google/android/gms/internal/zi;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zd;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zh;->a(Lcom/google/android/gms/internal/zd;Lcom/google/android/gms/internal/zd;)V

    return-object v0
.end method

.method public synthetic f()Lcom/google/android/gms/internal/zi;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zd;->e()Lcom/google/android/gms/internal/zd;

    move-result-object v0

    return-object v0
.end method
