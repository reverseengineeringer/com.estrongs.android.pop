.class Lcom/estrongs/android/pop/app/kh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/pop/app/RecommAcitivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/RecommAcitivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/kh;->b:Lcom/estrongs/android/pop/app/RecommAcitivity;

    iput p2, p0, Lcom/estrongs/android/pop/app/kh;->a:I

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

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kh;->b:Lcom/estrongs/android/pop/app/RecommAcitivity;

    const-class v2, Lcom/estrongs/android/pop/app/RecommItemDetailAcitivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "position"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.estrongs.intent.extra.TITLE"

    iget v2, p0, Lcom/estrongs/android/pop/app/kh;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/kh;->b:Lcom/estrongs/android/pop/app/RecommAcitivity;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/RecommAcitivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
