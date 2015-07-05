.class Lcom/estrongs/android/ui/theme/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ai;

.field final synthetic b:Lcom/estrongs/android/ui/theme/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/b;Lcom/estrongs/android/ui/theme/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/d;->b:Lcom/estrongs/android/ui/theme/b;

    iput-object p2, p0, Lcom/estrongs/android/ui/theme/d;->a:Lcom/estrongs/android/ui/theme/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/d;->a:Lcom/estrongs/android/ui/theme/ai;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ai;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/d;->b:Lcom/estrongs/android/ui/theme/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/theme/b;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->b(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/d;->b:Lcom/estrongs/android/ui/theme/b;

    iget-object v1, v1, Lcom/estrongs/android/ui/theme/b;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->a(Lcom/estrongs/android/ui/theme/ModifyThemeActivity;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/d;->b:Lcom/estrongs/android/ui/theme/b;

    iget-object v0, v0, Lcom/estrongs/android/ui/theme/b;->a:Lcom/estrongs/android/ui/theme/ModifyThemeActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/ModifyThemeActivity;->setResult(I)V

    :cond_0
    return-void
.end method
