.class Lcom/flurry/sdk/ej$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/kn$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kn$a",
        "<",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ej$a;

.field final synthetic b:I

.field final synthetic c:Lcom/flurry/sdk/ej;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ej;Lcom/flurry/sdk/ej$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ej$1;->c:Lcom/flurry/sdk/ej;

    iput-object p2, p0, Lcom/flurry/sdk/ej$1;->a:Lcom/flurry/sdk/ej$a;

    iput p3, p0, Lcom/flurry/sdk/ej$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/kn;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/kn",
            "<",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/ej$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/ej$1$1;-><init>(Lcom/flurry/sdk/ej$1;Lcom/flurry/sdk/kn;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/js;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/kn;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ej$1;->a(Lcom/flurry/sdk/kn;Landroid/graphics/Bitmap;)V

    return-void
.end method
