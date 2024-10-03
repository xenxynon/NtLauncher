.class public Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.super Lcom/android/launcher3/views/SpringRelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;
.implements Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/views/SpringRelativeLayout;",
        "Lcom/android/launcher3/DragSource;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
        "Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;",
        "Lcom/android/launcher3/views/ScrimView$ScrimDrawingController;"
    }
.end annotation


# static fields
.field public static final BOTTOM_SHEET_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final mAH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "TT;>.AdapterHolder;>;"
        }
    .end annotation
.end field

.field protected final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

.field private mAllAppsTransitionController:Lcom/android/launcher3/allapps/AllAppsTransitionController;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBottomSheetAlpha:F

.field protected mBottomSheetBackground:Landroid/view/View;

.field private mBottomSheetBackgroundColor:I

.field private mBottomSheetCornerRadii:[F

.field private mBottomSheetHandleArea:Landroid/view/View;

.field protected mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

.field protected final mFastScrollerOffset:Landroid/graphics/Point;

.field private mForceBottomSheetVisible:Z

.field private mHasWorkApps:Z

.field protected mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

.field private mHeaderColor:I

.field protected final mHeaderPaint:Landroid/graphics/Paint;

.field protected mHeaderProtectionColor:I

.field protected final mHeaderThreshold:F

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsSearching:Z

.field protected mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation
.end field

.field private mNavBarScrimHeight:I

.field private final mNavBarScrimPaint:Landroid/graphics/Paint;

.field protected final mPersonalMatcher:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRebindAdaptersAfterSearchAnimation:Z

.field protected mScrimColor:I

.field private mScrimView:Lcom/android/launcher3/views/ScrimView;

.field private final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field protected mSearchContainer:Landroid/view/View;

.field private mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

.field private final mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

.field protected mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

.field protected mTabsProtectionAlpha:I

.field private final mTmpPath:Landroid/graphics/Path;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field protected mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

.field protected mUsingTabs:Z

.field protected mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

.field protected final mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$1;

    const-string v1, "bottomSheetAlpha"

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->BOTTOM_SHEET_ALPHA:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/SpringRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofCurrentOrDualUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPersonalMatcher:Ljava/util/function/Predicate;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    new-instance p2, Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-direct {p2}, Lcom/android/launcher3/allapps/AllAppsStore;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    new-instance v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetAlpha:F

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    const v2, 0x7f040048

    invoke-static {p1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimColor:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07018f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    const v2, 0x7f04004b

    invoke-static {p1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderProtectionColor:I

    new-instance p1, Lcom/android/launcher3/allapps/WorkProfileManager;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v3

    invoke-direct {p1, v2, p0, v3}, Lcom/android/launcher3/allapps/WorkProfileManager;-><init>(Landroid/os/UserManager;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/android/launcher3/logging/StatsLogManager;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    const/4 v2, 0x0

    aput-object v2, p1, v0

    aput-object v2, p1, p3

    const/4 p3, 0x2

    aput-object v2, p1, p3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/android/launcher3/util/Themes;->getNavBarScrimColor(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Lcom/android/launcher3/allapps/d;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/d;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    sget-boolean p3, Lcom/android/launcher3/testing/shared/TestProtocol;->sDebugTracing:Z

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ActivityAllAppsContainer#init registeringListener: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "b/243688989"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    new-instance p1, Lcom/android/launcher3/allapps/c;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/c;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->initContent()V

    new-instance p1, Lcom/android/launcher3/allapps/SearchTransitionController;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/SearchTransitionController;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetAlpha:F

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setBottomSheetAlpha(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/SpringRelativeLayout;->absorbSwipeUpVelocity(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method private alignParentTop(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070071

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private animateToSearchState(Z)V
    .locals 2

    const-wide/16 v0, 0x12c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->animateToSearchState(ZJ)V

    return-void
.end method

.method private animateToSearchState(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/SearchTransitionController;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->onActivePageChanged(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsTransitionController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->animateAllAppsToNoScale()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    new-instance v1, Lcom/android/launcher3/allapps/f;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/f;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Z)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/launcher3/allapps/SearchTransitionController;->animateToSearchState(ZJLjava/lang/Runnable;)V

    return-void
.end method

.method private applyAdapterSideAndBottomPaddings(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/allapps/g;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/allapps/g;-><init>(ILcom/android/launcher3/DeviceProfile;)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$replaceAppsRVContainer$5()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$new$0(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic d(ILcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$applyAdapterSideAndBottomPaddings$7(ILcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$rebindAdapters$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onAppsUpdated()V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;IZLcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$setupHeader$6(IZLcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;)V

    return-void
.end method

.method private getActiveAppsRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isPersonalTab()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object p0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic h(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$rebindAdapters$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$animateToSearchState$2(Z)V

    return-void
.end method

.method private isSearchBarOnBottom()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_FLOATING_SEARCH_BAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRule(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->lambda$onFinishInflate$1(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$animateToSearchState$2(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateSearchResultsVisibility()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mRebindAdaptersAfterSearchAnimation:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters(Z)V

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mRebindAdaptersAfterSearchAnimation:Z

    :cond_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setSearchResults(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onActivePageChanged(I)V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$applyAdapterSideAndBottomPaddings$7(ILcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;)V
    .locals 1

    iget-object v0, p2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    iput p0, v0, Landroid/graphics/Rect;->right:I

    iput p0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->applyPadding()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onFinishInflate$1(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$rebindAdapters$3(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_TAP_ON_PERSONAL_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->hideKeyboard()V

    return-void
.end method

.method private synthetic lambda$rebindAdapters$4(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_TAP_ON_WORK_TAB:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->hideKeyboard()V

    return-void
.end method

.method private synthetic lambda$replaceAppsRVContainer$5()V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->applyPadding()V

    return-void
.end method

.method private synthetic lambda$setupHeader$6(IZLcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;)V
    .locals 1

    iget-object v0, p3, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->applyPadding()V

    if-eqz p2, :cond_0

    invoke-static {p3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->access$400(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result p0

    if-ne p1, p0, :cond_0

    invoke-virtual {p3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->updateFastScroller()V

    :cond_0
    iget-object p0, p3, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToTop()V

    :cond_1
    return-void
.end method

.method private layoutAboveSearchContainer(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p0, p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p1, 0x2

    const v0, 0x7f0b032e

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method private layoutBelowSearchContainer(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x6

    const v1, 0x7f0b032e

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070071

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private layoutWithoutSearchContainer(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p2, :cond_1

    const p2, 0x7f070071

    goto :goto_0

    :cond_1
    const p2, 0x7f070074

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private onAppsUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->getMatcher()Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasWorkApps:Z

    sget-boolean v0, Lcom/android/launcher3/testing/shared/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityAllAppsContainerView#onAppsUpdated hasWorkApps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasWorkApps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " allApps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/243688989"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters()V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasWorkApps:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsStore;->getApps()[Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p0

    array-length p0, p0

    invoke-interface {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withCardinality(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_COUNT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method private removeCustomRules(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of p0, p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    return-void
.end method

.method private replaceAppsRVContainer(Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v4, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v2, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_2

    const v1, 0x7f0e0036

    goto :goto_1

    :cond_2
    const v1, 0x7f0e0035

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    if-eqz p1, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/allapps/AllAppsPagedView;

    iput-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/PagedView;->initParentViews(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setOnActivePageChangedListener(Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    new-instance v3, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$3;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/WorkProfileManager;->reset()V

    new-instance v2, Lcom/android/launcher3/allapps/e;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/e;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/WorkProfileManager;->detachWorkModeSwitch()V

    iput-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->removeCustomRules(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->removeCustomRules(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchSupported()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutWithoutSearchContainer(Landroid/view/View;Z)V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarOnBottom()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->alignParentTop(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->alignParentTop(Landroid/view/View;Z)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutAboveSearchContainer(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutAboveSearchContainer(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutBelowSearchContainer(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutBelowSearchContainer(Landroid/view/View;Z)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateSearchResultsVisibility()V

    return-void
.end method

.method private setBottomSheetAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    iput p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetAlpha:F

    return-void
.end method

.method private setDeviceManagementResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0392

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0393

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTab:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateScrollBarVisibility(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getScrollBar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addSpringFromFlingUpdateListener(Landroid/animation/ValueAnimator;FF)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$4;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;FF)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected computeNavBarScrimHeight(Landroid/view/WindowInsets;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected createAdapter(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;)",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/search/SearchAdapterProvider;)V

    return-object v0
.end method

.method protected createMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    return-object v0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->computeNavBarScrimHeight(Landroid/view/WindowInsets;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->applyAdapterSideAndBottomPaddings(Lcom/android/launcher3/DeviceProfile;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isNavBarScrimAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/SearchUiManager;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AllAppsContainerView"

    const-string v2, "restoreInstanceState viewId = 0"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const v0, 0x7f0b044d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "launcher.allapps.current_page"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result p0

    const-string v1, "launcher.allapps.current_page"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const p0, 0x7f0b044d

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public drawOnScrimWithScale(Landroid/graphics/Canvas;F)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p2, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p2

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackgroundColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetAlpha:F

    mul-float/2addr v5, v1

    float-to-int v1, v5

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v2, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetCornerRadii:[F

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTmpPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result p2

    iget v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    iget p2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimColor:I

    if-eq p1, p2, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    :cond_2
    return-void
.end method

.method public enterAllAppsFromNormalState()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->onEnterAllAppsFromNormalState()V

    invoke-static {}, Lcom/nothing/launcher/track/a;->d()V

    return-void
.end method

.method public exitAllAppsState()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->onAllAppsStateExit()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/nothing/launcher/track/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public forceBottomSheetVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mForceBottomSheetVisible:Z

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateBackgroundVisibility(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method public getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveAppsRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public getAppsRecyclerViewContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    return-object v0
.end method

.method public getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    return-object p0
.end method

.method protected getBottomPadding()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getBottomSheetBackground()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    return-object p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCurrentPage()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f12006a

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isPersonalTab()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/android/launcher3/model/StringCache;->allAppsPersonalTabAccessibility:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p0, v0, Lcom/android/launcher3/model/StringCache;->allAppsWorkTabAccessibility:Ljava/lang/String;

    :goto_1
    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isPersonalTab()Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_3

    const v0, 0x7f120062

    goto :goto_2

    :cond_3
    const v0, 0x7f120063

    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f120061

    goto :goto_0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result p0

    float-to-int p0, p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    return-object p0
.end method

.method public getHeaderBottom()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getClipTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarOnBottom()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    :cond_0
    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result p0

    goto :goto_0
.end method

.method protected getHeaderColor(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getMixedColorOnHeader()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderProtectionColor:I

    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public final getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    return-object p0
.end method

.method protected getMixedColorOnHeader()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimColor:I

    return p0
.end method

.method public getNavBarScrimHeight()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimHeight:I

    return p0
.end method

.method public getScrollBar()Lcom/android/launcher3/views/RecyclerViewFastScroller;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveAppsRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    return-object p0
.end method

.method public getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    return-object p0
.end method

.method public getSearchTransitionController()Lcom/android/launcher3/allapps/SearchTransitionController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    return-object p0
.end method

.method public getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    return-object p0
.end method

.method public getSearchView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    return-object p0
.end method

.method public getVisibleContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    :cond_0
    return-object p0
.end method

.method public getWorkManager()Lcom/android/launcher3/allapps/WorkProfileManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    return-object p0
.end method

.method public hideKeyboard()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->onAllAppsStateExit()V

    return-void
.end method

.method protected inflateSearchBox()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0130

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected initContent()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->createMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mMainAdapterProvider:Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    new-instance v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkProfileManager;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;ILcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    new-instance v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-direct {v2, v3, v4, v6}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkProfileManager;)V

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;ILcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    new-instance v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5, v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkProfileManager;)V

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;ILcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e002d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/FloatingHeaderView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetHandleArea:Landroid/view/View;

    const v0, 0x7f0b0337

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/SearchRecyclerView;

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    const v0, 0x7f0b017f

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const v1, 0x7f0b0180

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setPopupView(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->inflateSearchBox()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/allapps/SearchUiManager;

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    return-void
.end method

.method public invalidateHeader()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isInAllApps()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isNavBarScrimAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isPersonalTab()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p0

    if-nez p0, :cond_0

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

.method protected isSearchSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSearchTransitionRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isSearching()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mIsSearching:Z

    return p0
.end method

.method public onActivePageChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/SearchTransitionController;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastScrollRecyclerView;->bindFastScrollbar(Lcom/android/launcher3/views/RecyclerViewFastScroller;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setActiveRV(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(ZZ)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/WorkProfileManager;->onActivePageChanged(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public onClearSearchResult()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->clearHighlightedItem()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->animateToSearchState(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0, p0}, Lcom/android/launcher3/views/ActivityContext;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setAppsPerRow(I)V

    iget-object v2, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    iget-object v2, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    iget-object v1, v1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onDeviceProfileChanged()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateBackgroundVisibility(Lcom/android/launcher3/DeviceProfile;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/util/Themes;->getNavBarScrimColor(Landroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mNavBarScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchRecyclerView:Lcom/android/launcher3/allapps/SearchRecyclerView;

    sget-object v3, Lcom/android/launcher3/allapps/i;->a:Lcom/android/launcher3/allapps/i;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Ljava/util/function/Predicate;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters(Z)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result v2

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v2, v3, v0

    aput v2, v3, v1

    const/4 v0, 0x3

    aput v2, v3, v0

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v3, v0

    const/4 v0, 0x5

    aput v1, v3, v0

    const/4 v0, 0x6

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    iput-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetCornerRadii:[F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040391

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackgroundColor:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateBackgroundVisibility(Lcom/android/launcher3/DeviceProfile;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v0, p0}, Lcom/android/launcher3/allapps/SearchUiManager;->initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    return-void
.end method

.method protected onInitializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInAllApps()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public onPull(FF)V
    .locals 1

    const v0, 0x3ca3d70a    # 0.02f

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/SpringRelativeLayout;->absorbPullDeltaDistance(FF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInAllApps()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isHitInParent(FFLandroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScrollerOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getVisibleContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/nothing/launcher/track/a;->d()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/nothing/launcher/track/a;->c(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected rebindAdapters()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->rebindAdapters(Z)V

    return-void
.end method

.method protected rebindAdapters(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchTransitionController:Lcom/android/launcher3/allapps/SearchTransitionController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/SearchTransitionController;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mRebindAdaptersAfterSearchAnimation:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateSearchResultsVisibility()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->shouldShowTabs()Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->getDecorator()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->replaceAppsRVContainer(Z)V

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    iget-boolean p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPersonalMatcher:Ljava/util/function/Predicate;

    invoke-virtual {p1, v0, v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Ljava/util/function/Predicate;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/WorkProfileManager;->getMatcher()Ljava/util/function/Predicate;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Ljava/util/function/Predicate;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object p1, p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const v0, 0x7f0b0093

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setId(I)V

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_EXPANDING_PAUSE_WORK_BUTTON:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object p1, p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->newScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;->setActiveMarker(I)V

    const p1, 0x7f0b0392

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/allapps/b;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/b;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0b0393

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/allapps/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/a;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setDeviceManagementResources()V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setupHeader(Z)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->onActivePageChanged(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    const v0, 0x7f0b0092

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->setup(Landroid/view/View;Ljava/util/function/Predicate;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iput-object v4, p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setupHeader(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarOnBottom()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mFastScroller:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const v0, 0x7f0b032e

    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070199

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_5
    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/AllAppsStore;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public reset(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(ZZ)V

    return-void
.end method

.method public reset(ZZ)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v2, v2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v2}, Lcom/android/launcher3/FastScrollRecyclerView;->scrollToTop()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTouchHandler:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->endFastScrolling()V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->reset(Z)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->forceBottomSheetVisible(Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateHeaderScroll(I)V

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {p1}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    const-wide/16 p1, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->animateToSearchState(ZJ)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->reset()V

    :cond_5
    return-void
.end method

.method public setAllAppsTransitionController(Lcom/android/launcher3/allapps/AllAppsTransitionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAllAppsTransitionController:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->applyAdapterSideAndBottomPaddings(Lcom/android/launcher3/DeviceProfile;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1, v2, v0, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->allAppsTopPadding:I

    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarOnBottom()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    :cond_1
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightMargin:I

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :goto_0
    invoke-static {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->dispatchInsets(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setOnIconLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAdapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setOnIconLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setScrimView(Lcom/android/launcher3/views/ScrimView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mScrimView:Lcom/android/launcher3/views/ScrimView;

    return-void
.end method

.method public setSearchResults(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getMainAdapterProvider()Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->clearHighlightedItem()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setSearchResults(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->onSearchResultsChanged()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->animateToSearchState(Z)V

    :cond_1
    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->invalidateHeader()V

    return-void
.end method

.method setupHeader(Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    const/4 v2, 0x1

    xor-int/lit8 v8, v0, 0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v4, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v5, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    iget-object v0, v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/allapps/SearchRecyclerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result v7

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setup(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/SearchRecyclerView;IZ)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getMaxTranslation()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    new-instance v3, Lcom/android/launcher3/allapps/h;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/launcher3/allapps/h;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->removeCustomRules(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchSupported()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutWithoutSearchContainer(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearchBarOnBottom()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->alignParentTop(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->layoutBelowSearchContainer(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetHandleArea:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getVisibleContainerView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/FastScrollRecyclerView;->shouldContainerScroll(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method protected shouldShowTabs()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHasWorkApps:Z

    return p0
.end method

.method public switchToTab(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mUsingTabs:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mViewPager:Lcom/android/launcher3/allapps/AllAppsPagedView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :cond_0
    return-void
.end method

.method protected updateBackgroundVisibility(Lcom/android/launcher3/DeviceProfile;)V
    .locals 1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mForceBottomSheetVisible:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mBottomSheetBackground:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected updateHeaderScroll(I)V
    .locals 7

    int-to-float v0, p1

    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    div-float v1, v0, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getHeaderColor(F)I

    move-result v1

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getPeripheralProtectionHeight()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iget v4, v4, Lcom/android/launcher3/allapps/FloatingHeaderView;->mSnappedScrolledY:I

    add-int/2addr v4, p1

    int-to-float v4, v4

    iget v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    div-float/2addr v4, v6

    invoke-static {v4, v2, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    :goto_0
    iget v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderColor:I

    if-ne v1, v6, :cond_1

    iget v6, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTabsProtectionAlpha:I

    if-eq v6, v4, :cond_2

    :cond_1
    iput v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderColor:I

    iput v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mTabsProtectionAlpha:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->invalidateHeader()V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget v1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    div-float v1, v0, v1

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/SearchUiManager;->getBackgroundVisibility()Z

    move-result v2

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeaderThreshold:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    move v5, v2

    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mSearchUiManager:Lcom/android/launcher3/allapps/SearchUiManager;

    sub-float/2addr v3, v1

    invoke-interface {p0, v5, v3}, Lcom/android/launcher3/allapps/SearchUiManager;->setBackgroundVisibility(ZF)V

    return-void
.end method

.method protected updateSearchResultsVisibility()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateScrollBarVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->isSetUp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setActiveRV(I)V

    :cond_2
    return-void
.end method
