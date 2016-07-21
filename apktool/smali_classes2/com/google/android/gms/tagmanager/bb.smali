.class Lcom/google/android/gms/tagmanager/bb;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tagmanager/er;

.field final synthetic b:Lcom/google/android/gms/tagmanager/ba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/ba;ILcom/google/android/gms/tagmanager/er;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/bb;->b:Lcom/google/android/gms/tagmanager/ba;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/bb;->a:Lcom/google/android/gms/tagmanager/er;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bb;->a:Lcom/google/android/gms/tagmanager/er;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/er;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
