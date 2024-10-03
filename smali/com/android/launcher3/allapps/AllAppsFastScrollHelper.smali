.class public Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;
    }
.end annotation


# instance fields
.field private mLastSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private mTargetFastScrollPosition:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->updateLastHolderState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->setLastHolderSelected(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method private setLastHolderSelected(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    :cond_0
    return-void
.end method

.method private updateLastHolderState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->setLastHolderSelected(Z)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->setLastHolderSelected(Z)V

    return-void
.end method


# virtual methods
.method public onFastScrollCompleted()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->setLastHolderSelected(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mLastSelectedViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method public smoothScrollToSection(Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    iget v1, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->position:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->isItemsInSameRow(II)Z

    move-result v0

    iget p1, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->position:I

    iput p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->updateLastHolderState(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mRv:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->mTargetFastScrollPosition:I

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper$MyScroller;-><init>(Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
