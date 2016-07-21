.class Lcom/google/android/gms/internal/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/pt",
        "<",
        "Lcom/google/android/gms/internal/bt;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/au;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/au;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ax;->a:Lcom/google/android/gms/internal/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/bt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->a:Lcom/google/android/gms/internal/au;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/internal/au;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->a:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/internal/bt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->a:Lcom/google/android/gms/internal/au;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/au;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ax;->a:Lcom/google/android/gms/internal/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/au;->b(Z)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/bt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ax;->a(Lcom/google/android/gms/internal/bt;)V

    return-void
.end method
