.class Lcom/flurry/sdk/eb$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/flurry/sdk/eb$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/eb$a;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/eb$a$2;->b:Lcom/flurry/sdk/eb$a;

    iput-object p2, p0, Lcom/flurry/sdk/eb$a$2;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/eb$a$2;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/flurry/sdk/eb$a$2;->b:Lcom/flurry/sdk/eb$a;

    invoke-static {v1}, Lcom/flurry/sdk/eb$a;->a(Lcom/flurry/sdk/eb$a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
