.class Lcom/estrongs/android/ui/theme/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/m;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/m;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->finish()V

    return-void
.end method
