.class public final Lcom/nothing/launcher/card/t;
.super Lcom/android/launcher3/widget/PendingItemDragHelper;
.source "SourceFile"


# instance fields
.field private final a:Lcom/android/launcher3/PendingAddItemInfo;


# direct methods
.method public constructor <init>(Landroid/view/View;Ly4/d;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;Ly4/d;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.android.launcher3.PendingAddItemInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/PendingAddItemInfo;

    iput-object p1, p0, Lcom/nothing/launcher/card/t;->a:Lcom/android/launcher3/PendingAddItemInfo;

    return-void
.end method


# virtual methods
.method public startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "previewBounds"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "screenPos"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "source"

    move-object/from16 v11, p5

    invoke-static {v11, v5}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "options"

    move-object/from16 v15, p6

    invoke-static {v15, v5}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/nothing/launcher/card/t;->a:Lcom/android/launcher3/PendingAddItemInfo;

    instance-of v5, v5, Lcom/nothing/launcher/card/v;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v6

    iget-object v7, v0, Lcom/nothing/launcher/card/t;->a:Lcom/android/launcher3/PendingAddItemInfo;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/launcher3/widget/PendingItemDragHelper;->mEstimatedCellSize:[I

    int-to-float v7, v2

    const/high16 v8, 0x3fa00000    # 1.25f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x0

    aget v6, v6, v8

    invoke-static {v7, v6}, Le6/e;->e(II)I

    move-result v6

    const/4 v7, 0x1

    new-array v9, v7, [I

    new-instance v10, Lcom/android/launcher3/icons/FastBitmapDrawable;

    new-instance v12, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    invoke-direct {v12, v5}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;-><init>(Landroid/content/Context;)V

    iget-object v13, v0, Lcom/nothing/launcher/card/t;->a:Lcom/android/launcher3/PendingAddItemInfo;

    check-cast v13, Lcom/nothing/launcher/card/v;

    invoke-virtual {v13}, Lcom/nothing/launcher/card/v;->j()Lcom/nothing/launcher/card/CardWidgetProviderInfo;

    move-result-object v13

    invoke-virtual {v12, v13, v6, v9}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generateCardPreview(Lcom/nothing/launcher/card/CardWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v10, v6}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->isRoundedCornerEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/nothing/launcher/card/t;->a:Lcom/android/launcher3/PendingAddItemInfo;

    iget v12, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v5, v12, v6}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeWidgetRadiusWithProfile(Landroid/content/Context;II)F

    move-result v6

    new-instance v12, Lcom/android/launcher3/icons/RoundDrawableWrapper;

    invoke-direct {v12, v10, v6}, Lcom/android/launcher3/icons/RoundDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    move-object v10, v12

    :cond_0
    aget v6, v9, v8

    const/4 v12, 0x2

    if-ge v6, v2, :cond_2

    aget v6, v9, v8

    sub-int v6, v2, v6

    div-int/2addr v6, v12

    if-le v2, v3, :cond_1

    mul-int/2addr v6, v3

    div-int/2addr v6, v2

    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    :cond_2
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    div-float v16, v6, v2

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v6

    new-instance v8, Lcom/nothing/launcher/card/g;

    const-string v9, "null cannot be cast to non-null type com.nothing.launcher.NTLauncher"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lq2/m;

    iget-object v9, v0, Lcom/android/launcher3/graphics/DragPreviewProvider;->mView:Landroid/view/View;

    const-string v13, "mView"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v5, v9}, Lcom/nothing/launcher/card/g;-><init>(Lq2/m;Landroid/view/View;)V

    invoke-virtual {v6, v8}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    invoke-static {v7}, Lcom/android/launcher3/dragndrop/DraggableView;->ofType(I)Lcom/android/launcher3/dragndrop/DraggableView;

    move-result-object v8

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    mul-float v7, v16, v2

    sub-float/2addr v7, v2

    int-to-float v2, v12

    div-float/2addr v7, v2

    float-to-int v7, v7

    add-int v9, v6, v7

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    int-to-float v1, v3

    mul-float v3, v16, v1

    sub-float/2addr v3, v1

    div-float/2addr v3, v2

    float-to-int v1, v3

    add-int/2addr v1, v4

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v6

    iget-object v12, v0, Lcom/nothing/launcher/card/t;->a:Lcom/android/launcher3/PendingAddItemInfo;

    const/4 v13, 0x0

    move-object v7, v10

    move v10, v1

    move-object/from16 v11, p5

    move/from16 v14, v16

    move/from16 v15, v16

    move-object/from16 v16, p6

    invoke-virtual/range {v6 .. v16}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    goto :goto_0

    :cond_3
    invoke-super/range {p0 .. p6}, Lcom/android/launcher3/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    :goto_0
    return-void
.end method
