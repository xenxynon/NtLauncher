.class public Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
.super Lcom/android/launcher3/widget/BaseWidgetSheet;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;
.implements Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;
.implements Lcom/android/launcher3/widget/picker/WidgetsRecyclerView$HeaderViewDimensionsProvider;
.implements Lcom/android/launcher3/widget/picker/search/SearchModeListener;
.implements Ls3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;
    }
.end annotation


# instance fields
.field protected final mAdapters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

.field private mCurrentTouchEventRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCurrentUser:Landroid/os/UserHandle;

.field private mCurrentWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field protected mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

.field protected mHasRecommendedWidgets:Z

.field protected final mHasWorkProfile:Z

.field protected mHeaderTitle:Landroid/widget/TextView;

.field private mIsInSearchMode:Z

.field private mIsNoWidgetsViewNeeded:Z

.field private mLatestEducationalTip:Lcom/android/launcher3/views/ArrowTipView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

.field private mMaxSpanPerRow:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field protected mNoWidgetsView:Landroid/widget/TextView;

.field private mOrientation:I

.field private final mPrimaryWidgetsFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

.field protected mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

.field protected mSearchBarContainer:Landroid/view/View;

.field protected mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

.field private final mShowEducationTipTask:Ljava/lang/Runnable;

.field protected mTabBar:Landroid/view/View;

.field private final mTabsHeight:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field private final mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

.field mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mWorkWidgetsFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/BaseWidgetSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {p2}, Lcom/android/launcher3/model/UserManagerState;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentUser:Landroid/os/UserHandle;

    new-instance p3, Lcom/android/launcher3/widget/picker/k;

    invoke-direct {p3, p0}, Lcom/android/launcher3/widget/picker/k;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object p3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mPrimaryWidgetsFilter:Ljava/util/function/Predicate;

    new-instance p3, Lcom/android/launcher3/widget/picker/j;

    invoke-direct {p3, p0}, Lcom/android/launcher3/widget/picker/j;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object p3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWorkWidgetsFilter:Ljava/util/function/Predicate;

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$1;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/android/launcher3/widget/picker/e;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/e;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mShowEducationTipTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$2;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->hasWorkProfile(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mOrientation:I

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;I)V

    invoke-virtual {p3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;I)V

    invoke-virtual {p3, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;I)V

    invoke-virtual {p3, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-eqz v0, :cond_0

    const v0, 0x7f070071

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_0
    iput v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTabsHeight:I

    sget-object p0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$setupViews$3(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->hasSeenEducationTip()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mShowEducationTipTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpanPerRow:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mPrimaryWidgetsFilter:Ljava/util/function/Predicate;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Ljava/util/function/Predicate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mWorkWidgetsFilter:Ljava/util/function/Predicate;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/view/ViewOutlineProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)Landroid/view/View$OnAttachStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

    return-object p0
.end method

.method private attachScrollbarToRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/FastScrollRecyclerView;->bindFastScrollbar(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->reset()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->resetExpandedHeaders()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/StickyHeaderLayout;->setCurrentRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$setUpEducationViewsIfNeeded$8()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$new$1(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$new$2()V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$setUpEducationViewsIfNeeded$9()V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$setupViews$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$open$6(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    return-void
.end method

.method private getViewToShowEducationTip()Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    iget-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v2, :cond_1

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    if-nez p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->getItemCount()I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/widget/picker/i;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/i;-><init>(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/widget/picker/b;->a:Lcom/android/launcher3/widget/picker/b;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;->tableContainer:Lcom/android/launcher3/widget/picker/WidgetsListTableView;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f0b02e6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    return-object p0
.end method

.method public static synthetic h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$getViewToShowEducationTip$7(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method private hasWorkProfile(Landroid/content/Context;)Z
    .locals 2

    const-class p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0}, Landroid/content/pm/LauncherApps;->getProfiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/16 p1, 0x3e7

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic i(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$new$0(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0
.end method

.method private isCurrentOrDualUser(Landroid/os/UserHandle;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentUser:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Ly3/b;->a:Ly3/b;

    invoke-virtual {p0, p1}, Ly3/b;->b(Landroid/os/UserHandle;)Z

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

.method private isTouchOnScrollbar(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object p0

    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->isHitOnScrollBar(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return p0
.end method

.method public static synthetic j(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->lambda$open$5()V

    return-void
.end method

.method private static synthetic lambda$getViewToShowEducationTip$7(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    instance-of p0, p0, Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    return p0
.end method

.method private synthetic lambda$new$0(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->isCurrentOrDualUser(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$1(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->isCurrentOrDualUser(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    iget-object p1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->hasSeenEducationTip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getViewToShowEducationTip()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->showEducationTipOnViewIfPossible(Landroid/view/View;)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLatestEducationalTip:Lcom/android/launcher3/views/ArrowTipView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$open$5()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private static synthetic lambda$open$6(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method private synthetic lambda$setUpEducationViewsIfNeeded$8()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->hasSeenEducationTip()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setUpEducationViewsIfNeeded$9()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->showEducationDialog()Lcom/android/launcher3/views/WidgetsEduView;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/picker/d;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/picker/d;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->addOnCloseListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V

    return-void
.end method

.method private synthetic lambda$setupViews$3(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    return-void
.end method

.method private synthetic lambda$setupViews$4(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    return-void
.end method

.method private maybeHandleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->isTouchOnScrollbar(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentTouchEventRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentTouchEventRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    neg-float v3, v0

    neg-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentTouchEventRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    :cond_3
    iput-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mCurrentTouchEventRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    :cond_4
    return v3
.end method

.method private static measureHeightWithVerticalMargins(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v0

    return p0
.end method

.method private open(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->setTranslationShift(F)V

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Lcom/android/launcher3/views/AbstractSlideInView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v0, v1, v4

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetOpenDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$3;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/android/launcher3/widget/picker/h;

    invoke-direct {p1, p0}, Lcom/android/launcher3/widget/picker/h;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->setTranslationShift(F)V

    new-instance p1, Lcom/android/launcher3/widget/picker/g;

    invoke-direct {p1, p0}, Lcom/android/launcher3/widget/picker/g;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private reset()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToTop()V

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToTop()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToTop()V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/views/StickyHeaderLayout;->reset(Z)V

    return-void
.end method

.method private setBottomPadding(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private static setContentViewChildHorizontalMargin(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method private static setContentViewChildHorizontalPadding(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private setDeviceManagementResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0392

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/StringCache;->widgetsPersonalTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0393

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/model/StringCache;->widgetsWorkTab:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static show(Lcom/android/launcher3/Launcher;Z)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;
    .locals 4

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->LARGE_SCREEN_WIDGET_PICKER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0e0185

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0e017d

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->attachToContainer()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->open(Z)V

    return-object p0
.end method

.method private showEducationDialog()Lcom/android/launcher3/views/WidgetsEduView;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launcher.widgets_education_dialog_seen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/views/WidgetsEduView;->showEducationDialog(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/views/WidgetsEduView;

    move-result-object p0

    return-object p0
.end method

.method private updateBackground()V
    .locals 3

    sget-object v0, Lz3/d;->a:Lz3/d;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz3/d;->k(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBarContainer:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method private updateMaxSpansPerRow()Z
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mContentHorizontalMargin:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpanPerRow:I

    if-eq v2, v0, :cond_2

    iput v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpanPerRow:I

    iget-object v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPxPerRow(I)V

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPxPerRow(I)V

    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setMaxHorizontalSpansPxPerRow(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    return v2

    :cond_2
    return v1
.end method

.method private updateWorkTabsBackground()V
    .locals 2

    const v0, 0x7f0b0392

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0b0393

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v1, Lz3/d;->a:Lz3/d;

    invoke-virtual {v1}, Lz3/d;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addHintCloseAnim(FLandroid/view/animation/Interpolator;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    neg-float p1, p1

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object p0

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    return-void
.end method

.method public enterSearchMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setViewVisibilityBasedOnSearch(Z)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->attachScrollbarToRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGETSTRAY_SEARCHED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public exitSearchMode()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onSearchResults(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setViewVisibilityBasedOnSearch(Z)V

    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->attachScrollbarToRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    return-void
.end method

.method protected getAccessibilityInitialFocusView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    return-object p0
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/launcher3/AbstractFloatingView;->mIsOpen:Z

    if-eqz p0, :cond_0

    const p0, 0x7f120294

    goto :goto_0

    :cond_0
    const p0, 0x7f120295

    :goto_0
    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    :goto_0
    return-object p0
.end method

.method public getHeaderViewHeight()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBarContainer:Landroid/view/View;

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->measureHeightWithVerticalMargins(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method protected getMaxTableHeight(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTabsHeight:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getHeaderViewHeight()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    sub-float/2addr p0, p1

    const/high16 p1, 0x3f400000    # 0.75f

    mul-float/2addr p0, p1

    return p0
.end method

.method public getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSource()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected handleClose(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->bottomSheetCloseDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->handleClose(ZJ)V

    return-void
.end method

.method protected hasSeenEducationDialog()Z
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "launcher.widgets_education_dialog_seen"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/launcher3/Utilities;->isRunningInTestHarness()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected isOfType(I)Z
    .locals 0

    and-int/lit8 p0, p1, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isTwoPane()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyWidgetProvidersChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/Launcher;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    return-void
.end method

.method public onActivePageChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object p1, p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->attachScrollbarToRecyclerView(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->addProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->notifyWidgetProvidersChanged()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->F(Ls3/d;)V

    return-void
.end method

.method public onBackInvoked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    invoke-interface {v0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->reset()V

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->animateSlideInViewToNoScale()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onBackInvoked()V

    :goto_0
    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1
    .param p1    # Landroid/window/BackEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x22
    .end annotation

    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->onBackProgressed(Landroid/window/BackEvent;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1}, Landroid/window/BackEvent;->getProgress()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onCloseComplete()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onCloseComplete()V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mShowEducationTipTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLatestEducationalTip:Lcom/android/launcher3/views/ArrowTipView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendStateEventToTest(Landroid/content/Context;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    invoke-interface {v0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->reset()V

    :cond_0
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->LARGE_SCREEN_WIDGET_PICKER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-nez v0, :cond_1

    iput p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mOrientation:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->handleClose(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->show(Lcom/android/launcher3/Launcher;Z)Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    :cond_1
    return-void
.end method

.method protected onContentHorizontalMarginChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalMargin(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalPadding(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-static {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalPadding(Landroid/view/View;I)V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setContentViewChildHorizontalPadding(Landroid/view/View;I)V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->shouldScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mNoIntercept:Z

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    invoke-interface {v0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->isSearchBarFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBarContainer:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    invoke-interface {v0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->clearSearchBarFocus()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/views/AbstractSlideInView;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherWidgetHolder$ProviderChangedListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mBindScrollbarInSearchMode:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->I(Ls3/d;)V

    return-void
.end method

.method public onDragStart(ZF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/views/AbstractSlideInView;->onDragStart(ZF)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b0107

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080214

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->setContentBackgroundWithParent(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setupSheet()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->isTouchOnScrollbar(Landroid/view/MotionEvent;)Z

    move-result v0

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

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    iget-object p2, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mInsets:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    iget-object p2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p3

    sub-int p3, p5, p3

    add-int/2addr p1, p4

    invoke-virtual {p2, p4, p3, p1, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    iget p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mTranslationShift:F

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->setTranslationShift(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/BaseWidgetSheet;->doMeasure(II)V

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateMaxSpansPerRow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/BaseWidgetSheet;->doMeasure(II)V

    :cond_0
    return-void
.end method

.method public onNewPackSelected(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateWorkTabsBackground()V

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateBackground()V

    return-void
.end method

.method public onRecommendedWidgetsBound()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasRecommendedWidgets:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsNoWidgetsViewNeeded:Z

    if-eqz v3, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->isTwoPane()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/widget/BaseWidgetSheet;->doMeasure(II)V

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getMaxTableHeight(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mMaxSpanPerRow:I

    iget v5, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mWidgetCellHorizontalPadding:I

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->groupWidgetItemsUsingRowPxWithoutReordering(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;II)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setRecommendedWidgets(Ljava/util/List;F)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onSearchResults(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setWidgetsOnSearch(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->maybeHandleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public onWidgetsBound()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getAllWidgets()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lg4/j;->b:Lg4/j$a;

    invoke-virtual {v1}, Lg4/j$a;->a()Lcom/nothing/launcher/widgets/e;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lg4/j$a;->a()Lcom/nothing/launcher/widgets/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nothing/launcher/widgets/e;->b(Ljava/util/List;)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setWidgets(Ljava/util/List;)V

    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTabBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v1, v1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->setWidgets(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onActivePageChanged(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onActivePageChanged(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->hasVisibleEntries()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->hasVisibleEntries()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsNoWidgetsViewNeeded:Z

    if-eq v0, v2, :cond_5

    iput-boolean v2, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsNoWidgetsViewNeeded:Z

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    :cond_5
    return-void
.end method

.method protected resetExpandedHeaders()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->resetExpandedHeader()V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->resetExpandedHeader()V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->setInsets(Landroid/graphics/Rect;)V

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/android/launcher3/widget/BaseWidgetSheet;->mNavBarScrimHeight:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setBottomPadding(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setBottomPadding(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setBottomPadding(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->setupNavBarColor()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->clearNavBarColor()V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method protected setUpEducationViewsIfNeeded()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->hasSeenEducationDialog()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/widget/picker/f;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/picker/f;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/BaseWidgetSheet;->hasSeenEducationTip()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mLayoutChangeListenerToShowTips:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setViewVisibilityBasedOnSearch(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mIsInSearchMode:Z

    const/4 v0, 0x2

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {p1, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTabBar:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object p1, p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    iget-object p1, p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onWidgetsBound()V

    :goto_1
    return-void
.end method

.method protected setupSheet()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0e017e

    goto :goto_0

    :cond_0
    const v1, 0x7f0e017f

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mContent:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setupViews()V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    const v1, 0x7f0b02f2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setWidgetCellLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mRecommendedWidgetsTable:Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsRecommendationTableLayout;->setWidgetCellOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onRecommendedWidgetsBound()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->onWidgetsBound()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setUpEducationViewsIfNeeded()V

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateBackground()V

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->updateWorkTabsBackground()V

    return-void
.end method

.method protected setupViews()V
    .locals 3

    const v0, 0x7f0b0327

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/StickyHeaderLayout;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    const v1, 0x7f0b02e6

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/views/StickyHeaderLayout;->setCurrentRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const v0, 0x7f0b029a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    const v0, 0x7f0b017f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const v2, 0x7f0b0180

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setPopupView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->setup(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    const v1, 0x7f0b033a

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->setup(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    iget-boolean v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mHasWorkProfile:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b0445

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/PagedView;->initParentViews(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setOnActivePageChangedListener(Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setActiveMarker(I)V

    const v0, 0x7f0b0392

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/widget/picker/a;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/a;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0393

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/widget/picker/c;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/picker/c;-><init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mAdapters:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    const v1, 0x7f0b044e

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->setup(Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;)V

    invoke-direct {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->setDeviceManagementResources()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mViewPager:Lcom/android/launcher3/workprofile/PersonalWorkPagedView;

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    const v1, 0x7f0b0395

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mTabBar:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    const v1, 0x7f0b032a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBarContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchScrollView:Lcom/android/launcher3/views/StickyHeaderLayout;

    const v1, 0x7f0b043e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mSearchBar:Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/android/launcher3/widget/picker/search/WidgetsSearchBar;->initialize(Lcom/android/launcher3/popup/PopupDataProvider;Lcom/android/launcher3/widget/picker/search/SearchModeListener;)V

    return-void
.end method

.method protected shouldScroll(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getRecyclerView()Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/FastScrollRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v2

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->getPopupContainer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/FastScrollRecyclerView;->shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    xor-int/2addr v3, p0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method protected updateRecyclerViewVisibility(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V
    .locals 5

    iget-object v0, p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsListAdapter:Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->hasVisibleEntries()Z

    move-result v0

    iget-object v1, p1, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->mWidgetsRecyclerView:Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->access$300(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    const v1, 0x7f1201aa

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->access$300(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mUserManagerState:Lcom/android/launcher3/model/UserManagerState;

    invoke-virtual {p1}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/views/AbstractSlideInView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    const v1, 0x7f1201ab

    goto :goto_1

    :goto_2
    iget-object p0, p0, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->mNoWidgetsView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
