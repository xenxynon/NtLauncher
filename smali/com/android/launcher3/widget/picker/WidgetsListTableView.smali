.class public Lcom/android/launcher3/widget/picker/WidgetsListTableView;
.super Landroid/widget/TableLayout;
.source "SourceFile"


# instance fields
.field private mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0}, Landroid/widget/TableLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TableLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/TableLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/TableLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TableLayout;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    array-length v0, v0

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/TableLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->mStateSet:[I

    invoke-static {p1, p0}, Landroid/widget/TableLayout;->mergeDrawableStates([I[I)[I

    return-object p1
.end method

.method public setListDrawableState(Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListTableView;->mListDrawableState:Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    invoke-virtual {p0}, Landroid/widget/TableLayout;->refreshDrawableState()V

    return-void
.end method
