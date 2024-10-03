.class public Lcom/android/launcher3/widget/PendingItemDragHelper;
.super Lcom/android/launcher3/graphics/DragPreviewProvider;
.source "SourceFile"


# instance fields
.field private final mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

.field private mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected mEstimatedCellSize:[I

.field private mRemoteViewsPreview:Landroid/widget/RemoteViews;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mRemoteViewsPreviewScale:F


# direct methods
.method public constructor <init>(Landroid/view/View;Ly4/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreviewScale:F

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/PendingAddItemInfo;

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    invoke-interface {p2}, Ly4/d;->getSource()I

    move-result p0

    iput p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->addWay:I

    return-void
.end method


# virtual methods
.method public setAppWidgetHostViewPreview(Lcom/android/launcher3/widget/NavigableAppWidgetHostView;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/widget/NavigableAppWidgetHostView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    return-void
.end method

.method public setRemoteViewsPreview(Landroid/widget/RemoteViews;F)V
    .locals 0
    .param p1    # Landroid/widget/RemoteViews;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    iput p2, p0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreviewScale:F

    return-void
.end method

.method public startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v7

    iget-object v8, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object v7

    iput-object v7, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    iget-object v8, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    instance-of v9, v8, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    if-eqz v9, :cond_7

    check-cast v8, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    int-to-float v6, v2

    const/high16 v9, 0x3fa00000    # 1.25f

    mul-float/2addr v6, v9

    float-to-int v6, v6

    aget v7, v7, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v7, v11, [I

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    if-eqz v9, :cond_0

    new-instance v9, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {v9, v5}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    const/4 v14, -0x1

    iget-object v15, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    check-cast v15, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v15, v15, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v9, v14, v15}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v9

    iget-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget-object v15, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreview:Landroid/widget/RemoteViews;

    invoke-virtual {v14, v15}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    iget-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iget v15, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v14, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v9, v15, v14}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetSizePx(Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v9

    iget-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v15

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v14, v15, v9}, Landroid/appwidget/AppWidgetHostView;->measure(II)V

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v9, v13}, Landroid/appwidget/AppWidgetHostView;->setClipChildren(Z)V

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v9, v13}, Landroid/appwidget/AppWidgetHostView;->setClipToPadding(Z)V

    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget v10, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mRemoteViewsPreviewScale:F

    invoke-virtual {v9, v10}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->setScaleToFit(F)V

    :cond_0
    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v9

    aput v9, v7, v13

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v9

    new-instance v10, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;

    invoke-direct {v10, v5}, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v9, v10}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_1
    iget-object v9, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-nez v9, :cond_2

    new-instance v9, Lcom/android/launcher3/icons/FastBitmapDrawable;

    new-instance v10, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    invoke-direct {v10, v5}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;-><init>(Landroid/content/Context;)V

    iget-object v8, v8, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v10, v8, v6, v7}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v9, v6}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->isRoundedCornerEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iget v8, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v5, v8, v6}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeWidgetRadiusWithProfile(Landroid/content/Context;II)F

    move-result v6

    new-instance v8, Lcom/android/launcher3/icons/RoundDrawableWrapper;

    invoke-direct {v8, v9, v6}, Lcom/android/launcher3/icons/RoundDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    move-object v9, v8

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :cond_3
    :goto_0
    aget v6, v7, v13

    if-ge v6, v2, :cond_5

    aget v6, v7, v13

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    if-le v2, v3, :cond_4

    mul-int/2addr v6, v3

    div-int/2addr v6, v2

    :cond_4
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :cond_5
    iget-object v2, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getScaleX()F

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v3

    iget-object v6, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v6}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v6

    int-to-float v3, v3

    mul-float v7, v3, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v6, v6

    mul-float v8, v6, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v2, v10

    mul-float/2addr v3, v2

    div-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float/2addr v6, v2

    div-float/2addr v6, v12

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_6
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v7

    div-float/2addr v2, v3

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v3

    new-instance v6, Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iget-object v10, v0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-direct {v6, v5, v10}, Lcom/android/launcher3/widget/WidgetHostViewLoader;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {v3, v6}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    invoke-static {v11}, Lcom/android/launcher3/dragndrop/DraggableView;->ofType(I)Lcom/android/launcher3/dragndrop/DraggableView;

    move-result-object v3

    move/from16 v22, v2

    move-object v15, v3

    move-object v14, v9

    const/16 v20, 0x0

    goto :goto_2

    :cond_7
    check-cast v8, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-virtual {v8, v5}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v5}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v3

    new-instance v9, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v3, v2, v13}, Lcom/android/launcher3/icons/BaseIconFactory;->createScaledBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v2, v2

    int-to-float v3, v7

    div-float/2addr v2, v3

    invoke-virtual {v5}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v3

    iget v6, v3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f07059a

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget v14, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v10

    iput v14, v1, Landroid/graphics/Rect;->left:I

    iget v14, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v10

    iput v14, v1, Landroid/graphics/Rect;->top:I

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    aget v15, v14, v13

    sub-int/2addr v15, v6

    div-int/lit8 v15, v15, 0x2

    iput v15, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v15, v6

    iput v15, v10, Landroid/graphics/Rect;->right:I

    aget v11, v14, v11

    sub-int/2addr v11, v6

    iget v14, v3, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    sub-int/2addr v11, v14

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    sub-int/2addr v11, v3

    div-int/lit8 v11, v11, 0x2

    iput v11, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v6

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    invoke-static {v13}, Lcom/android/launcher3/dragndrop/DraggableView;->ofType(I)Lcom/android/launcher3/dragndrop/DraggableView;

    move-result-object v3

    move/from16 v22, v2

    move-object v15, v3

    move-object v14, v9

    move-object/from16 v20, v10

    :goto_2
    iget v2, v4, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    int-to-float v3, v7

    mul-float v6, v22, v3

    sub-float/2addr v6, v3

    div-float/2addr v6, v12

    float-to-int v3, v6

    add-int v16, v2, v3

    iget v2, v4, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    int-to-float v1, v8

    mul-float v3, v22, v1

    sub-float/2addr v3, v1

    div-float/2addr v3, v12

    float-to-int v1, v3

    add-int v17, v2, v1

    iget-object v1, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v13

    if-eqz v1, :cond_8

    iget-object v14, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAppWidgetHostViewPreview:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    move-object/from16 v18, p5

    move-object/from16 v19, v0

    move/from16 v21, v22

    move-object/from16 v23, p6

    invoke-virtual/range {v13 .. v23}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    goto :goto_3

    :cond_8
    iget-object v0, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mAddInfo:Lcom/android/launcher3/PendingAddItemInfo;

    move-object/from16 v18, p5

    move-object/from16 v19, v0

    move/from16 v21, v22

    move-object/from16 v23, p6

    invoke-virtual/range {v13 .. v23}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    :goto_3
    return-void
.end method
