.class public Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
.super Lcom/android/launcher3/FastScrollRecyclerView;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

.field private final mFastScrollerOffset:Landroid/graphics/Point;

.field private mHeaderViewDimensionsProvider:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;

.field private final mScrollbarTop:I

.field private mTouchDownOnScroller:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/FastScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070192

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mScrollbarTop:I

    invoke-virtual {p0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method private isModelNotReady()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getScrollBarTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mHeaderViewDimensionsProvider:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mScrollbarTop:I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;->getHeaderViewHeight()I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mScrollbarTop:I

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method isHitOnScrollBar(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    new-instance v0, Lcom/android/launcher3/util/ScrollableLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/ScrollableLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->isHitOnScrollBar(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mTouchDownOnScroller:Z

    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mTouchDownOnScroller:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mTouchDownOnScroller:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    :cond_0
    return-void
.end method

.method public onUpdateScrollbar(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->isModelNotReady()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    if-gez p1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/FastScrollRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getAvailableScrollHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/FastScrollRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->isModelNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getAvailableScrollHeight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v2, v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    sub-float/2addr v0, v1

    :cond_1
    float-to-int p1, v0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getSectionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    return-void
.end method

.method public setHeaderViewDimensionsProvider(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->mHeaderViewDimensionsProvider:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;

    return-void
.end method
