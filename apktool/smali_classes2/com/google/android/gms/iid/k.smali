.class Lcom/google/android/gms/iid/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/android/gms/iid/j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/j;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/iid/k;->a:Lcom/google/android/gms/iid/j;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/iid/k;->a:Lcom/google/android/gms/iid/j;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/iid/j;->a(Landroid/os/Message;)V

    return-void
.end method
