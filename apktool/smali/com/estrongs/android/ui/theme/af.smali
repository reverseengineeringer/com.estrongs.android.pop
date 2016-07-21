.class Lcom/estrongs/android/ui/theme/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/af;->a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/af;->a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->a(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/af;->a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->finish()V

    const/4 v0, 0x0

    return v0
.end method
