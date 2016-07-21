.class Lcom/flurry/sdk/ej$1$1;
.super Lcom/flurry/sdk/ly;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kn;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/flurry/sdk/ej$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ej$1;Lcom/flurry/sdk/kn;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ej$1$1;->c:Lcom/flurry/sdk/ej$1;

    iput-object p2, p0, Lcom/flurry/sdk/ej$1$1;->a:Lcom/flurry/sdk/kn;

    iput-object p3, p0, Lcom/flurry/sdk/ej$1$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/16 v2, 0x12c

    iget-object v0, p0, Lcom/flurry/sdk/ej$1$1;->a:Lcom/flurry/sdk/kn;

    invoke-virtual {v0}, Lcom/flurry/sdk/kn;->h()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ej$1$1;->c:Lcom/flurry/sdk/ej$1;

    iget-object v0, v0, Lcom/flurry/sdk/ej$1;->a:Lcom/flurry/sdk/ej$a;

    iget-object v1, p0, Lcom/flurry/sdk/ej$1$1;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/ej$a;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    if-lt v0, v2, :cond_3

    const/16 v1, 0x190

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/flurry/sdk/ej$1$1;->a:Lcom/flurry/sdk/kn;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/ej$1$1;->c:Lcom/flurry/sdk/ej$1;

    iget-object v1, v1, Lcom/flurry/sdk/ej$1;->c:Lcom/flurry/sdk/ej;

    iget-object v2, p0, Lcom/flurry/sdk/ej$1$1;->c:Lcom/flurry/sdk/ej$1;

    iget v2, v2, Lcom/flurry/sdk/ej$1;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/flurry/sdk/ej$1$1;->c:Lcom/flurry/sdk/ej$1;

    iget-object v3, v3, Lcom/flurry/sdk/ej$1;->a:Lcom/flurry/sdk/ej$a;

    invoke-virtual {v1, v0, v2, v3}, Lcom/flurry/sdk/ej;->a(Ljava/lang/String;ILcom/flurry/sdk/ej$a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/ej$1$1;->c:Lcom/flurry/sdk/ej$1;

    iget-object v0, v0, Lcom/flurry/sdk/ej$1;->a:Lcom/flurry/sdk/ej$a;

    invoke-interface {v0}, Lcom/flurry/sdk/ej$a;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/ej$1$1;->c:Lcom/flurry/sdk/ej$1;

    iget-object v0, v0, Lcom/flurry/sdk/ej$1;->a:Lcom/flurry/sdk/ej$a;

    invoke-interface {v0}, Lcom/flurry/sdk/ej$a;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/ej$1$1;->c:Lcom/flurry/sdk/ej$1;

    iget-object v0, v0, Lcom/flurry/sdk/ej$1;->a:Lcom/flurry/sdk/ej$a;

    invoke-interface {v0}, Lcom/flurry/sdk/ej$a;->a()V

    goto :goto_0
.end method
