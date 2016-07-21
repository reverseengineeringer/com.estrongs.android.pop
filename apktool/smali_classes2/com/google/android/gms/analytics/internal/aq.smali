.class Lcom/google/android/gms/analytics/internal/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/an;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/an;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/aq;->a:Lcom/google/android/gms/analytics/internal/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/aq;->a:Lcom/google/android/gms/analytics/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/an;->c()V

    return-void
.end method
