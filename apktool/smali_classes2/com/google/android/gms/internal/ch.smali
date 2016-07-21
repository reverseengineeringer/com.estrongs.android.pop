.class Lcom/google/android/gms/internal/ch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/cm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ch;->a:Lcom/google/android/gms/internal/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/cm;)I
    .locals 4

    iget-wide v0, p1, Lcom/google/android/gms/internal/cm;->a:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/cm;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/cm;

    check-cast p2, Lcom/google/android/gms/internal/cm;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ch;->a(Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/cm;)I

    move-result v0

    return v0
.end method
