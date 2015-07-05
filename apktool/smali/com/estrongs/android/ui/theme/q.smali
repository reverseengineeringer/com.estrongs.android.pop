.class Lcom/estrongs/android/ui/theme/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/ui/theme/ThemeActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/theme/ThemeActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/theme/q;->b:Lcom/estrongs/android/ui/theme/ThemeActivity;

    iput p2, p0, Lcom/estrongs/android/ui/theme/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const v0, 0x7f02010a

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget v0, p0, Lcom/estrongs/android/ui/theme/q;->a:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/estrongs/android/ui/theme/q;->a:I

    iget v2, p0, Lcom/estrongs/android/ui/theme/q;->a:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/estrongs/android/ui/theme/q;->a:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020282

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget v0, p0, Lcom/estrongs/android/ui/theme/q;->a:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/estrongs/android/ui/theme/q;->a:I

    iget v2, p0, Lcom/estrongs/android/ui/theme/q;->a:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/estrongs/android/ui/theme/q;->a:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
