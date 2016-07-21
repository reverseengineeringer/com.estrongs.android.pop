.class Lcom/flurry/sdk/fh$2;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/fh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fh;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/fh$2;->c:Lcom/flurry/sdk/fh;

    iput-object p2, p0, Lcom/flurry/sdk/fh$2;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/flurry/sdk/fh$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/fh$2;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/flurry/sdk/fh$2;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
