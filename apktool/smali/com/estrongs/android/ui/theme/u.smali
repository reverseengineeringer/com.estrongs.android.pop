.class Lcom/estrongs/android/ui/theme/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/u;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/u;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)Lcom/estrongs/android/ui/view/ColorPickerView;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/ColorPickerView;->a(I)V

    return-void
.end method
