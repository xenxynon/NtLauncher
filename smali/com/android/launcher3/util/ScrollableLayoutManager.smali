.class public Lcom/android/launcher3/util/ScrollableLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# instance fields
.field protected final mCachedSizes:Landroid/util/SparseIntArray;

.field private mLastValidHeightIndex:I

.field private mRv:Landroidx/recyclerview/widget/RecyclerView;

.field private mTotalHeightCache:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mCachedSizes:Landroid/util/SparseIntArray;

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    iput v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    return-void
.end method

.method private getItemsHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    array-length v1, v1

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    iput v3, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    :cond_0
    if-le p2, v0, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    if-gez p2, :cond_2

    move p2, v3

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    if-gt p2, v0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    aget p0, p0, p2

    return p0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    aget v1, v1, v0

    :goto_1
    if-ge v0, p2, :cond_4

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/util/ScrollableLayoutManager;->incrementTotalHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mTotalHeightCache:[I

    add-int/lit8 v0, v0, 0x1

    aput v1, v2, v0

    goto :goto_1

    :cond_4
    iput p2, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    return v1
.end method

.method private invalidateScrollCache()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mLastValidHeightIndex:I

    return-void
.end method

.method private updateCachedSize(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mCachedSizes:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->invalidateScrollCache()V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
.method protected calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;[I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3d4cccd0    # 0.050000012f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    const/4 p1, 0x1

    aget v0, p2, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aput p0, p2, p1

    return-void
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    iget-object p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    if-gez v2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/util/ScrollableLayoutManager;->getItemsHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    :cond_5
    :goto_1
    return v0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->getItemsHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)I

    move-result p0

    :goto_1
    return p0
.end method

.method protected incrementTotalHeight(Landroidx/recyclerview/widget/RecyclerView$Adapter;II)I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mCachedSizes:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    add-int/2addr p3, p0

    return p3
.end method

.method public layoutDecorated(Landroid/view/View;IIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ScrollableLayoutManager;->updateCachedSize(Landroid/view/View;)V

    return-void
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ScrollableLayoutManager;->updateCachedSize(Landroid/view/View;)V

    return-void
.end method

.method public onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/android/launcher3/util/ScrollableLayoutManager;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-direct {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->invalidateScrollCache()V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->invalidateScrollCache()V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    invoke-direct {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->invalidateScrollCache()V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-direct {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->invalidateScrollCache()V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/launcher3/util/ScrollableLayoutManager;->invalidateScrollCache()V

    return-void
.end method
