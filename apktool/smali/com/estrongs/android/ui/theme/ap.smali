.class Lcom/estrongs/android/ui/theme/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/ap;->a:Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ap;->a:Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->a(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ap;->a:Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->a(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ap;->a:Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->a(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ap;->a:Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->b(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;)V

    goto :goto_0
.end method
