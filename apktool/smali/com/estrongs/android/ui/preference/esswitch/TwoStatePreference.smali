.class public abstract Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;
.super Landroid/preference/Preference;


# static fields
.field private static b:I


# instance fields
.field a:Z

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "com.android.internal.R$id"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "summary"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->b:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .locals 6

    :try_start_0
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/util/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->e:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a:Z

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->persistBoolean(Z)Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a:Z

    return v0
.end method

.method b(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    sget v0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->c:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v1

    :goto_1
    const/16 v2, 0x8

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v3, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->d:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->f:Z

    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->d:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v1, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a(Z)V

    goto :goto_1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;

    invoke-virtual {p1}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v0, p1, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;->a:Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;

    invoke-direct {v1, v0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a()Z

    move-result v0

    iput-boolean v0, v1, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference$SavedState;->a:Z

    move-object v0, v1

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a:Z

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->getPersistedBoolean(Z)Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a(Z)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->f:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a:Z

    :goto_0
    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    iget-boolean v2, p0, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->a:Z

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_0
.end method
