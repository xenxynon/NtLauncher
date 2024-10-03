.class public Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterHolder"
.end annotation


# instance fields
.field public final mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final mPadding:Landroid/graphics/Rect;

.field mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private final mType:I

.field final synthetic this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;ILcom/android/launcher3/allapps/AlphabeticalAppsList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mType:I

    iput-object p3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->createAdapter(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {p3, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setAdapter(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mType:I

    return p0
.end method

.method private isWork()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method applyPadding()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->isWork()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v1, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->access$300(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v1, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method setup(Landroid/view/View;Ljava/util/function/Predicate;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateItemFilter(Ljava/util/function/Predicate;)V

    check-cast p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object p2, p2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/FastScrollRecyclerView;->bindFastScrollbar(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p2}, Lcom/android/launcher3/views/SpringRelativeLayout;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onInitializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance p1, Lcom/android/launcher3/keyboard/FocusedItemDecorator;

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p1, p2}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {p1}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->getFocusListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->applyPadding()V

    return-void
.end method

.method public updateFastScroller()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onUpdateScrollbar(I)V

    :cond_0
    return-void
.end method

.method public updateItemFilter(Ljava/util/function/Predicate;)V
    .locals 1
    .param p1    # Ljava/util/function/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateItemFilter(Ljava/util/function/Predicate;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->updateFastScroller()V

    return-void
.end method
