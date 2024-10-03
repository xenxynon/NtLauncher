.class public Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;
.super Lcom/android/launcher3/BaseDraggingActivity;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/model/BgDataModel$Callbacks;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private mAppDrawerShown:Z

.field private mAppsButton:Landroid/view/View;

.field private mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
            ">;"
        }
    .end annotation
.end field

.field private mBindingItems:Z

.field private mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

.field private mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

.field private mModel:Lcom/android/launcher3/LauncherModel;

.field private mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "*>;"
        }
    .end annotation
.end field

.field private mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

.field private mSecondaryDisplayPredictions:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;

.field private mStringCache:Lcom/android/launcher3/model/StringCache;

.field private final mTempXY:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/BaseDraggingActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppDrawerShown:Z

    iput-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mBindingItems:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mTempXY:[I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsButton:Landroid/view/View;

    return-object p0
.end method

.method private beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v10, p5

    instance-of v3, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result v3

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    instance-of v5, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v5, :cond_1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    :cond_1
    instance-of v5, v1, Lcom/android/launcher3/dragndrop/DraggableView;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    check-cast v1, Lcom/android/launcher3/dragndrop/DraggableView;

    move-object v5, v1

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getContentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mTempXY:[I

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F

    move-result v2

    goto :goto_2

    :cond_3
    iget-object v7, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mTempXY:[I

    invoke-virtual {v2, v1, v7}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/view/View;[I)F

    move-result v2

    :goto_2
    move v9, v2

    iget-object v2, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mTempXY:[I

    aget v4, v2, v4

    const/4 v7, 0x1

    aget v2, v2, v7

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    if-eqz v5, :cond_4

    invoke-interface {v5, v7}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    iget v8, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v8

    :cond_4
    iget-object v8, v10, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v8, :cond_5

    invoke-interface {v8}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v11, v10, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    invoke-interface {v11}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    if-eqz v8, :cond_5

    if-eqz v11, :cond_5

    add-int/2addr v4, v8

    add-int/2addr v2, v11

    :cond_5
    move v8, v2

    iget-object v0, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    mul-float v11, v9, v3

    if-eqz v1, :cond_6

    move-object v2, v5

    move v3, v4

    move v4, v8

    move-object v5, p2

    move-object v6, p3

    move v8, v11

    move-object/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    goto :goto_3

    :cond_6
    move-object v1, v6

    move-object v2, v5

    move v3, v4

    move v4, v8

    move-object v5, p2

    move-object v6, p3

    move v8, v11

    move-object/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    :goto_3
    return-void
.end method

.method private initUi()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->toBuilder(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile$Builder;->setMultiWindowMode(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DeviceProfile$Builder;->setTransposeLayoutWithOrientation(Z)Lcom/android/launcher3/DeviceProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->autoResizeAllAppsCells()V

    const v0, 0x7f0e0134

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const v0, 0x7f0b0156

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer;

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    new-instance v0, Lcom/android/launcher3/popup/PopupDataProvider;

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lt/n;

    invoke-direct {v2, v1}, Lt/n;-><init>(Lcom/android/launcher3/allapps/AllAppsStore;)V

    invoke-direct {v0, v2}, Lcom/android/launcher3/popup/PopupDataProvider;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->addCallbacksAndLoad(Lcom/android/launcher3/model/BgDataModel$Callbacks;)Z

    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->onIconClicked(Landroid/view/View;)V

    return-void
.end method

.method private onIconClicked(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;

    invoke-interface {v0, p1}, Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;->onItemClicked(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_2

    invoke-virtual {v1, p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {p0, p1, v1, v0}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input must have a valid intent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_0

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v6, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v6, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "  tag: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bindAllApplications([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->dismissInvalidPopup(Lcom/android/launcher3/BaseDraggingActivity;)V

    return-void
.end method

.method public bindDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->setDeepShortcutMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public bindExtraContainerItems(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 2

    iget v0, p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    const/16 v1, -0x66

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mSecondaryDisplayPredictions:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;->setPredictedApps(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    :cond_0
    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public bindStringCache(Lcom/android/launcher3/model/StringCache;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mStringCache:Lcom/android/launcher3/model/StringCache;

    return-void
.end method

.method public finishBindingItems(Lcom/android/launcher3/util/IntSet;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mBindingItems:Z

    return-void
.end method

.method public getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    return-object p0
.end method

.method public getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    return-object p0
.end method

.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    return-object p0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lt/m;

    invoke-direct {v0, p0}, Lt/m;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)V

    return-object v0
.end method

.method public getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;

    return-object p0
.end method

.method public getOverviewPanel()Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    return-object p0
.end method

.method public getRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    return-object p0
.end method

.method public getSecondaryDisplayPredictions()Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mSecondaryDisplayPredictions:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;

    return-object p0
.end method

.method public getStringCache()Lcom/android/launcher3/model/StringCache;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mStringCache:Lcom/android/launcher3/model/StringCache;

    return-object p0
.end method

.method public isAppDrawerShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppDrawerShown:Z

    return p0
.end method

.method public onAppsButtonClicked(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->showAppDrawer(Z)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->initUi()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->finishAutoCancelActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->canHandleBack()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->onBackInvoked()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->showAppDrawer(Z)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mModel:Lcom/android/launcher3/LauncherModel;

    new-instance p1, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-direct {p1, p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)V

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    new-instance p1, Lcom/android/launcher3/util/OnboardingPrefs;

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/util/OnboardingPrefs;-><init>(Lcom/android/launcher3/views/ActivityContext;Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;

    invoke-static {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mSecondaryDisplayPredictions:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->initUi()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->removeCallbacks(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 0

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->showAppDrawer(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onPause()V

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    return-void
.end method

.method protected reapplyUi()V
    .locals 0

    return-void
.end method

.method public showAppDrawer(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppDrawerShown:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v5, 0x1

    aput v2, v3, v5

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v6, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsButton:Landroid/view/View;

    invoke-virtual {v2, v6, v3}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    iget-object v6, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v2, v6, v3}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[F)V

    iget-object v2, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    aget v6, v3, v4

    float-to-int v6, v6

    aget v3, v3, v5

    float-to-int v3, v3

    if-eqz p1, :cond_1

    move v7, v1

    goto :goto_0

    :cond_1
    move v7, v0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-static {v2, v6, v3, v7, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    if-eqz p1, :cond_3

    iput-boolean v5, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppDrawerShown:Z

    iget-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsView:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppsButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mSecondaryDisplayPredictions:Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;

    invoke-virtual {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayPredictions;->updateAppDivider()V

    goto :goto_2

    :cond_3
    iput-boolean v4, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mAppDrawerShown:Z

    new-instance p1, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher$1;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_2
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public startBinding()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mBindingItems:Z

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->mDragController:Lcom/android/launcher3/secondarydisplay/SecondaryDragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    return-void
.end method
