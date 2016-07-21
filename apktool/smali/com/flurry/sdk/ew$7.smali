.class Lcom/flurry/sdk/ew$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ew;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ew$7;->a:Lcom/flurry/sdk/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/ew$7;->a:Lcom/flurry/sdk/ew;

    invoke-static {v0}, Lcom/flurry/sdk/ew;->c(Lcom/flurry/sdk/ew;)Lcom/flurry/sdk/hi;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/hi;->a()V

    return-void
.end method
