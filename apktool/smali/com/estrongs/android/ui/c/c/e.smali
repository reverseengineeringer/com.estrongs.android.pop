.class Lcom/estrongs/android/ui/c/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/c/d;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/c/e;->a:Lcom/estrongs/android/ui/c/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/c/e;->a:Lcom/estrongs/android/ui/c/c/d;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/c/d;->a:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/c/e;->a:Lcom/estrongs/android/ui/c/c/d;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/c/d;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/c/e;->a:Lcom/estrongs/android/ui/c/c/d;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/c/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/j/d;->d(Landroid/content/Context;)V

    return-void
.end method
