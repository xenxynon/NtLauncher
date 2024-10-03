.class public Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/pageindicators/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;
    }
.end annotation


# instance fields
.field private final mIsAlignOnIcon:Z

.field private mLastActivePage:I

.field private mOnActivePageChangedListener:Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mLastActivePage:I

    sget-object v1, Lcom/android/launcher3/R$styleable;->PersonalWorkSlidingTabStrip:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mIsAlignOnIcon:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static getTabWidth(Landroid/content/Context;I)I
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget v0, p0, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    div-int v0, p1, v0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    sub-int/2addr v0, p0

    sub-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mIsAlignOnIcon:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->getTabWidth(Landroid/content/Context;I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setActiveMarker(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->updateTabTextColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mOnActivePageChangedListener:Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mLastActivePage:I

    if-eq v1, p1, :cond_0

    invoke-interface {v0, p1}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;->onActivePageChanged(I)V

    :cond_0
    iput p1, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mLastActivePage:I

    return-void
.end method

.method public setMarkersCount(I)V
    .locals 0

    return-void
.end method

.method public setOnActivePageChangedListener(Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->mOnActivePageChangedListener:Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;

    return-void
.end method

.method public bridge synthetic setPaintColor(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setPaintColor(I)V

    return-void
.end method

.method public setScroll(II)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setShouldAutoHide(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicator;->setShouldAutoHide(Z)V

    return-void
.end method

.method public updateTabTextColor(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
