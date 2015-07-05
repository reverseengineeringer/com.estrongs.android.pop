.class public Lcom/estrongs/android/ui/preference/ListPreference;
.super Landroid/preference/DialogPreference;


# static fields
.field public static final a:[I


# instance fields
.field private b:[Ljava/lang/CharSequence;

.field private c:[Ljava/lang/CharSequence;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/estrongs/android/ui/preference/ListPreference;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100b2
        0x10101f8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/estrongs/android/ui/preference/ListPreference;->a:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/preference/ListPreference;->b:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/preference/ListPreference;->c:[Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/ListPreference;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/preference/ListPreference;->e:I

    return p1
.end method

.method private b()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/ListPreference;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/ListPreference;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/ListPreference;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/ListPreference;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    return-void
.end method

.method public a([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/ListPreference;->b:[Ljava/lang/CharSequence;

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/ListPreference;->c:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/ListPreference;->c:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/ListPreference;->c:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/preference/ListPreference;->e:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/ListPreference;->c:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/ListPreference;->c:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/estrongs/android/ui/preference/ListPreference;->e:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/ListPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/estrongs/android/ui/preference/ListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/estrongs/android/ui/preference/ListPreference$SavedState;

    invoke-virtual {p1}, Lcom/estrongs/android/ui/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/preference/ListPreference$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/ListPreference;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/ListPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/preference/ListPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/ListPreference;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/estrongs/android/ui/preference/ListPreference$SavedState;->a:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/ListPreference;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/preference/ListPreference;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/ListPreference;->b:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/ListPreference;->c:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/ListPreference;->b()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/preference/ListPreference;->e:I

    new-instance v0, Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/ListPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setSelectable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/ListPreference;->b:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/estrongs/android/ui/preference/ListPreference;->e:I

    new-instance v3, Lcom/estrongs/android/ui/preference/r;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/preference/r;-><init>(Lcom/estrongs/android/ui/preference/ListPreference;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/ui/dialog/cg;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p0}, Lcom/estrongs/android/ui/dialog/cg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method
