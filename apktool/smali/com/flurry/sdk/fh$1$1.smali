.class Lcom/flurry/sdk/fh$1$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/flurry/sdk/fh$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fh$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fh$1$1;->b:Lcom/flurry/sdk/fh$1;

    iput-object p2, p0, Lcom/flurry/sdk/fh$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/fh$1$1;->b:Lcom/flurry/sdk/fh$1;

    iget-object v0, v0, Lcom/flurry/sdk/fh$1;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/flurry/sdk/fh$1$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
