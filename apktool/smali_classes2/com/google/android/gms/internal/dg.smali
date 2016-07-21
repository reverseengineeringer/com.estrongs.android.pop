.class public Lcom/google/android/gms/internal/dg;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/dg;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/dg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/dg;->a:J

    iput-object p3, p0, Lcom/google/android/gms/internal/dg;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/dg;->c:Lcom/google/android/gms/internal/dg;

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/dg;->a:J

    return-wide v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()Lcom/google/android/gms/internal/dg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->c:Lcom/google/android/gms/internal/dg;

    return-object v0
.end method
