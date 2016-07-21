.class public Lcom/google/android/gms/internal/ql;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/me;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/qb;

.field private final b:Lcom/google/android/gms/internal/qa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/qa;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ql;->b:Lcom/google/android/gms/internal/qa;

    invoke-interface {p1}, Lcom/google/android/gms/internal/qa;->i()Lcom/google/android/gms/internal/qb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ql;->a:Lcom/google/android/gms/internal/qb;

    return-void
.end method
