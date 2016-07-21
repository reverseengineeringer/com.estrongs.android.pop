.class Lcom/flurry/sdk/gy$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gy;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/gy$1;->a:Lcom/flurry/sdk/gy;

    sget-object v1, Lcom/flurry/sdk/gy$c;->c:Lcom/flurry/sdk/gy$c;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/gy$c;)V

    return-void
.end method
