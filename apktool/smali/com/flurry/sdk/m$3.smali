.class Lcom/flurry/sdk/m$3;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/flurry/sdk/m;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/m;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/m$3;->c:Lcom/flurry/sdk/m;

    iput-object p2, p0, Lcom/flurry/sdk/m$3;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/flurry/sdk/m$3;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/m$3;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/flurry/sdk/m$3;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
