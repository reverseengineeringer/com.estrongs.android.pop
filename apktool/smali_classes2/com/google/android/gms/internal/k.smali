.class public final Lcom/google/android/gms/internal/k;
.super Lcom/google/android/gms/internal/zd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zd",
        "<",
        "Lcom/google/android/gms/internal/k;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lcom/google/android/gms/internal/k;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/google/android/gms/internal/n;

.field public c:Lcom/google/android/gms/internal/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zd;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/k;->c()Lcom/google/android/gms/internal/k;

    return-void
.end method

.method public static a()[Lcom/google/android/gms/internal/k;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/k;->d:[Lcom/google/android/gms/internal/k;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/zh;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/k;->d:[Lcom/google/android/gms/internal/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/k;

    sput-object v0, Lcom/google/android/gms/internal/k;->d:[Lcom/google/android/gms/internal/k;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/k;->d:[Lcom/google/android/gms/internal/k;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/zc;)Lcom/google/android/gms/internal/k;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zc;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/k;->a(Lcom/google/android/gms/internal/zc;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zc;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/k;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/n;

    invoke-direct {v0}, Lcom/google/android/gms/internal/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zc;->a(Lcom/google/android/gms/internal/zi;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/g;

    invoke-direct {v0}, Lcom/google/android/gms/internal/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zc;->a(Lcom/google/android/gms/internal/zi;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/internal/zzrq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/k;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/k;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrq;->a(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrq;->a(ILcom/google/android/gms/internal/zi;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrq;->a(ILcom/google/android/gms/internal/zi;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zd;->a(Lcom/google/android/gms/internal/zzrq;)V

    return-void
.end method

.method protected b()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zd;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/k;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/k;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrq;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrq;->c(ILcom/google/android/gms/internal/zi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzrq;->c(ILcom/google/android/gms/internal/zi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public synthetic b(Lcom/google/android/gms/internal/zc;)Lcom/google/android/gms/internal/zi;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/k;->a(Lcom/google/android/gms/internal/zc;)Lcom/google/android/gms/internal/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/gms/internal/k;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/k;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    iput-object v1, p0, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    iput-object v1, p0, Lcom/google/android/gms/internal/k;->r:Lcom/google/android/gms/internal/zf;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/k;->s:I

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/k;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/k;

    iget-object v1, p0, Lcom/google/android/gms/internal/k;->a:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/k;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    if-nez v1, :cond_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/k;->a(Lcom/google/android/gms/internal/zd;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/k;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    iget-object v2, p1, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    iget-object v2, p1, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/k;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/k;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/k;->b:Lcom/google/android/gms/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/n;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/k;->c:Lcom/google/android/gms/internal/g;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/g;->hashCode()I

    move-result v1

    goto :goto_2
.end method
