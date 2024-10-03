.class public Lcom/android/launcher3/MultipageCellLayout;
.super Lcom/android/launcher3/CellLayout;
.source "SourceFile"


# instance fields
.field private final mLeftBackground:Landroid/graphics/drawable/Drawable;

.field private final mRightBackground:Landroid/graphics/drawable/Drawable;

.field private mSeamWasAdded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/MultipageCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/MultipageCellLayout;->mSeamWasAdded:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f080204

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p2, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/MultipageCellLayout;IIIIIIZ[I[I)[I
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/launcher3/MultipageCellLayout;->lambda$findNearestArea$0(IIIIIIZ[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[IZ)Ljava/lang/Boolean;
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/launcher3/MultipageCellLayout;->lambda$createAreaForResize$3(IIIILandroid/view/View;[IZ)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[I)Ljava/lang/Boolean;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/MultipageCellLayout;->lambda$isNearestDropLocationOccupied$2(IIIILandroid/view/View;[I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[I)Ljava/lang/Integer;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/MultipageCellLayout;->lambda$getDirectionVectorForDrop$1(IIIILandroid/view/View;[I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createAreaForResize$3(IIIILandroid/view/View;[IZ)Ljava/lang/Boolean;
    .locals 0

    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$findNearestArea$0(IIIIIIZ[I[I)[I
    .locals 0

    invoke-super/range {p0 .. p9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDirectionVectorForDrop$1(IIIILandroid/view/View;[I)Ljava/lang/Integer;
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isNearestDropLocationOccupied$2(IIIILandroid/view/View;[I)Ljava/lang/Boolean;
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V
    .locals 8

    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    div-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_0

    iget-boolean v4, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    new-instance v5, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v4

    iget v7, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v3, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    invoke-direct {v5, v6, v4, v7, v3}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    invoke-virtual {p1, v2, v5}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 11

    move v0, p1

    move-object v1, p0

    iget v2, v1, Lcom/android/launcher3/CellLayout;->mCountX:I

    div-int/lit8 v2, v2, 0x2

    if-lt v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    move v2, v0

    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->createReorderAlgorithm()Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    move-result-object v9

    new-instance v10, Lcom/android/launcher3/b3;

    move-object v0, v10

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/b3;-><init>(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[IZ)V

    invoke-virtual {v9, v10}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public createReorderAlgorithm()Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;
    .locals 1

    new-instance v0, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    invoke-direct {v0, p0}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;-><init>(Lcom/android/launcher3/CellLayout;)V

    return-object v0
.end method

.method public bridge synthetic createReorderAlgorithm()Lcom/android/launcher3/celllayout/ReorderAlgorithm;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->createReorderAlgorithm()Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method protected findNearestArea(IIIIIIZ[I[I)[I
    .locals 13

    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->createReorderAlgorithm()Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    move-result-object v0

    new-instance v12, Lcom/android/launcher3/y2;

    move-object v1, v12

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher3/y2;-><init>(Lcom/android/launcher3/MultipageCellLayout;IIIIIIZ[I[I)V

    invoke-virtual {v0, v12}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->createReorderAlgorithm()Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    move-result-object v0

    new-instance v9, Lcom/android/launcher3/a3;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/a3;-><init>(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[I)V

    invoke-virtual {v0, v9}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    return-void
.end method

.method public getUnusedHorizontalSpace()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, p0

    sub-int/2addr v0, v1

    int-to-float p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 10

    invoke-virtual {p0}, Lcom/android/launcher3/MultipageCellLayout;->createReorderAlgorithm()Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;

    move-result-object v0

    new-instance v9, Lcom/android/launcher3/z2;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/z2;-><init>(Lcom/android/launcher3/MultipageCellLayout;IIIILandroid/view/View;[I)V

    invoke-virtual {v0, v9}, Lcom/android/launcher3/celllayout/MulticellReorderAlgorithm;->simulateSeam(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSeamWasAdded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/MultipageCellLayout;->mSeamWasAdded:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    iget p5, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 p5, p5, 0x2

    add-int/lit8 p5, p5, -0x14

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 p3, p2, 0x2

    add-int/lit8 p3, p3, 0x14

    iget p4, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p3, p4, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method performReorder(IIIIIILandroid/view/View;[I[II)[I
    .locals 12

    move v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    move v2, v0

    move-object v1, p0

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-super/range {v1 .. v11}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    return-object v0
.end method

.method public setCountX(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return-void
.end method

.method public setCountY(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    return-void
.end method

.method public setOccupied(Lcom/android/launcher3/util/GridOccupancy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    return-void
.end method

.method public setSeamWasAdded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/MultipageCellLayout;->mSeamWasAdded:Z

    return-void
.end method

.method protected updateBgAlpha()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mLeftBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher3/MultipageCellLayout;->mRightBackground:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    mul-float/2addr p0, v2

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
