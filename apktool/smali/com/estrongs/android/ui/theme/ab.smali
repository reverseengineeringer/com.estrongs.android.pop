.class Lcom/estrongs/android/ui/theme/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/ab;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ab;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->c(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ab;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->finish()V

    const/4 v0, 0x0

    return v0
.end method
