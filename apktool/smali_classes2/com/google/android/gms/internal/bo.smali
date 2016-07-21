.class Lcom/google/android/gms/internal/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/bm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bo;->c:Lcom/google/android/gms/internal/bm;

    iput-object p2, p0, Lcom/google/android/gms/internal/bo;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/bo;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bo;->c:Lcom/google/android/gms/internal/bm;

    invoke-static {v0}, Lcom/google/android/gms/internal/bm;->a(Lcom/google/android/gms/internal/bm;)Lcom/google/android/gms/internal/qa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/bo;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/qa;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
