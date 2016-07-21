.class Lcom/estrongs/android/ui/theme/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/ay;->a:Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/ay;->a:Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/theme/ThemeToolbarActivity;->finish()V

    return-void
.end method
