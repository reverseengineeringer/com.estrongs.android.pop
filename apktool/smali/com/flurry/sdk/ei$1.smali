.class Lcom/flurry/sdk/ei$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/ej$a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/flurry/sdk/ei;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ei;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ei$1;->c:Lcom/flurry/sdk/ei;

    iput-object p2, p0, Lcom/flurry/sdk/ei$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/ei$1;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/ei$1;->c:Lcom/flurry/sdk/ei;

    iget-object v1, p0, Lcom/flurry/sdk/ei$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/flurry/sdk/ei$1;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ei$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
