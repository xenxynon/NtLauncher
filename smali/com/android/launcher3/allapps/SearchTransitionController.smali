.class public Lcom/android/launcher3/allapps/SearchTransitionController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INTERPOLATOR_TRANSITIONING_TO_ALL_APPS:Landroid/view/animation/Interpolator;

.field private static final INTERPOLATOR_WITHIN_ALL_APPS:Landroid/view/animation/Interpolator;

.field private static final SEARCH_TO_AZ_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/allapps/SearchTransitionController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;"
        }
    .end annotation
.end field

.field private mIsGoingToSearch:Z

.field private mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

.field private mSearchToAzProgress:F

.field private mSkipNextAnimationWithinAllApps:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_7:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/allapps/SearchTransitionController;->INTERPOLATOR_WITHIN_ALL_APPS:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/allapps/SearchTransitionController;->INTERPOLATOR_TRANSITIONING_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/launcher3/allapps/SearchTransitionController$1;

    const-string v1, "searchToAzProgress"

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/SearchTransitionController$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/SearchTransitionController;->SEARCH_TO_AZ_PROGRESS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    iput-object p1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/SearchTransitionController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/SearchTransitionController;->onSearchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/SearchTransitionController;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->getSearchToAzProgress()F

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/SearchTransitionController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/SearchTransitionController;->setSearchToAzProgress(F)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/allapps/SearchTransitionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->lambda$animateToSearchState$0()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/allapps/SearchTransitionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->lambda$animateToSearchState$1()V

    return-void
.end method

.method private getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p0

    return-object p0
.end method

.method private getSearchToAzProgress()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    return p0
.end method

.method private getSpanIndex(Lcom/android/launcher3/allapps/SearchRecyclerView;I)I
    .locals 2

    const/4 p0, 0x0

    const-string v0, "SearchTransitionCtrl"

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const-string p1, "Can\'t determine span index - child not found in adapter"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    if-nez v1, :cond_1

    const-string p1, "Search RV doesn\'t have an AllAppsGridAdapter?"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getSpanIndex(I)I

    move-result p0

    return p0
.end method

.method private isAppIcon(Landroid/view/View;)Z
    .locals 0

    instance-of p0, p1, Lcom/android/launcher3/BubbleTextView;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$animateToSearchState$0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private synthetic lambda$animateToSearchState$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setFloatingRowsCollapsed(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->reset(Z)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private onSearchChildAttached(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    iget v2, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->updateSearchRecyclerViewProgress()I

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    const/16 v4, 0xff

    if-eq v1, v3, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->setDecorationFillAlpha(I)Z

    :cond_1
    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    if-eqz p0, :cond_2

    move-object p0, p1

    check-cast p0, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setSearchToAzProgress(F)V
    .locals 7

    iput p1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    invoke-direct {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->updateSearchRecyclerViewProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getFloatingRowsHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->usingTabs()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    if-eqz v3, :cond_0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    invoke-static {p1, v5, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(FFF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->getTabsAdditionalPaddingBottom()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07008c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    add-int/2addr v2, v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mIsGoingToSearch:Z

    if-eqz p0, :cond_1

    int-to-float p0, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {p1, v5, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(FFF)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1, v5, v4}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(FFF)F

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private updateSearchRecyclerViewProgress()I
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_e

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_0

    goto/16 :goto_a

    :cond_0
    if-nez v3, :cond_1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1
    invoke-virtual {v1, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v10

    invoke-direct {v0, v1, v10}, Lcom/android/launcher3/allapps/SearchTransitionController;->getSpanIndex(Lcom/android/launcher3/allapps/SearchRecyclerView;I)I

    move-result v11

    if-lez v6, :cond_2

    if-nez v11, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    or-int/2addr v7, v13

    invoke-direct {v0, v9}, Lcom/android/launcher3/allapps/SearchTransitionController;->isAppIcon(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_4

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v13, 0x1

    :goto_3
    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v13, :cond_6

    if-lez v11, :cond_5

    add-int/lit8 v8, v8, -0x1

    :cond_5
    const v15, 0x3e083127    # 0.133f

    const v16, 0x3c23d70a    # 0.01f

    int-to-float v2, v8

    mul-float v2, v2, v16

    sub-float/2addr v15, v2

    const/4 v12, 0x0

    invoke-static {v12, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    const v17, 0x3da9fbe7    # 0.083f

    add-float v12, v15, v17

    invoke-static {v14, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    move/from16 v17, v7

    iget v7, v0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    invoke-static {v7, v15, v12}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(FFF)F

    move-result v7

    sub-float v7, v14, v7

    const v12, 0x3f220c4a    # 0.633f

    sub-float/2addr v12, v2

    const/4 v2, 0x0

    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v12, 0x3e19999a    # 0.15f

    add-float/2addr v12, v2

    invoke-static {v14, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget v15, v0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    invoke-static {v15, v2, v12}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(FFF)F

    move-result v2

    sub-float v2, v14, v2

    const/4 v12, 0x1

    add-int/2addr v8, v12

    goto :goto_4

    :cond_6
    move/from16 v17, v7

    move v2, v14

    move v7, v2

    :goto_4
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_8

    instance-of v15, v9, Landroid/view/ViewGroup;

    if-eqz v15, :cond_8

    sget-object v15, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v15}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-virtual {v9, v14}, Landroid/view/View;->setAlpha(F)V

    move-object v10, v9

    check-cast v10, Landroid/view/ViewGroup;

    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-ge v15, v14, :cond_7

    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_7
    const/high16 v14, 0x437f0000    # 255.0f

    mul-float/2addr v2, v14

    goto :goto_7

    :cond_8
    invoke-virtual {v9, v7}, Landroid/view/View;->setAlpha(F)V

    const/4 v7, -0x1

    if-eq v10, v7, :cond_9

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float v15, v2, v10

    float-to-int v14, v15

    invoke-virtual {v7, v14}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->setDecorationFillAlpha(I)Z

    goto :goto_6

    :cond_9
    const/high16 v10, 0x437f0000    # 255.0f

    :goto_6
    if-eqz v12, :cond_a

    mul-float/2addr v2, v10

    :goto_7
    float-to-int v2, v2

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_a
    if-eqz v13, :cond_b

    iget v2, v0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzProgress:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v14, v7, v2

    goto :goto_8

    :cond_b
    const/high16 v7, 0x3f800000    # 1.0f

    move v14, v7

    :goto_8
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v14

    float-to-int v2, v2

    invoke-virtual {v9, v14}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v5

    if-lez v11, :cond_c

    sub-int/2addr v7, v2

    goto :goto_9

    :cond_c
    add-int/2addr v5, v2

    if-nez v13, :cond_d

    move v6, v2

    :cond_d
    :goto_9
    int-to-float v2, v7

    invoke-virtual {v9, v2}, Landroid/view/View;->setY(F)V

    move/from16 v7, v17

    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_e
    sub-int/2addr v5, v6

    return v5
.end method


# virtual methods
.method public animateToSearchState(ZJLjava/lang/Runnable;)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mIsGoingToSearch:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    sget-object v1, Lcom/android/launcher3/allapps/SearchTransitionController;->SEARCH_TO_AZ_PROGRESS:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInAllApps()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher3/allapps/SearchTransitionController;->INTERPOLATOR_WITHIN_ALL_APPS:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/launcher3/allapps/SearchTransitionController;->INTERPOLATOR_TRANSITIONING_TO_ALL_APPS:Landroid/view/animation/Interpolator;

    :goto_1
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSkipNextAnimationWithinAllApps:Z

    if-eqz v1, :cond_3

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    iput-boolean v3, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSkipNextAnimationWithinAllApps:Z

    :cond_3
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    if-ne v0, v1, :cond_4

    const-wide/16 p2, 0x0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    new-instance p3, Lcom/android/launcher3/allapps/y;

    invoke-direct {p3, p0}, Lcom/android/launcher3/allapps/y;-><init>(Lcom/android/launcher3/allapps/SearchTransitionController;)V

    invoke-static {p3}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p1, :cond_5

    iget-object p2, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    new-instance p3, Lcom/android/launcher3/allapps/z;

    invoke-direct {p3, p0}, Lcom/android/launcher3/allapps/z;-><init>(Lcom/android/launcher3/allapps/SearchTransitionController;)V

    invoke-static {p3}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    iget-object p2, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {p4}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->setFloatingRowsCollapsed(Z)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/launcher3/allapps/FloatingHeaderView;->maybeSetTabVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mAllAppsContainerView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsRecyclerViewContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/SearchTransitionController;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object p1

    new-instance p2, Lcom/android/launcher3/allapps/x;

    invoke-direct {p2, p0}, Lcom/android/launcher3/allapps/x;-><init>(Lcom/android/launcher3/allapps/SearchTransitionController;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/SearchRecyclerView;->setChildAttachedConsumer(Landroidx/core/util/Consumer;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/SearchTransitionController;->mSearchToAzAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
