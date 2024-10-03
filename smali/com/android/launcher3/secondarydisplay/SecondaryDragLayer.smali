.class public Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;
.super Lcom/android/launcher3/views/BaseDragLayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$CloseAllAppsTouchController;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/views/BaseDragLayer<",
        "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
        ">;"
    }
.end annotation


# instance fields
.field private mAllAppsButton:Landroid/view/View;

.field private mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedAppsAdapter:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

.field private mWorkspace:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->recreateControllers()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->onIconLongClicked(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private onIconLongClicked(Landroid/view/View;)Z
    .locals 7

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Landroid/content/Context;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/launcher3/popup/SystemShortcut;->APP_INFO:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    iget-object v5, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-interface {v4, v5, v0, p1}, Lcom/android/launcher3/popup/SystemShortcut$Factory;->getShortcut(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->SECONDARY_DRAG_N_DROP_TO_PIN:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v5}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->isAppDrawerShown()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mPinnedAppsAdapter:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    invoke-virtual {v5, v0, p1}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->getSystemShortcut(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v2, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getShortcutCountForItem(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v0

    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MATERIAL_U_POPUP:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0e0114

    iget-object v6, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v6}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v6

    invoke-virtual {v2, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-object v5, p1

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2, v5, v0, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->populateAndShowRowsMaterialU(Lcom/android/launcher3/BubbleTextView;ILjava/util/List;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f0e0113

    iget-object v6, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v6}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v6

    invoke-virtual {v2, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-object v5, p1

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v5, v0, v6, v3}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->populateAndShow(Lcom/android/launcher3/BubbleTextView;ILjava/util/List;Ljava/util/List;)V

    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestFocus()Z

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->isAppDrawerShown()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v4

    iget v5, v4, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v5, v5

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    iput v5, v0, Lcom/android/launcher3/dragndrop/DragOptions;->intrinsicIconScaleFactor:F

    invoke-virtual {v2, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-nez v1, :cond_8

    new-instance v1, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V

    iput-object v1, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    check-cast p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {v1, p1, p0, v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    :cond_9
    :goto_1
    return v3
.end method


# virtual methods
.method public getPinnedAppsAdapter()Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mPinnedAppsAdapter:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mPinnedAppsAdapter:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->init()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mPinnedAppsAdapter:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;->destroy()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAllAppsButton:Landroid/view/View;

    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    new-instance v1, Lt/p;

    invoke-direct {v1, p0}, Lt/p;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setOnIconLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getSecondaryDisplayPredictions()Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    new-instance v2, Lt/p;

    invoke-direct {v2, p0}, Lt/p;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;->setLongClickListener(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0b0450

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mWorkspace:Landroid/widget/GridView;

    new-instance v0, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v2

    new-instance v3, Lt/p;

    invoke-direct {v3, p0}, Lt/p;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Lcom/android/launcher3/allapps/AllAppsStore;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mPinnedAppsAdapter:Lcom/android/launcher3/secondarydisplay/PinnedAppsAdapter;

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mWorkspace:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mWorkspace:Landroid/widget/GridView;

    iget-object p0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    iget-object v2, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v5, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v6, v5, :cond_0

    iget v5, v2, Lcom/android/launcher3/DeviceProfile;->desiredWorkspaceHorizontalMarginPx:I

    mul-int/lit8 v5, v5, 0x2

    iget-object v6, v2, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v8

    iget v8, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v8

    iget v8, v6, Landroid/graphics/Rect;->top:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v6

    iget v6, v2, Lcom/android/launcher3/DeviceProfile;->allAppsCellWidthPx:I

    iget v9, v2, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    mul-int/2addr v6, v9

    add-int/2addr v6, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v9

    sub-int/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iget v9, v2, Lcom/android/launcher3/DeviceProfile;->numShownAllAppsColumns:I

    mul-int/2addr v6, v9

    add-int/2addr v6, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v8

    sub-int v8, v1, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v8, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v8, v5, v6}, Landroid/widget/RelativeLayout;->measure(II)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAllAppsButton:Landroid/view/View;

    if-ne v6, v5, :cond_1

    iget v5, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {v6, v5, v5}, Landroid/view/View;->measure(II)V

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->mWorkspace:Landroid/widget/GridView;

    if-ne v6, v8, :cond_2

    const/4 v10, 0x0

    iget v5, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v6, v2, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int v12, v5, v6

    move-object v7, p0

    move v9, p1

    move v11, p2

    invoke-virtual/range {v7 .. v12}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move v7, p1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public recreateControllers()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/util/TouchController;

    new-instance v1, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$CloseAllAppsTouchController;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$CloseAllAppsTouchController;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/launcher3/views/BaseDragLayer;->mControllers:[Lcom/android/launcher3/util/TouchController;

    return-void
.end method
