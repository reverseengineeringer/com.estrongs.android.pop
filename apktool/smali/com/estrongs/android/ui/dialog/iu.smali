.class Lcom/estrongs/android/ui/dialog/iu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/q;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/ip;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ip;Lcom/estrongs/android/ui/a/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/iu;->b:Lcom/estrongs/android/ui/dialog/ip;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/iu;->a:Lcom/estrongs/android/ui/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/iu;->a:Lcom/estrongs/android/ui/a/q;

    invoke-virtual {v0, p3, p4}, Lcom/estrongs/android/ui/a/q;->a(II)Lcom/estrongs/android/ui/a/u;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/iu;->b:Lcom/estrongs/android/ui/dialog/ip;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/u;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/ip;->a(Lcom/estrongs/android/ui/dialog/ip;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/iu;->b:Lcom/estrongs/android/ui/dialog/ip;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ip;->c()V

    const/4 v0, 0x0

    return v0
.end method
