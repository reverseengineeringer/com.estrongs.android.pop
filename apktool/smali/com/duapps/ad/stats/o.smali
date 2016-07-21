.class Lcom/duapps/ad/stats/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/duapps/ad/stats/n;


# direct methods
.method constructor <init>(Lcom/duapps/ad/stats/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duapps/ad/stats/o;->b:Lcom/duapps/ad/stats/n;

    iput-object p2, p0, Lcom/duapps/ad/stats/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/duapps/ad/stats/o;->b:Lcom/duapps/ad/stats/n;

    invoke-static {v0}, Lcom/duapps/ad/stats/n;->a(Lcom/duapps/ad/stats/n;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duapps/ad/stats/o;->b:Lcom/duapps/ad/stats/n;

    iget-object v1, p0, Lcom/duapps/ad/stats/o;->b:Lcom/duapps/ad/stats/n;

    invoke-static {v1}, Lcom/duapps/ad/stats/n;->b(Lcom/duapps/ad/stats/n;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duapps/ad/stats/o;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duapps/ad/stats/n;->a(Lcom/duapps/ad/stats/n;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/stats/o;->b:Lcom/duapps/ad/stats/n;

    invoke-static {v0}, Lcom/duapps/ad/stats/n;->b(Lcom/duapps/ad/stats/n;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/dianxinos/a/a/e;->toast_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/dianxinos/a/a/d;->toast_message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/duapps/ad/stats/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/o;->b:Lcom/duapps/ad/stats/n;

    invoke-static {v0}, Lcom/duapps/ad/stats/n;->a(Lcom/duapps/ad/stats/n;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duapps/ad/stats/o;->b:Lcom/duapps/ad/stats/n;

    invoke-static {v0}, Lcom/duapps/ad/stats/n;->a(Lcom/duapps/ad/stats/n;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
