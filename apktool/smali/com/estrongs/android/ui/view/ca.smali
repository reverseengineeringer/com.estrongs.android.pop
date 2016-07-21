.class Lcom/estrongs/android/ui/view/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ca;->a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ca;->a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ca;->a:Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    invoke-static {v2}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->b(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;II)V

    return-void
.end method
