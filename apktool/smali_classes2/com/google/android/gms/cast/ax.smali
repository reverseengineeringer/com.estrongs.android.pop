.class Lcom/google/android/gms/cast/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/internal/y;


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/ak;

.field private b:Lcom/google/android/gms/common/api/n;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/ak;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/cast/ax;->a:Lcom/google/android/gms/cast/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/cast/ax;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/cast/ax;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/cast/ax;->c:J

    return-wide v0
.end method

.method public a(Lcom/google/android/gms/common/api/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/ax;->b:Lcom/google/android/gms/common/api/n;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/ax;->b:Lcom/google/android/gms/common/api/n;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No GoogleApiClient available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/a;->b:Lcom/google/android/gms/cast/d;

    iget-object v1, p0, Lcom/google/android/gms/cast/ax;->b:Lcom/google/android/gms/common/api/n;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/cast/d;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/w;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/cast/ay;

    invoke-direct {v1, p0, p3, p4}, Lcom/google/android/gms/cast/ay;-><init>(Lcom/google/android/gms/cast/ax;J)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/w;->a(Lcom/google/android/gms/common/api/aa;)V

    return-void
.end method
