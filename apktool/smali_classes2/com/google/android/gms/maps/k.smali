.class Lcom/google/android/gms/maps/k;
.super Lcom/google/android/gms/maps/a/cq;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/h;

.field final synthetic b:Lcom/google/android/gms/maps/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/j;Lcom/google/android/gms/maps/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/k;->b:Lcom/google/android/gms/maps/j;

    iput-object p2, p0, Lcom/google/android/gms/maps/k;->a:Lcom/google/android/gms/maps/h;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/a/s;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/k;->a:Lcom/google/android/gms/maps/h;

    new-instance v1, Lcom/google/android/gms/maps/i;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/i;-><init>(Lcom/google/android/gms/maps/a/s;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/h;->a(Lcom/google/android/gms/maps/i;)V

    return-void
.end method
