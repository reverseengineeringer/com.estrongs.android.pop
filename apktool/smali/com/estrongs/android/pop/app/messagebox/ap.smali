.class Lcom/estrongs/android/pop/app/messagebox/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/ap;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ap;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->a(Lcom/estrongs/android/pop/app/messagebox/WebActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ap;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/messagebox/ap;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    const-class v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/ap;->a:Lcom/estrongs/android/pop/app/messagebox/WebActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/messagebox/WebActivity;->finish()V

    return-void
.end method
