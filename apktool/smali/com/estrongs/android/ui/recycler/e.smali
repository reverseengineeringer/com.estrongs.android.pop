.class Lcom/estrongs/android/ui/recycler/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

.field final synthetic b:Lcom/estrongs/android/ui/recycler/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/recycler/d;Lcom/estrongs/android/ui/topclassify/ExpandableLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/recycler/e;->b:Lcom/estrongs/android/ui/recycler/d;

    iput-object p2, p0, Lcom/estrongs/android/ui/recycler/e;->a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/recycler/e;->a:Lcom/estrongs/android/ui/topclassify/ExpandableLayout;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/topclassify/ExpandableLayout;->c()V

    return-void
.end method
