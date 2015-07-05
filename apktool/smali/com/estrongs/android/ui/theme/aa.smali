.class Lcom/estrongs/android/ui/theme/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->d(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->finish()V

    return-void
.end method
