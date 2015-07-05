.class Lcom/estrongs/android/ui/e/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/an;->a:Lcom/estrongs/android/ui/e/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/o;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/an;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/o;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/ui/e/ao;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/ao;-><init>(Lcom/estrongs/android/ui/e/an;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/o;->a(Lcom/estrongs/android/ui/pcs/n;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/o;->a(Z)V

    const/4 v0, 0x0

    return v0
.end method
