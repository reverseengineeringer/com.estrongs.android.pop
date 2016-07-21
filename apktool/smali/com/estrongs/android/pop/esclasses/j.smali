.class Lcom/estrongs/android/pop/esclasses/j;
.super Ljava/lang/Object;


# instance fields
.field public a:[[Ljava/lang/String;

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/esclasses/j;->a:[[Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/esclasses/j;->b:Landroid/util/SparseArray;

    return-void
.end method
