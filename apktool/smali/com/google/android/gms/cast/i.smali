.class public final Lcom/google/android/gms/cast/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/c;


# instance fields
.field final a:Lcom/google/android/gms/cast/CastDevice;

.field final b:Lcom/google/android/gms/cast/k;

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/cast/j;->a:Lcom/google/android/gms/cast/CastDevice;

    iput-object v0, p0, Lcom/google/android/gms/cast/i;->a:Lcom/google/android/gms/cast/CastDevice;

    iget-object v0, p1, Lcom/google/android/gms/cast/j;->b:Lcom/google/android/gms/cast/k;

    iput-object v0, p0, Lcom/google/android/gms/cast/i;->b:Lcom/google/android/gms/cast/k;

    invoke-static {p1}, Lcom/google/android/gms/cast/j;->a(Lcom/google/android/gms/cast/j;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/i;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/j;Lcom/google/android/gms/cast/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/i;-><init>(Lcom/google/android/gms/cast/j;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/i;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/i;->c:I

    return v0
.end method

.method public static a(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/k;)Lcom/google/android/gms/cast/j;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/j;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/j;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/k;)V

    return-object v0
.end method
