.class Lcom/flurry/sdk/gl$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gl;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gl;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gl$2;->a:Lcom/flurry/sdk/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gl$2;->a:Lcom/flurry/sdk/gl;

    invoke-static {v0}, Lcom/flurry/sdk/gl;->a(Lcom/flurry/sdk/gl;)Lcom/flurry/sdk/gp$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gl$2;->a:Lcom/flurry/sdk/gl;

    invoke-static {v0}, Lcom/flurry/sdk/gl;->a(Lcom/flurry/sdk/gl;)Lcom/flurry/sdk/gp$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/gp$b;->q()V

    :cond_0
    return-void
.end method
