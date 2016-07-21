.class Lcom/google/android/gms/maps/d;
.super Lcom/google/android/gms/maps/a/bm;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/g;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/d;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/d;->a:Lcom/google/android/gms/maps/g;

    invoke-direct {p0}, Lcom/google/android/gms/maps/a/bm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/a/d;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/d;->a:Lcom/google/android/gms/maps/g;

    new-instance v1, Lcom/google/android/gms/maps/b;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/b;-><init>(Lcom/google/android/gms/maps/a/d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/g;->a(Lcom/google/android/gms/maps/b;)V

    return-void
.end method
