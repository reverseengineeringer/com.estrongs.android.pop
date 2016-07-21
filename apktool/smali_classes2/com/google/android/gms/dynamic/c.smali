.class Lcom/google/android/gms/dynamic/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/dynamic/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/dynamic/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/c;->a:Lcom/google/android/gms/dynamic/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/dynamic/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/c;->a:Lcom/google/android/gms/dynamic/b;

    invoke-static {v0, p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/a;

    iget-object v0, p0, Lcom/google/android/gms/dynamic/c;->a:Lcom/google/android/gms/dynamic/b;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/d;

    iget-object v2, p0, Lcom/google/android/gms/dynamic/c;->a:Lcom/google/android/gms/dynamic/b;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/b;->b(Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/c;->a:Lcom/google/android/gms/dynamic/b;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/dynamic/c;->a:Lcom/google/android/gms/dynamic/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/b;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
