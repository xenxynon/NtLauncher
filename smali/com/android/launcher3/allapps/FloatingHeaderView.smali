.class public Lcom/android/launcher3/allapps/FloatingHeaderView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Li0/f;
.implements Lcom/android/launcher3/Insettable;
.implements Li0/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "Li0/f<",
        "Li0/a;",
        ">;",
        "Lcom/android/launcher3/Insettable;",
        "Li0/a$a;"
    }
.end annotation


# instance fields
.field private mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private mFixedRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

.field private mFloatingRowsCollapsed:Z

.field private mFloatingRowsHeight:I

.field private mForwardToRecyclerView:Z

.field private final mHeaderClip:Landroid/graphics/Rect;

.field private mHeaderCollapsed:Z

.field private mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field protected mMaxTranslation:I

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field protected final mPluginRows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Li0/a;",
            "Lcom/android/launcher3/allapps/PluginHeaderRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mRVClip:Landroid/graphics/Rect;

.field private mSearchRV:Lcom/android/launcher3/allapps/SearchRecyclerView;

.field protected mSnappedScrolledY:I

.field protected mTabLayout:Landroid/view/ViewGroup;

.field private final mTabsAdditionalPaddingBottom:I

.field private final mTabsAdditionalPaddingTop:I

.field protected mTabsHidden:Z

.field private final mTempOffset:Landroid/graphics/Point;

.field private mTranslationY:I

.field private mWorkRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


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

    new-instance p2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-direct {p2, v0, v0, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mRVClip:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, v0, v0, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderClip:Landroid/graphics/Rect;

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    new-instance p2, Lcom/android/launcher3/allapps/FloatingHeaderView$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/allapps/FloatingHeaderView$1;-><init>(Lcom/android/launcher3/allapps/FloatingHeaderView;)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    sget-object p2, Lcom/android/launcher3/allapps/FloatingHeaderRow;->NO_ROWS:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iput-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFixedRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iput-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070073

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsAdditionalPaddingTop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07006e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsAdditionalPaddingBottom:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/FloatingHeaderView;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/FloatingHeaderView;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/FloatingHeaderView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/FloatingHeaderView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->moved(I)V

    return-void
.end method

.method private calcOffset(Landroid/graphics/Point;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private canSnapAt(I)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private moved(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->canSnapAt(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    sub-int v0, p1, v0

    iget v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    if-ltz v0, :cond_3

    iput v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    sub-int/2addr p1, v2

    :goto_1
    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    goto :goto_2

    :cond_3
    neg-int p1, v2

    if-gt v0, p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    neg-int p1, v2

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private recreateAllRowsArray()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFixedRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFixedRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iget-object v3, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFixedRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/PluginHeaderRow;

    iget-object v3, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->updateFloatingRowsHeight()V

    return-void
.end method

.method private updateExpectedHeight()V
    .locals 4

    invoke-direct {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->updateFloatingRowsHeight()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFloatingRowsCollapsed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFloatingRowsHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsAdditionalPaddingBottom:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    :cond_1
    return-void
.end method

.method private updateFloatingRowsHeight()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/allapps/w;->a:Lcom/android/launcher3/allapps/w;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFloatingRowsHeight:I

    return-void
.end method


# virtual methods
.method protected applyVerticalMove()V
    .locals 6

    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    iget v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFloatingRowsCollapsed:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-interface {v5, v0, v3}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->setVerticalScroll(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v1, v0

    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->setVerticalScroll(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    iget p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/launcher3/allapps/FloatingHeaderRow;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->getTypeClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

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

.method public getClipTop()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderClip:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method getFloatingRowsHeight()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFloatingRowsHeight:I

    return p0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 4

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->hasVisibleContent()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->getFocusedChild()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-super {p0}, Landroid/widget/LinearLayout;->getFocusedChild()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getMaxTranslation()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFloatingRowsCollapsed:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getSearchBarBottomPadding()I

    move-result p0

    return p0

    :cond_1
    if-lez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public getPeripheralProtectionHeight()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFloatingRowsCollapsed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iget p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    add-int/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method protected getSearchBarBottomPadding()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method getTabLayout()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method getTabsAdditionalPaddingBottom()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsAdditionalPaddingBottom:I

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isSetUp()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method maybeSetTabVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected measureTabLayout()V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->applyVerticalMove()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    const-class v1, Li0/a;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Li0/f;Ljava/lang/Class;Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    sget-object v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Li0/f;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0395

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/allapps/FloatingHeaderRow;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/android/launcher3/allapps/FloatingHeaderRow;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/launcher3/allapps/FloatingHeaderRow;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFixedRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->updateFloatingRowsHeight()V

    return-void
.end method

.method public onHeightUpdated()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    invoke-direct {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->updateExpectedHeight()V

    iget v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFloatingRowsCollapsed:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setupHeader(Z)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->calcOffset(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mForwardToRecyclerView:Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mForwardToRecyclerView:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->measureTabLayout()V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onPluginConnected(Li0/a;Landroid/content/Context;)V
    .locals 2

    new-instance p2, Lcom/android/launcher3/allapps/PluginHeaderRow;

    invoke-direct {p2, p1, p0}, Lcom/android/launcher3/allapps/PluginHeaderRow;-><init>(Li0/a;Lcom/android/launcher3/allapps/FloatingHeaderView;)V

    iget-object v0, p2, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->recreateAllRowsArray()V

    invoke-interface {p1, p0}, Li0/a;->f(Li0/a$a;)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Li0/d;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Li0/a;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onPluginConnected(Li0/a;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Li0/a;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/PluginHeaderRow;

    iget-object v0, v0, Lcom/android/launcher3/allapps/PluginHeaderRow;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mPluginRows:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->recreateAllRowsArray()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onHeightUpdated()V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Li0/d;)V
    .locals 0

    check-cast p1, Li0/a;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onPluginDisconnected(Li0/a;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mForwardToRecyclerView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->calcOffset(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v1, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTempOffset:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    int-to-float v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v1, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public reset(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    aput v2, v1, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTranslationY:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->applyVerticalMove()V

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mHeaderCollapsed:Z

    iget p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    neg-int p1, p1

    iput p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    iget-object p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToTop()V

    return-void
.end method

.method setActiveRV(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mWorkRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSearchRV:Lcom/android/launcher3/allapps/SearchRecyclerView;

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mCurrentRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const/16 p1, 0x8

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->maybeSetTabVisibility(I)V

    return-void
.end method

.method public setFloatingRowsCollapsed(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFloatingRowsCollapsed:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mFloatingRowsCollapsed:Z

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onHeightUpdated()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method setup(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/SearchRecyclerView;IZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mAllRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    invoke-interface {v4, p0, v5, p5}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->setup(Lcom/android/launcher3/allapps/FloatingHeaderView;[Lcom/android/launcher3/allapps/FloatingHeaderRow;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->updateExpectedHeight()V

    iput-boolean p5, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->maybeSetTabVisibility(I)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMainRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iput-object p2, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mWorkRV:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iput-object p3, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSearchRV:Lcom/android/launcher3/allapps/SearchRecyclerView;

    invoke-virtual {p0, p4}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setActiveRV(I)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/FloatingHeaderView;->reset(Z)V

    return-void
.end method

.method public usingTabs()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mTabsHidden:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
