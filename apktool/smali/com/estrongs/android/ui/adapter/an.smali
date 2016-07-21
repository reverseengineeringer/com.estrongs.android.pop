.class Lcom/estrongs/android/ui/adapter/an;
.super Lcom/estrongs/android/ui/adapter/a;


# instance fields
.field final synthetic j:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/adapter/an;->j:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/ui/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/adapter/an;->j:Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;

    invoke-static {v0}, Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;->a(Lcom/estrongs/android/ui/adapter/ListAdapter_NewNavi;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->A()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
