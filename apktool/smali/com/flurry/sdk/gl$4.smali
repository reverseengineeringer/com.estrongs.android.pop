.class Lcom/flurry/sdk/gl$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gl;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gl;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gl$4;->a:Lcom/flurry/sdk/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gl$4;->a:Lcom/flurry/sdk/gl;

    invoke-static {v0}, Lcom/flurry/sdk/gl;->a(Lcom/flurry/sdk/gl;)Lcom/flurry/sdk/gp$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gl$4;->a:Lcom/flurry/sdk/gl;

    invoke-static {v0}, Lcom/flurry/sdk/gl;->b(Lcom/flurry/sdk/gl;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/flurry/sdk/gl$4;->a:Lcom/flurry/sdk/gl;

    invoke-static {v0}, Lcom/flurry/sdk/gl;->a(Lcom/flurry/sdk/gl;)Lcom/flurry/sdk/gp$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/gp$b;->s()V

    :cond_0
    return-void
.end method
