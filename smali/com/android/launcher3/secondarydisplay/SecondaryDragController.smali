.class public Lcom/android/launcher3/secondarydisplay/SecondaryDragController;
.super Lcom/android/launcher3/dragndrop/DragController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/dragndrop/DragController<",
        "Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method public static synthetic b(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController;->lambda$startDrag$0(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private static synthetic lambda$startDrag$0(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected exitDrag()V
    .locals 0

    return-void
.end method

.method protected getDefaultDropTarget([I)Lcom/android/launcher3/DropTarget;
    .locals 0

    new-instance p1, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragController$1;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragController;)V

    return-object p1
.end method

.method protected startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 18
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p11

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v4, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->hideKeyboard()V

    iput-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v3, v3, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    if-eqz v3, :cond_0

    iget-object v4, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->x:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    iput v6, v4, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    iput v3, v5, Landroid/graphics/Point;->y:I

    iput v3, v4, Landroid/graphics/Point;->y:I

    :cond_0
    iget-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int v10, v4, p4

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int v11, v3, p5

    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget v4, v2, Landroid/graphics/Rect;->left:I

    :goto_0
    if-nez v2, :cond_2

    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    iget v5, v2, Landroid/graphics/Rect;->top:I

    move v15, v5

    :goto_1
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    new-instance v5, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v6, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v6, p3

    iput-object v6, v5, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    const/16 v16, 0x1

    if-eqz v5, :cond_3

    const-wide/16 v6, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result v5

    if-nez v5, :cond_3

    move/from16 v5, v16

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v5, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v6, :cond_4

    const v6, 0x7f0704b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    move v14, v5

    iget-object v13, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    new-instance v17, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;

    iget-object v5, v0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    move-object v6, v5

    check-cast v6, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    if-eqz p1, :cond_5

    move-object/from16 v5, v17

    move-object/from16 v7, p1

    move v8, v10

    move v9, v11

    move/from16 v10, p9

    move/from16 v11, p10

    move v12, v14

    invoke-direct/range {v5 .. v12}, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Landroid/graphics/drawable/Drawable;IIFFF)V

    move-object v3, v13

    goto :goto_4

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    move-object/from16 v5, v17

    move-object/from16 v7, p2

    move/from16 v12, p9

    move-object v3, v13

    move/from16 v13, p10

    invoke-direct/range {v5 .. v14}, Lcom/android/launcher3/secondarydisplay/SecondaryDragView;-><init>(Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;Landroid/view/View;IIIIFFF)V

    :goto_4
    iput-object v5, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/dragndrop/DragView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    add-int v4, p4, v4

    sub-int/2addr v7, v4

    iput v7, v3, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    iget v4, v6, Landroid/graphics/Point;->y:I

    add-int v6, p5, v15

    sub-int/2addr v4, v6

    iput v4, v3, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    iget-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    sget-object v4, Lt/o;->g:Lt/o;

    invoke-static {v0, v3, v4}, Lcom/android/launcher3/dragndrop/DragDriver;->create(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/dragndrop/DragOptions;Ljava/util/function/Consumer;)Lcom/android/launcher3/dragndrop/DragDriver;

    move-result-object v3

    iput-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    iget-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-boolean v3, v3, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v5}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object v4

    iput-object v4, v3, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    :cond_6
    iget-object v3, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v4, p6

    iput-object v4, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iput-object v1, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual/range {p7 .. p7}, Lcom/android/launcher3/model/data/ItemInfo;->makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v1

    iput-object v1, v3, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->getDragOffset()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v1, v16

    :goto_6
    invoke-virtual {v5, v1}, Lcom/android/launcher3/dragndrop/DragView;->setHasDragOffset(Z)V

    :cond_9
    if-eqz v2, :cond_a

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v1}, Lcom/android/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    :cond_a
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v3, v1}, Lcom/android/launcher3/dragndrop/DragView;->show(II)V

    iput v2, v0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    iget-boolean v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragStart()V

    goto :goto_7

    :cond_b
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v1, v1, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v1, :cond_c

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v1, v2}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_c
    :goto_7
    iget-object v1, v0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    return-object v5
.end method
