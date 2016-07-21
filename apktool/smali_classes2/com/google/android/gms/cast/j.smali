.class public final Lcom/google/android/gms/cast/j;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/google/android/gms/cast/CastDevice;

.field b:Lcom/google/android/gms/cast/k;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CastDevice parameter cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CastListener parameter cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/bn;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/cast/j;->a:Lcom/google/android/gms/cast/CastDevice;

    iput-object p2, p0, Lcom/google/android/gms/cast/j;->b:Lcom/google/android/gms/cast/k;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/j;->c:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/j;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/j;->c:I

    return v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/cast/i;
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/i;-><init>(Lcom/google/android/gms/cast/j;Lcom/google/android/gms/cast/b;)V

    return-object v0
.end method
