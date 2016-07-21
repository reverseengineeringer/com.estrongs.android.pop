.class Lcom/estrongs/android/ui/theme/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeFolderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/ag;->a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ag;->a:Lcom/estrongs/android/ui/theme/ThemeFolderActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ThemeFolderActivity;->finish()V

    return-void
.end method
