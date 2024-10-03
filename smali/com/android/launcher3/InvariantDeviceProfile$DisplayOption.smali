.class public final Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/InvariantDeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayOption"
.end annotation


# instance fields
.field private final allAppsBorderSpaces:[Landroid/graphics/PointF;

.field private final allAppsCellSize:[Landroid/graphics/PointF;

.field private final allAppsIconSizes:[F

.field private final allAppsIconTextSizes:[F

.field private final borderSpaces:[Landroid/graphics/PointF;

.field private final canBeDefault:Z

.field public final grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

.field private final horizontalMargin:[F

.field private final hotseatBarBottomSpace:[F

.field private hotseatHeightPercent:F

.field private final hotseatQsbSpace:[F

.field private final iconSizes:[F

.field private final minCellSize:[Landroid/graphics/PointF;

.field private final minHeightDps:F

.field private final minWidthDps:F

.field private final startAlignTaskbar:[Z

.field private supportShowSearchBar:Z

.field private supportShowWorkspaceLabel:Z

.field private final textSizes:[F

.field private final transientTaskbarIconSize:[F

.field private workspaceHeightPercent:F


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)V
    .locals 1

    iget-object v0, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-direct {p0, v0}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->workspaceHeightPercent:F

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->workspaceHeightPercent:F

    iget v0, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatHeightPercent:F

    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatHeightPercent:F

    iget-boolean v0, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->supportShowSearchBar:Z

    iput-boolean v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->supportShowSearchBar:Z

    iget-boolean p1, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->supportShowWorkspaceLabel:Z

    iput-boolean p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->supportShowWorkspaceLabel:Z

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    iput-object p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minWidthDps:F

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minHeightDps:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->canBeDefault:Z

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aput p1, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aput p1, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aput p1, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aput p1, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    aput p1, v3, v2

    iget-object v3, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    aput-boolean v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [Landroid/graphics/PointF;

    iput-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    new-array v3, v1, [Landroid/graphics/PointF;

    iput-object v3, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    new-array v4, v1, [F

    iput-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    new-array v4, v1, [F

    iput-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    new-array v4, v1, [F

    iput-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    new-array v4, v1, [F

    iput-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    new-array v5, v1, [F

    iput-object v5, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    new-array v5, v1, [Landroid/graphics/PointF;

    iput-object v5, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    new-array v6, v1, [F

    iput-object v6, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    new-array v6, v1, [F

    iput-object v6, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    new-array v6, v1, [Landroid/graphics/PointF;

    iput-object v6, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    new-array v7, v1, [F

    iput-object v7, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    new-array v7, v1, [Z

    iput-object v7, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    move-object/from16 v7, p1

    iput-object v7, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/R$styleable;->ProfileDisplayOption:[I

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual {v9, v10, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const/16 v10, 0x49

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minWidthDps:F

    const/16 v10, 0x48

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minHeightDps:F

    const/16 v10, 0x27

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->canBeDefault:Z

    const/16 v10, 0x44

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x40

    invoke-virtual {v8, v13, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v10, v13}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v14, v2, v12

    aget-object v10, v2, v12

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const/16 v13, 0x45

    invoke-virtual {v8, v13, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    aget-object v13, v2, v12

    iget v13, v13, Landroid/graphics/PointF;->y:F

    const/16 v14, 0x41

    invoke-virtual {v8, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v10, v13}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v10, 0x1

    aput-object v14, v2, v10

    aget-object v13, v2, v12

    iget v13, v13, Landroid/graphics/PointF;->x:F

    const/16 v14, 0x47

    invoke-virtual {v8, v14, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    aget-object v14, v2, v12

    iget v14, v14, Landroid/graphics/PointF;->y:F

    const/16 v15, 0x43

    invoke-virtual {v8, v15, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15, v13, v14}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v13, 0x2

    aput-object v15, v2, v13

    aget-object v14, v2, v12

    iget v14, v14, Landroid/graphics/PointF;->x:F

    const/16 v15, 0x46

    invoke-virtual {v8, v15, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    aget-object v15, v2, v12

    iget v15, v15, Landroid/graphics/PointF;->y:F

    const/16 v1, 0x42

    invoke-virtual {v8, v1, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    new-instance v15, Landroid/graphics/PointF;

    invoke-direct {v15, v14, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x3

    aput-object v15, v2, v1

    const/16 v14, 0x1b

    invoke-virtual {v8, v14, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    const/16 v15, 0x1d

    invoke-virtual {v8, v15, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    const/16 v11, 0x23

    invoke-virtual {v8, v11, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    const/16 v1, 0x20

    invoke-virtual {v8, v1, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/16 v13, 0x1c

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    const/16 v10, 0x26

    invoke-virtual {v8, v10, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v13, v10}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v9, v3, v12

    const/16 v9, 0x1e

    invoke-virtual {v8, v9, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    const/16 v10, 0x1f

    invoke-virtual {v8, v10, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v9, 0x1

    aput-object v13, v3, v9

    const/16 v9, 0x24

    invoke-virtual {v8, v9, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    const/16 v10, 0x25

    invoke-virtual {v8, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v9, 0x2

    aput-object v11, v3, v9

    const/16 v9, 0x21

    invoke-virtual {v8, v9, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    const/16 v10, 0x22

    invoke-virtual {v8, v10, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10, v9, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x3

    aput-object v10, v3, v1

    aget-object v1, v2, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/16 v3, 0x10

    invoke-virtual {v8, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    aget-object v2, v2, v12

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/16 v3, 0xc

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v5, v12

    aget-object v1, v5, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/16 v2, 0x11

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    aget-object v2, v5, v12

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/16 v3, 0xd

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x1

    aput-object v3, v5, v1

    aget-object v1, v5, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/16 v2, 0x13

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    aget-object v2, v5, v12

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/16 v3, 0xf

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x2

    aput-object v3, v5, v1

    aget-object v1, v5, v12

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/16 v2, 0x12

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    aget-object v2, v5, v12

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/16 v3, 0xe

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x3

    aput-object v3, v5, v1

    invoke-virtual {v8, v12, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    const/16 v2, 0x8

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v5, 0x5

    invoke-virtual {v8, v5, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v11, 0xb

    invoke-virtual {v8, v11, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11, v10, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v11, v6, v12

    const/4 v1, 0x3

    invoke-virtual {v8, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/4 v1, 0x4

    invoke-virtual {v8, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v10, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v6, v9

    const/16 v1, 0x9

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/16 v3, 0xa

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x6

    invoke-virtual {v8, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v8, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x3

    aput-object v3, v6, v1

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    aput v1, v4, v12

    aget v1, v4, v12

    const/16 v2, 0x39

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/4 v2, 0x1

    aput v1, v4, v2

    aget v1, v4, v12

    const/16 v2, 0x3b

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/4 v2, 0x2

    aput v1, v4, v2

    aget v1, v4, v12

    const/16 v2, 0x3a

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    const/4 v2, 0x3

    aput v1, v4, v2

    move v1, v12

    :goto_0
    iget-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    array-length v3, v2

    if-ge v1, v3, :cond_0

    sget-object v3, Lz4/g;->a:Lz4/g;

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Lz4/g;->c(F)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    const/16 v3, 0x14

    aget v2, v2, v12

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, v1, v12

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    const/16 v2, 0x15

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    const/16 v2, 0x17

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    const/16 v2, 0x16

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    move v1, v12

    :goto_1
    iget-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    sget-object v3, Lz4/g;->a:Lz4/g;

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Lz4/g;->c(F)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    const/16 v2, 0x3c

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, v1, v12

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    const/16 v2, 0x3d

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    const/16 v2, 0x3f

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    const/16 v2, 0x3e

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    const/16 v2, 0x18

    iget-object v3, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v3, v3, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, v1, v12

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aget v2, v1, v12

    const/4 v3, 0x1

    aput v2, v1, v3

    const/16 v2, 0x1a

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    const/16 v2, 0x19

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    const/16 v2, 0x2a

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, v1, v12

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    const/16 v2, 0x2b

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    const/16 v2, 0x2c

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    const/16 v2, 0x2d

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    const/16 v2, 0x2e

    const v3, 0x7f070247

    invoke-static {v7, v3}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, v1, v12

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    const/16 v2, 0x2f

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    const/16 v2, 0x30

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    const/16 v2, 0x31

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    const/16 v2, 0x34

    const v3, 0x7f070248

    invoke-static {v7, v3}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, v1, v12

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    const/16 v2, 0x35

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    const/16 v2, 0x36

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    const/16 v2, 0x37

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    const/16 v2, 0x4f

    const v3, 0x7f07054a

    invoke-static {v7, v3}, Landroidx/core/content/res/ResourcesCompat;->getFloat(Landroid/content/res/Resources;I)F

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    aput v2, v1, v12

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    const/16 v2, 0x50

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    const/16 v2, 0x51

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    const/16 v2, 0x52

    aget v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    const/16 v2, 0x4b

    invoke-virtual {v8, v2, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    aput-boolean v2, v1, v12

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    const/16 v2, 0x4c

    aget-boolean v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, 0x1

    aput-boolean v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    const/16 v2, 0x4d

    aget-boolean v4, v1, v3

    invoke-virtual {v8, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, 0x3

    aput-boolean v2, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    const/16 v2, 0x4e

    aget-boolean v3, v1, v12

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, 0x2

    aput-boolean v2, v1, v3

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/util/NavigationMode;->hasGestures:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x54

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->workspaceHeightPercent:F

    const/16 v1, 0x33

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x53

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->workspaceHeightPercent:F

    const/16 v1, 0x32

    :goto_2
    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatHeightPercent:F

    const/16 v1, 0x28

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->supportShowSearchBar:Z

    const/16 v1, 0x29

    invoke-virtual {v8, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->supportShowWorkspaceLabel:Z

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->add(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatHeightPercent:F

    return p0
.end method

.method static synthetic access$3300(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->workspaceHeightPercent:F

    return p0
.end method

.method static synthetic access$3400(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->supportShowSearchBar:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->supportShowWorkspaceLabel:Z

    return p0
.end method

.method static synthetic access$3600(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->canBeDefault:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minWidthDps:F

    return p0
.end method

.method static synthetic access$3800(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minHeightDps:F

    return p0
.end method

.method static synthetic access$3900(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->multiply(F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object p0

    return-object p0
.end method

.method private add(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v5, v4, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    aget-object v3, v4, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v5, v4, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    aget-object v3, v4, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v5, v4, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    aget-object v3, v4, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v5, v4, v0

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    aget-object v3, v4, v0

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    aget v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    aget-boolean v2, v1, v0

    iget-object v3, p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->startAlignTaskbar:[Z

    aget-boolean v3, v3, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-object p0
.end method

.method private multiply(F)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->iconSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->textSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->borderSpaces:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->minCellSize:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->horizontalMargin:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatBarBottomSpace:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->hotseatQsbSpace:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsCellSize:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsIconTextSizes:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    aget-object v2, v1, v0

    iget v3, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, p1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    aget-object v1, v1, v0

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->transientTaskbarIconSize:[F

    aget v2, v1, v0

    mul-float/2addr v2, p1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public isSupportShowSearchBar()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->supportShowSearchBar:Z

    return p0
.end method

.method public isSupportShowWorkspaceLabel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->supportShowWorkspaceLabel:Z

    return p0
.end method
