.class Lcom/flurry/sdk/hh$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/hh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/hh;I)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/hh$3;->b:Lcom/flurry/sdk/hh;

    iput p2, p0, Lcom/flurry/sdk/hh$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/hh$3;->b:Lcom/flurry/sdk/hh;

    invoke-static {v0}, Lcom/flurry/sdk/hh;->a(Lcom/flurry/sdk/hh;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/flurry/sdk/hh$3;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
