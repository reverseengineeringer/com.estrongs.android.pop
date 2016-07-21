.class Lcom/estrongs/android/ui/theme/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/ar;->a:Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ar;->a:Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ThemeLayoutActivity;->finish()V

    return-void
.end method
