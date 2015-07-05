.class Lcom/estrongs/android/pop/app/ei;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/estrongs/android/pop/view/utils/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/OpenRecomm;

.field private b:[Lcom/estrongs/android/pop/view/utils/t;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/OpenRecomm;Landroid/content/Context;I[Lcom/estrongs/android/pop/view/utils/t;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ei;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/estrongs/android/pop/app/ei;->b:[Lcom/estrongs/android/pop/view/utils/t;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ei;->a:Lcom/estrongs/android/pop/app/OpenRecomm;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ei;->b:[Lcom/estrongs/android/pop/view/utils/t;

    aget-object v2, v0, p1

    if-eqz v2, :cond_2

    const v0, 0x7f0a031a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a031b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v3, v2, Lcom/estrongs/android/pop/view/utils/t;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, v2, Lcom/estrongs/android/pop/view/utils/t;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
