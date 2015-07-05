.class Lcom/estrongs/android/ui/e/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/u;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/u;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/v;->a:Lcom/estrongs/android/ui/e/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/v;->a:Lcom/estrongs/android/ui/e/u;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/u;->b:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/v;->a:Lcom/estrongs/android/ui/e/u;

    iget-object v1, v1, Lcom/estrongs/android/ui/e/u;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method
