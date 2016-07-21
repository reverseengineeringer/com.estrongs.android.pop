.class Lcom/estrongs/android/pop/app/network/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/network/g;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/g;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->b(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Lcom/estrongs/android/l/k;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/l/k;->b(I)Lcom/estrongs/android/l/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/network/g;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    new-instance v2, Lcom/estrongs/android/ui/dialog/le;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/network/g;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/network/g;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->b(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Lcom/estrongs/android/l/k;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/estrongs/android/ui/dialog/le;-><init>(Landroid/content/Context;Lcom/estrongs/android/l/k;Lcom/estrongs/android/l/m;)V

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->a(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;Lcom/estrongs/android/ui/dialog/le;)Lcom/estrongs/android/ui/dialog/le;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/network/g;->a:Lcom/estrongs/android/pop/app/network/EsNetworkActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/network/EsNetworkActivity;->e(Lcom/estrongs/android/pop/app/network/EsNetworkActivity;)Lcom/estrongs/android/ui/dialog/le;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/le;->show()V

    :cond_0
    return-void
.end method
