.class Lcom/estrongs/android/ui/dialog/jd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/adapter/s;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/iy;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/iy;Lcom/estrongs/android/ui/adapter/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jd;->b:Lcom/estrongs/android/ui/dialog/iy;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/jd;->a:Lcom/estrongs/android/ui/adapter/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jd;->a:Lcom/estrongs/android/ui/adapter/s;

    invoke-virtual {v0, p3, p4}, Lcom/estrongs/android/ui/adapter/s;->a(II)Lcom/estrongs/android/ui/adapter/w;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jd;->b:Lcom/estrongs/android/ui/dialog/iy;

    iget-object v0, v0, Lcom/estrongs/android/ui/adapter/w;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/dialog/iy;->a(Lcom/estrongs/android/ui/dialog/iy;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jd;->b:Lcom/estrongs/android/ui/dialog/iy;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/iy;->c()V

    const/4 v0, 0x0

    return v0
.end method
