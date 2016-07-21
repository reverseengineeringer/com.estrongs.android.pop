.class Lcom/estrongs/android/view/ff;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/eu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/eu;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ff;->a:Lcom/estrongs/android/view/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/ff;->a:Lcom/estrongs/android/view/eu;

    invoke-static {v0}, Lcom/estrongs/android/view/eu;->e(Lcom/estrongs/android/view/eu;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/view/ff;->a:Lcom/estrongs/android/view/eu;

    invoke-static {v0}, Lcom/estrongs/android/view/eu;->a(Lcom/estrongs/android/view/eu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/ad;->d(Ljava/lang/String;Z)V

    return-void
.end method
