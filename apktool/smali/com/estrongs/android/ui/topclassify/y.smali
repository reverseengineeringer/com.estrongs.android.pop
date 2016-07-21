.class Lcom/estrongs/android/ui/topclassify/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/topclassify/x;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/topclassify/x;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/y;->a:Lcom/estrongs/android/ui/topclassify/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/topclassify/d;

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/y;->a:Lcom/estrongs/android/ui/topclassify/x;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/topclassify/x;->a(Lcom/estrongs/android/ui/topclassify/x;Lcom/estrongs/android/ui/topclassify/d;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/y;->a:Lcom/estrongs/android/ui/topclassify/x;

    iget-object v2, v0, Lcom/estrongs/android/ui/topclassify/d;->a:Ljava/lang/String;

    iget v0, v0, Lcom/estrongs/android/ui/topclassify/d;->d:I

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/ui/topclassify/x;->a(Lcom/estrongs/android/ui/topclassify/x;Ljava/lang/String;I)V

    return-void
.end method
