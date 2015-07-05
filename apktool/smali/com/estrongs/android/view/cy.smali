.class Lcom/estrongs/android/view/cy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cy;->a:Lcom/estrongs/android/view/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/cy;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v0}, Lcom/estrongs/android/view/cq;->e(Lcom/estrongs/android/view/cq;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/view/cy;->a:Lcom/estrongs/android/view/cq;

    invoke-static {v0}, Lcom/estrongs/android/view/cq;->a(Lcom/estrongs/android/view/cq;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/ad;->e(Ljava/lang/String;Z)V

    return-void
.end method
