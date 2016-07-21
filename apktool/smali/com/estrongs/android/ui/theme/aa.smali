.class Lcom/estrongs/android/ui/theme/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    const v1, 0x7f0d003e

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(Lcom/estrongs/android/ui/theme/ThemeColorActivity;I)I

    move-result v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)Lcom/estrongs/android/ui/view/ColorPickerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/ColorPickerView;->setColor(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    const v1, 0x7f0d00df

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(Lcom/estrongs/android/ui/theme/ThemeColorActivity;I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    const v1, 0x7f0d0009

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(Lcom/estrongs/android/ui/theme/ThemeColorActivity;I)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    const v1, 0x7f0d0007

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(Lcom/estrongs/android/ui/theme/ThemeColorActivity;I)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->b(Lcom/estrongs/android/ui/theme/ThemeColorActivity;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/aa;->a:Lcom/estrongs/android/ui/theme/ThemeColorActivity;

    const v1, 0x7f0d000b

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/theme/ThemeColorActivity;->a(Lcom/estrongs/android/ui/theme/ThemeColorActivity;I)I

    move-result v0

    goto :goto_0
.end method
