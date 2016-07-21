.class Lcom/estrongs/android/ui/theme/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/al;

.field final synthetic b:Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;Lcom/estrongs/android/ui/theme/al;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/ax;->b:Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;

    iput-object p2, p0, Lcom/estrongs/android/ui/theme/ax;->a:Lcom/estrongs/android/ui/theme/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ax;->a:Lcom/estrongs/android/ui/theme/al;

    const-string v1, "old"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ax;->b:Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->a(Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ax;->b:Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->a(Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ax;->b:Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;

    const v1, 0x7f0806ae

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->b(I)V

    goto :goto_0
.end method
