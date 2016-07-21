.class Lcom/estrongs/android/pop/app/analysis/viewholders/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/analysis/viewholders/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/viewholders/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/m;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/m;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->a(Lcom/estrongs/android/pop/app/analysis/viewholders/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/m;->a:Lcom/estrongs/android/pop/app/analysis/viewholders/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->b(Lcom/estrongs/android/pop/app/analysis/viewholders/l;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
