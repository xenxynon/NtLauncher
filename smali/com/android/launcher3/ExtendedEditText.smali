.class public Lcom/android/launcher3/ExtendedEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;
    }
.end annotation


# instance fields
.field private mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

.field private mForceDisableSuggestions:Z

.field private final mOnFocusChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View$OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/ExtendedEditText;->mOnFocusChangeListeners:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    return-void
.end method

.method private showSoftInput()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->show(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public addOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/ExtendedEditText;->mOnFocusChangeListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchBackKey()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    iget-object p0, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    :cond_0
    return-void
.end method

.method public forceDisableSuggestions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    return-void
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 0

    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method public hideKeyboard()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->hideKeyboard()V

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method

.method public isSuggestionsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/EditText;->isSuggestionsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/launcher3/ExtendedEditText;->mOnFocusChangeListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View$OnFocusChangeListener;

    invoke-interface {p3, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onKeyboardShown()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->keyboardStateManager()Lcom/android/launcher3/logging/KeyboardStateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;->SHOW:Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/logging/KeyboardStateManager;->setKeyboardState(Lcom/android/launcher3/logging/KeyboardStateManager$KeyboardState;)V

    return-void
.end method

.method public removeOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/ExtendedEditText;->mOnFocusChangeListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnBackKeyListener(Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    return-void
.end method

.method public showKeyboard()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->onKeyboardShown()V

    invoke-direct {p0}, Lcom/android/launcher3/ExtendedEditText;->showSoftInput()Z

    return-void
.end method
