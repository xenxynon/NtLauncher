.class public abstract Lcom/android/launcher3/FastScrollRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field protected mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/FastScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public bindFastScrollbar(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setRecyclerView(Lcom/android/launcher3/FastScrollRecyclerView;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/FastScrollRecyclerView;->onUpdateScrollbar(I)V

    return-void
.end method

.method protected getAvailableScrollBarHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbarTrackHeight()I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method protected getAvailableScrollHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p0

    sub-int/2addr p0, v0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public getScrollBarMarginBottom()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    return p0
.end method

.method public getScrollBarTop()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    return p0
.end method

.method public getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    return-object p0
.end method

.method public getScrollbarTrackHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollBarMarginBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public onFastScrollCompleted()V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isLayoutSuppressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendScrollFinishedEventToTest(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public abstract onUpdateScrollbar(I)V
.end method

.method public abstract scrollToPositionAtProgress(F)Ljava/lang/String;
.end method

.method public scrollToTop()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->reattachThumbToScroll()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object p1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz p1, :cond_0

    invoke-static {p1, p2, v0}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    iget-object p1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    aget p2, v0, v2

    float-to-int p2, p2

    aget v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->shouldBlockIntercept(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    if-nez p0, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method

.method public supportsFastScrolling()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected synchronizeScrollBarThumbOffsetToViewScroll(II)V
    .locals 0

    if-gtz p2, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    :cond_0
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getAvailableScrollBarHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    goto :goto_0
.end method
