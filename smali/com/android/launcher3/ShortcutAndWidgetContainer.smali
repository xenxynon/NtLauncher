.class public Lcom/android/launcher3/ShortcutAndWidgetContainer;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/folder/FolderIcon$FolderIconParent;


# instance fields
.field private final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private mBorderSpace:Landroid/graphics/Point;

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mContainerType:I

.field private mCountX:I

.field private mCountY:I

.field private mInvertIfRtl:Z

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iput p2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    return-void
.end method

.method private getCellPaddingY(Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;)I
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lj3/a;->g()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v1

    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isScalableGrid:Z

    if-eqz v2, :cond_1

    iget p0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-nez p0, :cond_1

    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->cellYPaddingPx:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    :goto_0
    return p0
.end method


# virtual methods
.method public addViewInLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, p2, v1}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p0

    return p0
.end method

.method public cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearFolderLeaveBehind(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    iget p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->clearFolderLeaveBehind()V

    :cond_0
    return-void
.end method

.method public getCellContentHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v1

    iget p0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    invoke-virtual {v1, p0}, Lcom/android/launcher3/DeviceProfile;->getCellContentHeight(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    if-gt v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    iget v5, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v4

    if-gt v4, p2, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v4

    iget v3, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    add-int/2addr v4, v3

    if-ge p2, v4, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public invertLayoutHorizontally()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public layoutChild(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    instance-of v1, p1, Lcom/nothing/launcher/widget/h;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/nothing/launcher/widget/h;

    iget-object v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/DeviceProfile;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-interface {v1, v4}, Lcom/nothing/launcher/widget/h;->setScaleToFit(F)V

    invoke-interface {v1}, Lcom/nothing/launcher/widget/h;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v1

    const/4 v4, 0x3

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v6, v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    sub-float/2addr v6, v5

    neg-float v3, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    int-to-float v7, v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    sub-float/2addr v7, v6

    neg-float v2, v7

    div-float/2addr v2, v5

    invoke-virtual {v1, v4, v3, v2}, Lcom/android/launcher3/util/MultiTranslateDelegate;->setTranslation(IFF)V

    :cond_0
    iget v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    iget v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v4, v2

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-boolean p1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->dropped:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->dropped:Z

    iget-object v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    iget-object v4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    aget p0, v3, p1

    add-int/2addr p0, v1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    div-int/lit8 p1, p1, 0x2

    add-int v7, p0, p1

    const/4 p0, 0x1

    aget p0, v3, p0

    add-int/2addr p0, v2

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/lit8 p1, p1, 0x2

    add-int v8, p0, p1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v6, "android.home.drop"

    invoke-virtual/range {v4 .. v10}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v8

    instance-of v1, p1, Lcom/nothing/launcher/widget/h;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v8, v1}, Lcom/android/launcher3/DeviceProfile;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    const/4 v10, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_0
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget-object v7, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setup(IIZIILandroid/graphics/Point;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getCellPaddingY(Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;)I

    move-result v1

    iget-object v2, v8, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-eqz v2, :cond_4

    :cond_1
    iget v2, v8, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    :cond_2
    iget v2, v8, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v4

    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    move p0, v4

    goto :goto_1

    :cond_5
    iget p0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mContainerType:I

    if-nez p0, :cond_6

    iget p0, v8, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    goto :goto_1

    :cond_6
    iget p0, v8, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    int-to-float p0, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    float-to-int p0, p0

    :goto_1
    invoke-virtual {p1, p0, v1, p0, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_2
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layoutChild(Landroid/view/View;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public setCellDimensions(IIIILandroid/graphics/Point;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iput p2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    iput p3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iput p4, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iput-object p5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mInvertIfRtl:Z

    return-void
.end method

.method public setupLp(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    instance-of v0, p1, Lcom/nothing/launcher/widget/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/DeviceProfile;->getAppWidgetScale(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/PointF;

    move-result-object p1

    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget v7, p1, Landroid/graphics/PointF;->x:F

    iget v8, p1, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setup(IIZIIFFLandroid/graphics/Point;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCellHeight:I

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    iget v5, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountX:I

    iget v6, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mCountY:I

    iget-object v7, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;->mBorderSpace:Landroid/graphics/Point;

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setup(IIZIILandroid/graphics/Point;)V

    :goto_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
