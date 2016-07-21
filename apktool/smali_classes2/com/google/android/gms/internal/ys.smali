.class Lcom/google/android/gms/internal/ys;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B

.field final synthetic c:Lcom/google/android/gms/internal/yq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/yq;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ys;->c:Lcom/google/android/gms/internal/yq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ys;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ys;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ys;->c:Lcom/google/android/gms/internal/yq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ys;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ys;->b:[B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/yq;->b(Ljava/lang/String;[B)V

    return-void
.end method
