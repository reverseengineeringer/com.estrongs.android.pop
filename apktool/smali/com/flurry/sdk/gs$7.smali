.class Lcom/flurry/sdk/gs$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gs;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gs;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/gs$7;->a:Lcom/flurry/sdk/gs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/flurry/sdk/gs$7;->a:Lcom/flurry/sdk/gs;

    sget-object v1, Lcom/flurry/sdk/bb;->u:Lcom/flurry/sdk/bb;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/sdk/gs$7;->a:Lcom/flurry/sdk/gs;

    invoke-virtual {v3}, Lcom/flurry/sdk/gs;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/gs;->a(Lcom/flurry/sdk/bb;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    return-void
.end method
