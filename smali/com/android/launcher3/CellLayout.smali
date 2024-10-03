.class public Lcom/android/launcher3/CellLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/CellLayout$ItemConfiguration;,
        Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;,
        Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;,
        Lcom/android/launcher3/CellLayout$ViewCluster;,
        Lcom/android/launcher3/CellLayout$CellInfo;
    }
.end annotation


# static fields
.field private static final ANIMATION_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final BACKGROUND_STATE_ACTIVE:[I

.field private static final BACKGROUND_STATE_DEFAULT:[I

.field private static final FOLDER_LEAVE_BEHIND_COLOR:I

.field public static final SPRING_LOADED_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field protected final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field protected final mBackground:Landroid/graphics/drawable/Drawable;

.field protected mBorderSpace:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field mCellHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field mCellWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mChildScale:F

.field private final mContainerType:I

.field protected mCountX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mCountY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mDelegatedCellDrawings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;",
            ">;"
        }
    .end annotation
.end field

.field public final mDirectionVector:[I

.field private final mDragCell:[I

.field private final mDragCellSpan:[I

.field final mDragOutlineAlphas:[F

.field private final mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field final mDragOutlines:[Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

.field private mDragging:Z

.field private mDropPending:Z

.field private final mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFixedCellHeight:I

.field private mFixedCellWidth:I

.field private mFixedHeight:I

.field private mFixedWidth:I

.field final mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

.field private mGridAlpha:F

.field private mGridColor:I

.field private mGridVisualizationRoundingRadius:I

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private final mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragOverlapping:Z

.field private mItemPlacementDirty:Z

.field protected mOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field private final mOccupiedRect:Landroid/graphics/Rect;

.field mPreviousSolution:Lcom/android/launcher3/CellLayout$ItemConfiguration;

.field final mReorderAnimators:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final mReorderPreviewAnimationMagnitude:F

.field private mScrollProgress:F

.field final mShakeAnimators:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher3/Reorderable;",
            "Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;",
            ">;"
        }
    .end annotation
.end field

.field protected final mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field protected mSpringLoadedProgress:F

.field final mTempLocation:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTmpFloatArray:[F

.field public mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field final mTmpPoint:[I

.field final mTmpPointF:Landroid/graphics/PointF;

.field mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

.field private mVisualizeCells:Z

.field private mVisualizeDropLocation:Z

.field private mVisualizeGridPaint:Landroid/graphics/Paint;

.field private mVisualizeGridRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa0

    const/16 v1, 0xf5

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/launcher3/CellLayout;->FOLDER_LEAVE_BEHIND_COLOR:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a2

    aput v2, v0, v1

    sput-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_ACTIVE:[I

    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    sput-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_DEFAULT:[I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/android/launcher3/CellLayout$1;

    const-string v1, "spring_loaded_progress"

    invoke-direct {v0, v1}, Lcom/android/launcher3/CellLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/CellLayout;->SPRING_LOADED_PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/CellLayout$6;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "animationProgress"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/CellLayout$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/CellLayout;->ANIMATION_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    new-array v4, v3, [I

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v4}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    const/4 v5, -0x1

    iput v5, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    iput v5, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    const/4 v6, 0x4

    new-array v7, v6, [Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    array-length v8, v7

    new-array v8, v8, [F

    iput-object v8, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    array-length v7, v7

    new-array v7, v7, [Lcom/android/launcher3/InterruptibleInOutAnimator;

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iput v2, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mVisualizeCells:Z

    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/launcher3/CellLayout;->mVisualizeDropLocation:Z

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    iput v8, v0, Lcom/android/launcher3/CellLayout;->mGridAlpha:F

    iput v2, v0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    iput v8, v0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    iput v8, v0, Lcom/android/launcher3/CellLayout;->mScrollProgress:F

    new-array v9, v3, [I

    iput-object v9, v0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    new-array v10, v3, [I

    iput-object v10, v0, Lcom/android/launcher3/CellLayout;->mDragCellSpan:[I

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, v0, Lcom/android/launcher3/CellLayout;->mChildScale:F

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    new-array v3, v3, [I

    iput-object v3, v0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/launcher3/CellLayout;->mPreviousSolution:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/CellLayout;->mTempRectF:Landroid/graphics/RectF;

    new-array v3, v6, [F

    iput-object v3, v0, Lcom/android/launcher3/CellLayout;->mTmpFloatArray:[F

    sget-object v3, Lcom/android/launcher3/R$styleable;->CellLayout:[I

    move-object/from16 v6, p2

    move/from16 v11, p3

    invoke-virtual {v1, v6, v3, v11, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    iput-object v3, v0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/CellLayout;->resetCellSizeInternal(Lcom/android/launcher3/DeviceProfile;)V

    iget-object v6, v3, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v11, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v11, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v6, v6, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v6, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    new-instance v12, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v12, v11, v6}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v12, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    new-instance v6, Lcom/android/launcher3/util/GridOccupancy;

    iget v11, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v12, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v6, v11, v12}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v6, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iput v5, v4, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellX:I

    iput v5, v4, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellY:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const v11, 0x7f080204

    invoke-virtual {v6, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const v11, 0x7f0405ad

    invoke-static {v6, v11}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    const v6, 0x7f070237

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v0, Lcom/android/launcher3/CellLayout;->mGridVisualizationRoundingRadius:I

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v3, v3

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v3, v6

    iput v3, v0, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2_5:Landroid/view/animation/Interpolator;

    iput-object v3, v0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    aput v5, v9, v7

    aput v5, v9, v2

    aput v5, v10, v7

    aput v5, v10, v2

    move v3, v2

    :goto_0
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    array-length v6, v5

    if-ge v3, v6, :cond_0

    new-instance v6, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-direct {v6, v2, v2, v2, v2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;-><init>(IIII)V

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const v5, 0x7f0405b6

    invoke-static {v1, v5}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    const v3, 0x7f0c0010

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v5, 0x7f0c0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    invoke-static {v5, v8}, Ljava/util/Arrays;->fill([FF)V

    :goto_1
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    new-instance v5, Lcom/android/launcher3/InterruptibleInOutAnimator;

    int-to-long v6, v3

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/android/launcher3/InterruptibleInOutAnimator;-><init>(JFF)V

    invoke-virtual {v5}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/CellLayout$2;

    invoke-direct {v7, p0, v2}, Lcom/android/launcher3/CellLayout$2;-><init>(Lcom/android/launcher3/CellLayout;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aput-object v5, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v3, v0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    invoke-direct {v2, v1, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v10, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v11, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v12, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v13, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    move-object v9, v2

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->lambda$rearrangementExists$0(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/Workspace;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Landroid/util/Property;
    .locals 1

    sget-object v0, Lcom/android/launcher3/CellLayout;->ANIMATION_PROGRESS:Landroid/util/Property;

    return-object v0
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 11

    iget-object p4, p4, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/CellAndSpan;

    iget-object p4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    iget-object p4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v1, 0x1

    invoke-virtual {p4, p2, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v5, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v6, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v8, p2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v10, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v9, 0x0

    move-object v2, p0

    move-object v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget p3, p2, v0

    if-ltz p3, :cond_0

    aget p3, p2, v1

    if-ltz p3, :cond_0

    aget p3, p2, v0

    iput p3, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget p2, p2, v1

    iput p2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    move v0, v1

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    return v0
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_0

    return v11

    :cond_0
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v13, p1

    invoke-virtual {v10, v13, v12}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v2, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v2, v1, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget v1, v12, Landroid/graphics/Rect;->top:I

    iget v2, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    iget v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int/2addr v4, v2

    iget v5, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int/2addr v5, v1

    iget v6, v3, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v7, v3, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    const/4 v8, 0x1

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    goto :goto_1

    :cond_2
    iget-object v1, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v11}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    iget v1, v12, Landroid/graphics/Rect;->left:I

    iget v2, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v6, v5, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v7, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v8, v9, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v1, v0, v14

    if-ltz v1, :cond_4

    aget v1, v0, v11

    if-ltz v1, :cond_4

    aget v1, v0, v14

    iget v2, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    aget v0, v0, v11

    iget v2, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    iget v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    goto :goto_2

    :cond_3
    move v14, v11

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v2, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v2, v1, v11}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_3

    :cond_5
    return v14
.end method

.method private animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v10, v8, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v10}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x1

    if-ge v13, v11, :cond_2

    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v7, p2

    if-ne v15, v7, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz v6, :cond_1

    iget v2, v6, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v6, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v12, v6

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    invoke-virtual {v10, v12, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-boolean v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->useResizeCoords:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->useResizeCoords:Z

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v10, v9, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :cond_3
    return-void
.end method

.method private applyColorExtractionOnWidget(Lcom/android/launcher3/DropTarget$DragObject;[III)V
    .locals 9

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    aget v4, p2, v2

    aget v5, p2, v1

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object v3, p0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->handleDrag(Landroid/graphics/Rect;Landroid/view/View;I)V

    :cond_0
    instance-of v0, p1, Lcom/nothing/launcher/card/r;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    aget v4, p2, v2

    aget v5, p2, v1

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object v3, p0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    check-cast p1, Lcom/nothing/launcher/card/r;

    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p0, v0}, Lcom/nothing/launcher/card/r;->l0(Landroid/graphics/Rect;Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    if-le v1, v2, :cond_4

    aget v1, p3, v2

    aput v0, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    aput v1, p3, v2

    aget v1, p3, v0

    aput v0, p3, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    aput v1, p3, v0

    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    aget v1, p3, v2

    aput v0, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    aput v1, p3, v2

    aget v1, p3, v0

    aput v0, p3, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    aput v1, p3, v0

    aget p0, p3, v0

    mul-int/lit8 p0, p0, -0x1

    aput p0, p3, v0

    aget p0, p3, v2

    mul-int/lit8 p0, p0, -0x1

    aput p0, p3, v2

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    aget v1, p3, v2

    aget v3, p3, v0

    aput v3, p3, v2

    aput v1, p3, v0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    aget p0, p3, v0

    mul-int/lit8 p0, p0, -0x1

    aput p0, p3, v0

    aget p0, p3, v2

    mul-int/lit8 p0, p0, -0x1

    aput p0, p3, v2

    aget p0, p3, v2

    aget p1, p3, v0

    aput p1, p3, v2

    aput p0, p3, v0

    :goto_0
    return v0
.end method

.method public static synthetic b(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/CellLayout;->lambda$rearrangementExists$1(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v10, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    move v14, v13

    :goto_0
    if-ge v14, v12, :cond_3

    iget-object v0, v10, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v15, p2

    if-ne v2, v15, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    if-nez p3, :cond_1

    iget-object v1, v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v13

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    instance-of v1, v2, Lcom/android/launcher3/Reorderable;

    if-eqz v1, :cond_2

    new-instance v16, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v5

    iget v6, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v7, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v8, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v9, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v3, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;-><init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;IIIIIII)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animate()V

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private canCreateFolder(Landroid/view/View;)Z
    .locals 0

    instance-of p0, p1, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/launcher3/dragndrop/DraggableView;

    invoke-interface {p1}, Lcom/android/launcher3/dragndrop/DraggableView;->getViewType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private commitTempPlacement(Landroid/view/View;)V
    .locals 14

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, -0x1

    const/16 v1, -0x65

    goto :goto_0

    :cond_0
    const/16 v1, -0x64

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v11, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v5, :cond_3

    if-eq v3, p1, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v3

    iget v6, v3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    invoke-virtual {v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget v6, v3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    invoke-virtual {v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v7

    if-ne v6, v7, :cond_2

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    if-ne v6, v7, :cond_2

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v7, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    if-ne v6, v7, :cond_2

    iget v3, v3, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->screenId:I

    if-eq v3, v0, :cond_1

    goto :goto_2

    :cond_1
    move v3, v12

    goto :goto_3

    :cond_2
    :goto_2
    move v3, v2

    :goto_3
    invoke-virtual {v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    invoke-virtual {v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v3}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v7

    invoke-virtual {v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v8

    iget v9, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v10, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    move-object v4, v5

    move v5, v1

    move v6, v0

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private completeAndClearReorderPreviewAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finishAnimation()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method private computeDirectionVector(FF[I)V
    .locals 7

    div-float p0, p2, p1

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const/4 p0, 0x0

    aput p0, p3, p0

    const/4 v2, 0x1

    aput p0, p3, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, p3, p0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpl-double p0, p0, v5

    if-lez p0, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    aput p0, p3, v2

    :cond_1
    return-void
.end method

.method private copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-object v5, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz v3, :cond_1

    iget v5, v3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v4, v5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    iget v5, v3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v4, v5}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    iget v5, v3, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iput v5, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v5, v3, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iput v5, v4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v4, v3, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    return-void
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    if-eqz p8, :cond_0

    move-object/from16 v3, p8

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    :goto_0
    const/high16 v4, -0x80000000

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v6, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    const/4 v9, 0x0

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    :goto_1
    add-int/lit8 v11, v2, -0x1

    sub-int v11, v6, v11

    const/4 v12, 0x1

    if-ge v9, v11, :cond_8

    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v13, v1, -0x1

    sub-int v13, v5, v13

    if-ge v11, v13, :cond_7

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v1, :cond_4

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v2, :cond_3

    add-int v15, v11, v13

    aget-object v15, p6, v15

    add-int v16, v9, v14

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_2

    if-eqz p7, :cond_1

    aget-object v15, p7, v13

    aget-boolean v15, v15, v14

    if-eqz v15, :cond_2

    :cond_1
    move/from16 v17, v9

    goto :goto_5

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    sub-int v13, v11, p1

    int-to-double v14, v13

    sub-int v7, v9, p2

    move/from16 v17, v9

    int-to-double v8, v7

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    int-to-float v13, v13

    int-to-float v7, v7

    invoke-direct {v0, v13, v7, v9}, Lcom/android/launcher3/CellLayout;->computeDirectionVector(FF[I)V

    const/4 v7, 0x0

    aget v13, p5, v7

    aget v14, v9, v7

    mul-int/2addr v13, v14

    aget v7, p5, v12

    aget v9, v9, v12

    mul-int/2addr v7, v9

    add-int/2addr v13, v7

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-ltz v7, :cond_5

    invoke-static {v8, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_6

    if-le v13, v4, :cond_6

    :cond_5
    const/4 v4, 0x0

    aput v11, v3, v4

    aput v17, v3, v12

    move v10, v8

    move v4, v13

    :cond_6
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v17

    goto :goto_2

    :cond_7
    move/from16 v17, v9

    add-int/lit8 v9, v17, 0x1

    goto :goto_1

    :cond_8
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v10, v4

    if-nez v0, :cond_9

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput v0, v3, v1

    aput v0, v3, v12

    :cond_9
    return-object v3
.end method

.method private findReorderSolutionForResize(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isResize:Z

    invoke-virtual/range {p0 .. p10}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/android/launcher3/util/ParcelableSparseArray;"
        }
    .end annotation

    const p0, 0x7f0b00e4

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    instance-of p1, p0, Lcom/android/launcher3/util/ParcelableSparseArray;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/android/launcher3/util/ParcelableSparseArray;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/launcher3/util/ParcelableSparseArray;

    invoke-direct {p0}, Lcom/android/launcher3/util/ParcelableSparseArray;-><init>()V

    :goto_0
    return-object p0
.end method

.method private getWorkspace()Lcom/android/launcher3/Workspace;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    return-object p0
.end method

.method private getWorkspaceCellVisualCenter(II[I)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/dragndrop/DraggableView;

    const/4 v2, 0x2

    new-array v3, v2, [I

    new-array v2, v2, [I

    const/4 v4, 0x0

    aput p1, v2, v4

    const/4 v5, 0x1

    aput p2, v2, v5

    invoke-static {v0, v2, v3}, Lb3/m;->c(Landroid/view/View;[I[I)V

    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/DraggableView;->getViewType()I

    move-result v0

    if-nez v0, :cond_0

    aget p1, v2, v4

    aget p2, v2, v5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, p1}, Lcom/android/launcher3/dragndrop/DraggableView;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    aget p2, p3, v4

    aget v0, p3, v5

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    aput p1, p3, v4

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    aput p0, p3, v5

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    return-void
.end method

.method private isOccupiedExt(II)Z
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object p0, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object p0, p0, p1

    aget-boolean p0, p0, p2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$rearrangementExists$0(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$rearrangementExists$1(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/CellLayout$ViewCluster;

    invoke-direct {v0, p0, p1, p5}, Lcom/android/launcher3/CellLayout$ViewCluster;-><init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, p3, v2

    const/4 v4, 0x1

    if-gez v3, :cond_0

    iget p3, v1, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, p2

    move p2, v4

    goto :goto_2

    :cond_0
    aget v3, p3, v2

    if-lez v3, :cond_1

    const/4 p3, 0x4

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    :goto_0
    sub-int/2addr p2, v1

    :goto_1
    move v6, p3

    move p3, p2

    move p2, v6

    goto :goto_2

    :cond_1
    aget p3, p3, v4

    if-gez p3, :cond_2

    const/4 p3, 0x2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int p2, v1, p2

    goto :goto_1

    :cond_2
    const/16 p3, 0x8

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :goto_2
    if-gtz p3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v3, p5, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {p5}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->save()V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/CellLayout$ViewCluster;->sortConfigurationForEdgePush(I)V

    move p1, v2

    :goto_4
    if-lez p3, :cond_8

    if-nez p1, :cond_8

    iget-object v1, p5, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v5, v0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eq v3, p4, :cond_5

    invoke-virtual {v0, v3, p2}, Lcom/android/launcher3/CellLayout$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-boolean v5, v5, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    if-nez v5, :cond_6

    move p1, v4

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v3}, Lcom/android/launcher3/CellLayout$ViewCluster;->addView(Landroid/view/View;)V

    iget-object v5, p5, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v5, v3, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p2, v4}, Lcom/android/launcher3/CellLayout$ViewCluster;->shift(II)V

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object p2

    if-nez p1, :cond_9

    iget p1, p2, Landroid/graphics/Rect;->left:I

    if-ltz p1, :cond_9

    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget p3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-gt p1, p3, :cond_9

    iget p1, p2, Landroid/graphics/Rect;->top:I

    if-ltz p1, :cond_9

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-gt p1, p2, :cond_9

    move v2, v4

    goto :goto_7

    :cond_9
    invoke-virtual {p5}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->restore()V

    :goto_7
    iget-object p1, v0, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget-object p3, p5, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/CellAndSpan;

    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p3, p2, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_8

    :cond_a
    return v2
.end method

.method private resetCellSizeInternal(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/graphics/Point;

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    invoke-direct {v0, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:I

    invoke-direct {v0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/Point;

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    invoke-direct {v0, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :goto_1
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    return-void
.end method

.method private setGridAlpha(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mGridAlpha:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mGridAlpha:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method private setUseTempCoords(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iput-boolean p1, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->useTmpCoords:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptsWidget()Z
    .locals 0

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public addDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/celllayout/CellLayoutLayoutParams;Z)Z
    .locals 5

    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-eq v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v0

    if-ltz v0, :cond_5

    invoke-virtual {p4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v3, v2

    if-gt v0, v3, :cond_5

    invoke-virtual {p4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v0

    if-ltz v0, :cond_5

    invoke-virtual {p4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    add-int/lit8 v4, v3, -0x1

    if-gt v0, v4, :cond_5

    iget v0, p4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iput v0, p4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    :cond_2
    iget v0, p4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    if-gez v0, :cond_3

    iput v3, p4, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p3, p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v6, p2

    move/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v11, 0x0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    instance-of v0, v8, Lcom/android/launcher3/Reorderable;

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    move-object v13, v8

    check-cast v13, Lcom/android/launcher3/Reorderable;

    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p7, :cond_2

    if-eqz p6, :cond_1

    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    :goto_0
    invoke-virtual {v12}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v15

    invoke-virtual {v12}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v16

    iget v1, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v2, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    const/16 v19, 0x0

    move-object v14, v0

    move/from16 v17, v1

    move/from16 v18, v2

    invoke-virtual/range {v14 .. v19}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    iget v3, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v4, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_2
    iget v0, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    iget v1, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    const/4 v14, 0x1

    iput-boolean v14, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    if-eqz p6, :cond_3

    invoke-virtual {v12, v6}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    invoke-virtual {v12, v9}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v12, v6}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    invoke-virtual {v12, v9}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    :goto_1
    invoke-virtual {v10, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    iget v2, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    iget v3, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    iput v0, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    iput v1, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    iput-boolean v11, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    invoke-interface {v13}, Lcom/android/launcher3/Reorderable;->getTranslateDelegate()Lcom/android/launcher3/util/MultiTranslateDelegate;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->getValue()F

    move-result v5

    invoke-virtual {v4, v14}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->getValue()F

    move-result v4

    sub-int/2addr v2, v0

    int-to-float v6, v2

    sub-int/2addr v3, v1

    int-to-float v9, v3

    const/4 v0, 0x0

    cmpl-float v1, v6, v0

    if-nez v1, :cond_4

    cmpl-float v1, v9, v0

    if-nez v1, :cond_4

    cmpl-float v1, v5, v0

    if-nez v1, :cond_4

    cmpl-float v0, v4, v0

    if-nez v0, :cond_4

    iput-boolean v14, v12, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->isLockedToGrid:Z

    return v14

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    move/from16 v0, p4

    int-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/android/launcher3/CellLayout$4;

    move-object v0, v11

    move-object/from16 v1, p0

    move v2, v5

    move v3, v6

    move v5, v9

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout$4;-><init>(Lcom/android/launcher3/CellLayout;FFFFLcom/android/launcher3/Reorderable;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/launcher3/CellLayout$5;

    invoke-direct {v0, v7, v12, v13, v8}, Lcom/android/launcher3/CellLayout$5;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;Lcom/android/launcher3/Reorderable;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v0, p5

    int-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    return v14

    :cond_5
    return v11

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public calculateReorder(IIIIIILandroid/view/View;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->createReorderAlgorithm()Lcom/android/launcher3/celllayout/ReorderAlgorithm;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->calculateReorder(IIIIIILandroid/view/View;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public canFindSolution(IIIILandroid/view/View;[I[I)Z
    .locals 16

    const/4 v0, 0x2

    new-array v0, v0, [I

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    new-instance v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v1}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    new-instance v14, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v14}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    aget v4, v0, v2

    const/4 v15, 0x1

    aget v5, v0, v15

    const/4 v12, 0x1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p5

    move-object v13, v14

    invoke-direct/range {v3 .. v13}, Lcom/android/launcher3/CellLayout;->findReorderSolutionForResize(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v14, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/CellAndSpan;

    move-object/from16 v6, p5

    if-eq v6, v4, :cond_0

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/launcher3/util/CellAndSpan;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    aget v3, p7, v2

    add-int/2addr v3, v15

    aput v3, p7, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, v14, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return v0
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

.method cellToCenterPoint(II[I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    return-void
.end method

.method cellToPoint(II[I)V
    .locals 6

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    const/4 p2, 0x0

    aput p1, p3, p2

    iget p0, p0, Landroid/graphics/Rect;->top:I

    const/4 p1, 0x1

    aput p0, p3, p1

    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 6

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v4, p0, Landroid/graphics/Point;->x:I

    mul-int v5, p1, v4

    add-int/2addr v2, v5

    mul-int/2addr p1, v0

    add-int/2addr v2, p1

    iget p0, p0, Landroid/graphics/Point;->y:I

    mul-int p1, p2, p0

    add-int/2addr v3, p1

    mul-int/2addr p2, v1

    add-int/2addr v3, p2

    mul-int/2addr v0, p3

    add-int/lit8 p3, p3, -0x1

    mul-int/2addr p3, v4

    add-int/2addr v0, p3

    mul-int/2addr v1, p4

    add-int/lit8 p4, p4, -0x1

    mul-int/2addr p4, p0

    add-int/2addr v1, p4

    add-int/2addr v0, v2

    add-int/2addr v1, v3

    invoke-virtual {p5, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p0, p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    return p0
.end method

.method public clearDragOutlines()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v0, 0x1

    const/4 v1, -0x1

    aput v1, p0, v0

    const/4 v0, 0x0

    aput v1, p0, v0

    return-void
.end method

.method public clearFolderLeaveBehind()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellX:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellY:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    new-instance v4, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v6

    iget v7, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v3, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v6

    iget v7, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v3, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    :goto_1
    invoke-virtual {p1, v2, v4}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v13, p7

    const/4 v0, 0x2

    new-array v6, v0, [I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    const/4 v14, 0x0

    aget v1, v6, v14

    const/4 v15, 0x1

    aget v2, v6, v15

    new-instance v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v10}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    const/4 v9, 0x1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v1, :cond_1

    invoke-direct {v11, v15}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    invoke-direct {v11, v0, v12}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    invoke-virtual {v11, v15}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    invoke-direct {v11, v0, v12, v13}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-eqz v13, :cond_0

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/android/launcher3/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    invoke-virtual {v11, v14}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    invoke-direct {v11, v14}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {v11, v0, v12, v15}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    :goto_0
    iget-object v1, v11, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return v0
.end method

.method public createAreaForResizeNoTemp(IIIILandroid/view/View;[IZ)Z
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v13, p7

    const/4 v0, 0x2

    new-array v6, v0, [I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    const/4 v14, 0x0

    aget v1, v6, v14

    const/4 v15, 0x1

    aget v2, v6, v15

    new-instance v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v10}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    const/4 v9, 0x1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->findReorderSolutionForResize(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    invoke-direct {v11, v14}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    iget-boolean v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v1, :cond_1

    invoke-direct {v11, v0, v12}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    invoke-virtual {v11, v15}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    invoke-direct {v11, v0, v12, v13}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-eqz v13, :cond_0

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/android/launcher3/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    invoke-virtual {v11, v14}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {v11, v0, v12, v15}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    :goto_0
    iget-object v1, v11, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return v0
.end method

.method public createReorderAlgorithm()Lcom/android/launcher3/celllayout/ReorderAlgorithm;
    .locals 1

    new-instance v0, Lcom/android/launcher3/celllayout/ReorderAlgorithm;

    invoke-direct {v0, p0}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;-><init>(Lcom/android/launcher3/CellLayout;)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;

    iget v3, v2, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellX:I

    iget v4, v2, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v4, v3, v0

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, p1}, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->drawOverItem(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    const p0, 0x7f0b00e4

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public enableHardwareLayer(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/android/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public findCellForSpan([III)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result p0

    return p0
.end method

.method protected findNearestArea(IIIIIIZ[I[I)[I
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p1

    int-to-float v5, v5

    iget v6, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v8

    add-int/lit8 v8, v3, -0x1

    mul-int/2addr v6, v8

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    float-to-int v5, v5

    move/from16 v6, p2

    int-to-float v6, v6

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v7

    add-int/lit8 v7, v4, -0x1

    mul-int/2addr v9, v7

    int-to-float v7, v9

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    if-eqz p8, :cond_0

    move-object/from16 v7, p8

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    new-array v7, v7, [I

    :goto_0
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Ljava/util/Stack;

    invoke-direct {v10}, Ljava/util/Stack;-><init>()V

    iget v11, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v12, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-lez v1, :cond_1d

    if-lez v2, :cond_1d

    if-lez v3, :cond_1d

    if-lez v4, :cond_1d

    if-lt v3, v1, :cond_1d

    if-ge v4, v2, :cond_1

    goto/16 :goto_13

    :cond_1
    const/4 v9, 0x0

    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_1
    add-int/lit8 v18, v2, -0x1

    sub-int v13, v12, v18

    if-ge v9, v13, :cond_1b

    const/4 v13, 0x0

    :goto_2
    add-int/lit8 v18, v1, -0x1

    sub-int v14, v11, v18

    if-ge v13, v14, :cond_1a

    if-nez p7, :cond_13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v1, :cond_4

    const/4 v15, 0x0

    :goto_4
    move-object/from16 v18, v7

    if-ge v15, v2, :cond_3

    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v7, v7, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    add-int v19, v13, v14

    aget-object v7, v7, v19

    add-int v19, v9, v15

    aget-boolean v7, v7, v19

    if-eqz v7, :cond_2

    move/from16 v21, v5

    move/from16 v20, v6

    move-object v5, v8

    goto/16 :goto_12

    :cond_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v18

    goto :goto_4

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v18, v7

    if-lt v1, v3, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    if-lt v2, v4, :cond_6

    const/4 v14, 0x1

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    :goto_6
    move v15, v14

    move v14, v7

    const/4 v7, 0x1

    move/from16 v23, v2

    move v2, v1

    move/from16 v1, v23

    :goto_7
    if-eqz v14, :cond_8

    if-nez v15, :cond_7

    goto :goto_8

    :cond_7
    move/from16 v21, v5

    move/from16 v20, v6

    move-object/from16 v19, v8

    goto/16 :goto_e

    :cond_8
    :goto_8
    if-eqz v7, :cond_c

    if-nez v14, :cond_c

    move-object/from16 v19, v8

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v1, :cond_b

    move/from16 v20, v6

    add-int v6, v13, v2

    move/from16 v21, v5

    add-int/lit8 v5, v11, -0x1

    if-gt v6, v5, :cond_9

    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v5, v5, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v5, v5, v6

    add-int v6, v9, v8

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_a

    :cond_9
    const/4 v14, 0x1

    :cond_a
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v20

    move/from16 v5, v21

    goto :goto_9

    :cond_b
    move/from16 v21, v5

    move/from16 v20, v6

    if-nez v14, :cond_10

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_c
    move/from16 v21, v5

    move/from16 v20, v6

    move-object/from16 v19, v8

    if-nez v15, :cond_10

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v2, :cond_f

    add-int v6, v9, v1

    add-int/lit8 v8, v12, -0x1

    if-gt v6, v8, :cond_d

    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v8, v8, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    add-int v22, v13, v5

    aget-object v8, v8, v22

    aget-boolean v6, v8, v6

    if-eqz v6, :cond_e

    :cond_d
    const/4 v15, 0x1

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_f
    if-nez v15, :cond_10

    add-int/lit8 v1, v1, 0x1

    :cond_10
    :goto_b
    if-lt v2, v3, :cond_11

    const/4 v5, 0x1

    goto :goto_c

    :cond_11
    const/4 v5, 0x0

    :goto_c
    or-int/2addr v14, v5

    if-lt v1, v4, :cond_12

    const/4 v5, 0x1

    goto :goto_d

    :cond_12
    const/4 v5, 0x0

    :goto_d
    or-int/2addr v15, v5

    xor-int/lit8 v7, v7, 0x1

    move-object/from16 v8, v19

    move/from16 v6, v20

    move/from16 v5, v21

    goto :goto_7

    :cond_13
    move/from16 v21, v5

    move/from16 v20, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_e
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    invoke-virtual {v0, v13, v9, v5}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v13, v2

    add-int v8, v9, v1

    invoke-direct {v6, v13, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v10}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v7, 0x1

    goto :goto_f

    :cond_15
    const/4 v7, 0x0

    :goto_f
    invoke-virtual {v10, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    aget v14, v5, v8

    sub-int v14, v14, v21

    int-to-double v14, v14

    const/4 v8, 0x1

    aget v5, v5, v8

    sub-int v5, v5, v20

    int-to-double v3, v5

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    cmpg-double v5, v3, v16

    if-gtz v5, :cond_17

    if-eqz v7, :cond_16

    goto :goto_10

    :cond_16
    move-object/from16 v5, v19

    goto :goto_11

    :cond_17
    :goto_10
    move-object/from16 v5, v19

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_19

    :goto_11
    const/4 v7, 0x0

    aput v13, v18, v7

    const/4 v8, 0x1

    aput v9, v18, v8

    if-eqz p9, :cond_18

    aput v2, p9, v7

    aput v1, p9, v8

    :cond_18
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-wide/from16 v16, v3

    :cond_19
    :goto_12
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v8, v5

    move-object/from16 v7, v18

    move/from16 v6, v20

    move/from16 v5, v21

    goto/16 :goto_2

    :cond_1a
    move/from16 v21, v5

    move/from16 v20, v6

    move-object/from16 v18, v7

    move-object v5, v8

    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, v21

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v18, v7

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v16, v1

    if-nez v0, :cond_1c

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput v0, v18, v1

    const/4 v1, 0x1

    aput v0, v18, v1

    :cond_1c
    return-object v18

    :cond_1d
    :goto_13
    move-object/from16 v18, v7

    return-object v18
.end method

.method public findNearestAreaIgnoreOccupied(IIII[I)[I
    .locals 10

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public findNearestVacantArea(IIIIII[I[I)[I
    .locals 10

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 11

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->createReorderAlgorithm()Lcom/android/launcher3/celllayout/ReorderAlgorithm;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/celllayout/ReorderAlgorithm;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-direct {p0, p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getCellHeight()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    return p0
.end method

.method public getCellWidth()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    return p0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getCountX()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return p0
.end method

.method public getCountY()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    return p0
.end method

.method public getDesiredHeight()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 15

    move-object v8, p0

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    const/4 v0, 0x2

    new-array v6, v0, [I

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestAreaIgnoreOccupied(IIII[I)[I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v12, 0x0

    aget v1, v6, v12

    const/4 v13, 0x1

    aget v2, v6, v13

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    aget v1, v6, v12

    aget v2, v6, v13

    iget-object v7, v8, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move-object/from16 v5, p5

    move-object v6, v14

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v1, v14, Landroid/graphics/Rect;->left:I

    iget v2, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, v0, p1

    div-int/2addr v0, v9

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, v1, p2

    div-int/2addr v1, v10

    iget v2, v8, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-eq v6, v2, :cond_0

    if-ne v9, v2, :cond_1

    :cond_0
    move v0, v12

    :cond_1
    iget v2, v8, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-eq v7, v2, :cond_2

    if-ne v10, v2, :cond_3

    :cond_2
    move v1, v12

    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    aput v13, v11, v12

    aput v12, v11, v13

    goto :goto_0

    :cond_4
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-direct {p0, v0, v1, v11}, Lcom/android/launcher3/CellLayout;->computeDirectionVector(FF[I)V

    :goto_0
    return-void
.end method

.method public getDistanceFromWorkspaceCellVisualCenter(FF[I)F
    .locals 4

    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x1

    aget p3, p3, v2

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    invoke-direct {p0, v1, p3, v3}, Lcom/android/launcher3/CellLayout;->getWorkspaceCellVisualCenter(II[I)V

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget p3, p0, v0

    int-to-float p3, p3

    sub-float/2addr p1, p3

    float-to-double v0, p1

    aget p0, p0, v2

    int-to-float p0, p0

    sub-float/2addr p2, p0

    float-to-double p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public getDragAndDropAccessibilityDelegate()Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    return-object p0
.end method

.method public getEmptyCellCount()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge v1, v3, :cond_2

    move v3, v0

    :goto_1
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getFolderCreationRadius([I)F
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-static {v2, p1, v4}, Lb3/m;->c(Landroid/view/View;[I[I)V

    invoke-static {v2}, Lb3/m;->e(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lj3/a;->h()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    :goto_0
    int-to-float v0, v0

    const v2, 0x3f6b851f    # 0.92f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    aget v1, v4, v1

    aget v3, v4, v3

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/launcher3/CellLayout;->getReorderRadius([III)F

    move-result p0

    add-float/2addr p0, v0

    div-float/2addr p0, v2

    return p0
.end method

.method public getIsDragOverlapping()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    return p0
.end method

.method public getItemMoveDescription(II)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f12017f

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    add-int/2addr p2, v2

    iget-boolean v3, v0, Lcom/android/launcher3/PagedView;->mIsRtl:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v3, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p1, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result p1

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v4

    if-le p1, v2, :cond_2

    rem-int p1, v4, p1

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    mul-int/2addr p1, v5

    add-int/2addr v3, p1

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f12017e

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v2

    const/4 p2, 0x2

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, p2

    invoke-virtual {p0, p1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOccupied()Lcom/android/launcher3/util/GridOccupancy;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    return-object p0
.end method

.method public bridge synthetic getOverlay()Landroid/view/ViewOverlay;
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public getReorderRadius([III)F
    .locals 11

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-direct {p0, v2, v4, v0}, Lcom/android/launcher3/CellLayout;->getWorkspaceCellVisualCenter(II[I)V

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    aget v6, p1, v1

    aget v7, p1, v3

    move-object v5, p0

    move v8, p2

    move v9, p3

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget v4, v4, Landroid/graphics/Point;->y:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Rect;->inset(II)V

    aget v4, p1, v1

    aget p1, p1, v3

    invoke-virtual {p0, v4, p1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->canCreateFolder(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    aget p0, v0, v1

    iget p1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    aget p1, v0, v3

    iget p2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    iget p1, v2, Landroid/graphics/Rect;->right:I

    aget p2, v0, v1

    sub-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    aget p2, v0, v3

    sub-int/2addr p1, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p0

    mul-int/2addr p2, p0

    int-to-float p0, p2

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    float-to-double v0, p0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr p3, p0

    int-to-float p0, p3

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    return-object p0
.end method

.method public getSpringLoadedProgress()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    return p0
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

    return v0
.end method

.method public getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p6, :cond_0

    add-int v0, p1, p3

    add-int v1, p2, p4

    invoke-virtual {p6, p1, p2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual {p7}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_3

    iget-object p4, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-ne p4, p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    iget v5, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    invoke-virtual {v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v5

    iget v1, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    add-int/2addr v5, v1

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_2

    invoke-virtual {p6, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public hasReorderSolution(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const/4 v0, 0x2

    new-array v13, v0, [I

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    if-ge v15, v0, :cond_2

    move v10, v14

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    if-ge v10, v0, :cond_1

    invoke-virtual {v11, v15, v10, v13}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    aget v1, v13, v14

    const/16 v16, 0x1

    aget v2, v13, v16

    iget v3, v12, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v4, v12, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v7, v11, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-instance v17, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct/range {v17 .. v17}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    move-object/from16 v0, p0

    move/from16 v18, v10

    move-object/from16 v10, v17

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_0

    return v16

    :cond_0
    add-int/lit8 v10, v18, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    return v14
.end method

.method public isDropPending()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    return p0
.end method

.method public isHardwareLayerEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayerType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isItemPlacementDirty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    return p0
.end method

.method public isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestAreaIgnoreOccupied(IIII[I)[I

    move-result-object p1

    const/4 p2, 0x0

    aget v1, p1, p2

    const/4 p2, 0x1

    aget v2, p1, p2

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, p2

    return p0
.end method

.method public isOccupied(II)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object p0, p0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object p0, p0, p1

    aget-boolean p0, p0, p2

    return p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Position exceeds the bound of this CellLayout"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isOccupiedExt(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z
    .locals 5

    iget v0, p1, Landroid/graphics/Point;->x:I

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    iget v3, p2, Landroid/graphics/Point;->x:I

    if-gt v0, v3, :cond_3

    iget v3, p1, Landroid/graphics/Point;->y:I

    :goto_1
    iget v4, p2, Landroid/graphics/Point;->y:I

    if-gt v3, v4, :cond_2

    iget v4, p3, Landroid/graphics/Point;->x:I

    if-ne v0, v4, :cond_0

    iget v4, p3, Landroid/graphics/Point;->y:I

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/CellLayout;->isOccupiedExt(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public isRegionVacant(IIII)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result p0

    return p0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 7

    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v2, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v3, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/nothing/launcher/card/r;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/nothing/launcher/card/s;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nothing/launcher/card/s;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v2

    iget v3, p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v4, p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 7

    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getCellPosMapper()Lcom/android/launcher3/celllayout/CellPosMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/celllayout/CellPosMapper;->mapModelToPresenter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v2, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellX:I

    iget v3, v0, Lcom/android/launcher3/celllayout/CellPosMapper$CellPos;->cellY:I

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/nothing/launcher/card/r;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/nothing/launcher/card/s;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nothing/launcher/card/s;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v2

    iget v3, p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v4, p1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method onDragEnter()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mPreviousSolution:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    return-void
.end method

.method onDragExit()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    aput v3, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCellSpan:[I

    aput v3, v0, v2

    aput v3, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;

    iget v4, v2, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellX:I

    iget v5, v2, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellY:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v5, v4, v0

    int-to-float v5, v5

    aget v3, v4, v3

    int-to-float v3, v3

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, p1}, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->drawUnderItem(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, v1, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellX:I

    if-ltz v2, :cond_2

    iget v1, v1, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellY:I

    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v2, v1, v4}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v0, v1, v0

    int-to-float v0, v0

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    sget v1, Lcom/android/launcher3/CellLayout;->FOLDER_LEAVE_BEHIND_COLOR:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/PreviewBackground;->drawLeaveBehind(Landroid/graphics/Canvas;I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mVisualizeCells:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mVisualizeDropLocation:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->visualizeGrid(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->dropped:Z

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

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
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr p1, v0

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v1

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1, p2, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v3, p2, v3

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    if-gez v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-static {v2, v4, v5}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result v7

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result v8

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    if-ne v7, v4, :cond_1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    if-eq v8, v4, :cond_2

    :cond_1
    iput v7, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iput v8, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v9, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v10, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v11, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    :cond_2
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v4, :cond_3

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v5, :cond_3

    move v2, v4

    move v3, v5

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v2, :cond_4

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public performReorder(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    return-void

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p3, v3, :cond_1

    if-eq p3, v2, :cond_1

    if-ne p3, v1, :cond_5

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    if-ne p3, v2, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    invoke-direct {p0, p1, p2, v4}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-eq p3, v2, :cond_4

    if-ne p3, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2, v3}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/launcher3/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    :cond_5
    :goto_2
    if-eq p3, v2, :cond_6

    const/4 p1, 0x4

    if-eq p3, p1, :cond_6

    if-ne p3, v1, :cond_7

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method performReorder(IIIIIILandroid/view/View;[I[II)[I
    .locals 2

    const/4 v0, 0x2

    if-nez p9, :cond_0

    new-array p9, v0, [I

    fill-array-data p9, :array_0

    :cond_0
    if-nez p8, :cond_1

    new-array p8, v0, [I

    fill-array-data p8, :array_1

    :cond_1
    if-eqz p10, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousSolution:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-eq p10, v0, :cond_3

    const/4 p1, 0x3

    if-ne p10, p1, :cond_5

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mPreviousSolution:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher3/CellLayout;->calculateReorder(IIIIIILandroid/view/View;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/CellLayout;->mPreviousSolution:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    :cond_5
    :goto_1
    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz v1, :cond_7

    iget-boolean p3, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-nez p3, :cond_6

    goto :goto_2

    :cond_6
    iget p3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aput p3, p8, p2

    iget p3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    aput p3, p8, p1

    iget p3, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    aput p3, p9, p2

    iget p2, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    aput p2, p9, p1

    invoke-virtual {p0, v1, p7, p10}, Lcom/android/launcher3/CellLayout;->performReorder(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p0, -0x1

    aput p0, p9, p1

    aput p0, p9, p2

    aput p0, p8, p1

    aput p0, p8, p2

    :goto_3
    return-object p8

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public pointToCellExact(II[I)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v3

    div-int/2addr p1, v0

    const/4 v0, 0x0

    aput p1, p3, v0

    sub-int/2addr p2, v1

    iget p1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v1, v2, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v1

    div-int/2addr p2, p1

    const/4 p1, 0x1

    aput p2, p3, p1

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    aget v1, p3, v0

    if-gez v1, :cond_0

    aput v0, p3, v0

    :cond_0
    aget v1, p3, v0

    if-lt v1, p2, :cond_1

    sub-int/2addr p2, p1

    aput p2, p3, v0

    :cond_1
    aget p2, p3, p1

    if-gez p2, :cond_2

    aput v0, p3, p1

    :cond_2
    aget p2, p3, p1

    if-lt p2, p0, :cond_3

    sub-int/2addr p0, p1

    aput p0, p3, p1

    :cond_3
    return-void
.end method

.method public rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 7

    const/4 v0, 0x0

    if-ltz p1, :cond_a

    if-gez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p6, :cond_1

    iget-object v1, p7, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, p6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz v1, :cond_1

    iput p1, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput p2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    sget-object p2, Lcom/android/launcher3/o;->a:Lcom/android/launcher3/o;

    invoke-static {p2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p2

    sget-object p3, Lcom/android/launcher3/p;->a:Lcom/android/launcher3/p;

    invoke-interface {p2, p3}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p2

    iget-object p3, p7, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-ne p3, p6, :cond_3

    goto :goto_0

    :cond_3
    iget-object p4, p7, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget v3, p4, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v4, p4, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v5, p4, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v5, v3

    iget p4, p4, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr p4, v4

    invoke-virtual {p1, v3, v4, v5, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v1, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-boolean p4, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->canReorder:Z

    if-nez p4, :cond_4

    return v0

    :cond_4
    iget-object p4, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p7, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    return p2

    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_7

    return p2

    :cond_7
    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    iget-object p4, p0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, p5, p7}, Lcom/android/launcher3/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p3

    if-nez p3, :cond_8

    return v0

    :cond_9
    return p2

    :cond_a
    :goto_1
    return v0
.end method

.method public regionToCenterPoint(IIII[I)V
    .locals 6

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    const/4 p2, 0x0

    aput p1, p5, p2

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    const/4 p1, 0x1

    aput p0, p5, p1

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_0
    return-void
.end method

.method public removeDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-static {p1}, Lz4/f;->a(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/CellLayout$3;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/CellLayout$3;-><init>(Lcom/android/launcher3/CellLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public removeViews(II)V
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    return-void
.end method

.method public resetCellSize(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->resetCellSizeInternal(Lcom/android/launcher3/DeviceProfile;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CellLayout"

    const-string v0, "Ignoring an error while restoring a view instance state"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method revertTempState()V
    .locals 12

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellX()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v6

    if-ne v4, v6, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getTmpCellY()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v6

    if-eq v4, v6, :cond_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v7

    const/16 v8, 0x96

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    :cond_3
    return-void
.end method

.method public setCellDimensions(II)V
    .locals 6

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    return-void
.end method

.method public setDragAndDropAccessibilityDelegate(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p0, p0, v0}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public setDropPending(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    return-void
.end method

.method public setFixedSize(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    return-void
.end method

.method public setGridSize(II)V
    .locals 7

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    new-instance p1, Lcom/android/launcher3/util/GridOccupancy;

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {p1, p2, v0}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setInvertIfRtl(Z)V

    return-void
.end method

.method public setIsDragOverlapping(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_ACTIVE:[I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_DEFAULT:[I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method setItemPlacementDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setScrollProgress(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mScrollProgress:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mScrollProgress:F

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->updateBgAlpha()V

    :cond_0
    return-void
.end method

.method public setSpringLoadedProgress(F)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->updateBgAlpha()V

    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->setGridAlpha(F)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected updateBgAlpha()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->EDIT_MODE:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

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

.method visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p1, :cond_0

    aget v2, v0, v3

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCellSpan:[I

    aget v4, v2, v1

    if-ne v4, p3, :cond_0

    aget v2, v2, v3

    if-eq v2, p4, :cond_1

    :cond_0
    aput p1, v0, v1

    aput p2, v0, v3

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCellSpan:[I

    aput p3, v2, v1

    aput p4, v2, v3

    invoke-direct {p0, p5, v0, p3, p4}, Lcom/android/launcher3/CellLayout;->applyColorExtractionOnWidget(Lcom/android/launcher3/DropTarget$DragObject;[III)V

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    array-length v2, v1

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    iput p3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iput p4, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget p4, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object p3, p3, p4

    invoke-virtual {p3}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateIn()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    iget-object p3, p5, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected visualizeGrid(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->gridVisualizationPaddingX:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->gridVisualizationPaddingY:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    sub-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mGridAlpha:F

    const/high16 v5, 0x42f00000    # 120.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    invoke-static {v6, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mVisualizeCells:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    move v2, v5

    :goto_0
    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge v2, v6, :cond_1

    move v6, v5

    :goto_1
    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge v6, v7, :cond_0

    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v7, v2

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    mul-int/2addr v8, v2

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v1

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v8, v6

    iget-object v9, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    mul-int/2addr v9, v6

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v0

    iget-object v9, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    int-to-float v7, v7

    int-to-float v8, v8

    invoke-virtual {v9, v7, v8}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    int-to-float v7, v7

    iget-object v9, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v7, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher3/CellLayout;->mVisualizeDropLocation:Z

    if-eqz v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    array-length v2, v2

    if-ge v5, v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    aget v2, v2, v5

    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    aget-object v9, v8, v5

    iget v9, v9, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    aget-object v8, v8, v5

    iget v8, v8, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iget-object v10, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    iget v11, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v11, v9

    iget-object v12, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v13, v12, Landroid/graphics/Point;->x:I

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v13, v9

    add-int/2addr v11, v13

    sub-int/2addr v11, v1

    int-to-float v9, v11

    iget v11, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v11, v8

    iget v12, v12, Landroid/graphics/Point;->y:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v12, v8

    add-int/2addr v11, v12

    sub-int/2addr v11, v0

    int-to-float v8, v11

    invoke-virtual {v10, v3, v4, v9, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v8, v6

    iget-object v9, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v9

    add-int/2addr v8, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    add-int/2addr v8, v6

    add-int/2addr v8, v1

    iget v6, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v6, v7

    iget-object v9, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v9

    add-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v0

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    int-to-float v8, v8

    int-to-float v6, v6

    invoke-virtual {v7, v8, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    float-to-int v2, v2

    iget v7, p0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    iget v9, p0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-static {v2, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v2, v6

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    int-to-float v2, v2

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v2, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_3
    return-void
.end method
