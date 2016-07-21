.class Lcom/flurry/sdk/gs$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gs$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gs$a;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs$a$2;->a:Lcom/flurry/sdk/gs$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/gs$a$2;->a:Lcom/flurry/sdk/gs$a;

    iget-object v0, v0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->w(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gs$a$2;->a:Lcom/flurry/sdk/gs$a;

    iget-object v0, v0, Lcom/flurry/sdk/gs$a;->a:Lcom/flurry/sdk/gs;

    invoke-static {v0}, Lcom/flurry/sdk/gs;->w(Lcom/flurry/sdk/gs;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method
