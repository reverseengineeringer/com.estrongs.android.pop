.class Lcom/estrongs/android/pop/app/cleaner/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cleaner/v;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cleaner/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/y;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/y;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->v()Lcom/estrongs/android/cleaner/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/a;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/y;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/v;->b:Lcom/estrongs/android/view/w;

    invoke-virtual {v0}, Lcom/estrongs/android/view/w;->E()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/y;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/y;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/y;->a:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/v;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->finish()V

    goto :goto_0
.end method
