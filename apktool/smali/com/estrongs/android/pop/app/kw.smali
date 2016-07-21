.class Lcom/estrongs/android/pop/app/kw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/kw;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kw;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    const-class v2, Lcom/estrongs/android/pop/app/RecommItemImageViewer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "position"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/kw;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->b(Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "index"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kw;->a:Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
