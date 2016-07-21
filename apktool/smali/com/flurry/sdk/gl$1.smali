.class Lcom/flurry/sdk/gl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gl;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gl;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gl$1;->a:Lcom/flurry/sdk/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/gl$1;->a:Lcom/flurry/sdk/gl;

    invoke-static {v1}, Lcom/flurry/sdk/gl;->a(Lcom/flurry/sdk/gl;)Lcom/flurry/sdk/gp$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gl$1;->a:Lcom/flurry/sdk/gl;

    invoke-virtual {v1}, Lcom/flurry/sdk/gl;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/gl$1;->a:Lcom/flurry/sdk/gl;

    invoke-static {v1}, Lcom/flurry/sdk/gl;->a(Lcom/flurry/sdk/gl;)Lcom/flurry/sdk/gp$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/flurry/sdk/gp$b;->q()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
