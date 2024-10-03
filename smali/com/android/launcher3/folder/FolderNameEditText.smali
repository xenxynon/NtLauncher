.class public Lcom/android/launcher3/folder/FolderNameEditText;
.super Lcom/android/launcher3/ExtendedEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/FolderNameEditText$FolderNameEditTextInputConnection;
    }
.end annotation


# instance fields
.field private mEnteredCompose:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/ExtendedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderNameEditText;->mEnteredCompose:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/folder/FolderNameEditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderNameEditText;->mEnteredCompose:Z

    return p1
.end method


# virtual methods
.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderNameEditText;->mEnteredCompose:Z

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/folder/FolderNameEditText$FolderNameEditTextInputConnection;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/folder/FolderNameEditText$FolderNameEditTextInputConnection;-><init>(Lcom/android/launcher3/folder/FolderNameEditText;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    if-lez p3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderNameEditText;->mEnteredCompose:Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/ExtendedEditText;->reset()V

    invoke-virtual {p0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->hideKeyboard()V

    return-void
.end method

.method protected setEnteredCompose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/FolderNameEditText;->mEnteredCompose:Z

    return-void
.end method
