.class Lcom/estrongs/android/ui/theme/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/x;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/x;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/x;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    const v1, 0x7f0b01ea

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/x;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->finish()V

    return v2
.end method
