.class Lcom/google/android/gms/internal/lu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/pj;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/ls;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ls;Lcom/google/android/gms/internal/pj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lu;->c:Lcom/google/android/gms/internal/ls;

    iput-object p2, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/pj;

    iput-object p3, p0, Lcom/google/android/gms/internal/lu;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/lu;->a:Lcom/google/android/gms/internal/pj;

    iget-object v1, p0, Lcom/google/android/gms/internal/lu;->c:Lcom/google/android/gms/internal/ls;

    invoke-static {v1}, Lcom/google/android/gms/internal/ls;->a(Lcom/google/android/gms/internal/ls;)Lcom/google/android/gms/ads/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/w;->y()Lcom/google/android/gms/internal/sz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/lu;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/sz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pj;->b(Ljava/lang/Object;)V

    return-void
.end method
