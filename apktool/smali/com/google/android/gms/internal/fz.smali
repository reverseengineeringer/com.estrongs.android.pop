.class public Lcom/google/android/gms/internal/fz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/fq;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ga;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ga;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fz;->a:Lcom/google/android/gms/internal/ga;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/qa;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/qa;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "1"

    const-string v1, "transparentBackground"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fz;->a:Lcom/google/android/gms/internal/ga;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ga;->b(Z)V

    return-void
.end method
