.class public final Lcom/android/launcher3/folder/NTFolderAnimationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/NTFolderAnimationManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/NTFolderAnimationManager$Companion;

.field private static final FOLDER_OPEN_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

.field private static final FOLDER_OPEN_INTERPOLATOR_2:Landroid/view/animation/Interpolator;


# instance fields
.field private final alphaValues:[F

.field private final deviceProfile:Lj3/a;

.field private final dragLayer:Lcom/android/launcher3/dragndrop/NTDragLayer;

.field private final folder:Lcom/android/launcher3/folder/Folder;

.field private final folderCellHeightPx:I

.field private final folderCellWidthPx:I

.field private final folderChildIconSizePx:I

.field private final folderFirstRect:Landroid/graphics/RectF;

.field private final folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

.field private final hotSeat:Lcom/android/launcher3/Hotseat;

.field private final iconPaddingTop$delegate:Ln5/e;

.field private final iconSizePx:I

.field private final isBigIcon:Z

.field private final isOpening:Z

.field private final isRtl:Z

.field private final launcher:Lcom/android/launcher3/Launcher;

.field private final numFolderColumns:I

.field private final screenHeight:I

.field private final screenWidth:I

.field private final workspace:Lcom/android/launcher3/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/launcher3/folder/NTFolderAnimationManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/NTFolderAnimationManager$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->Companion:Lcom/android/launcher3/folder/NTFolderAnimationManager$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->FOLDER_OPEN_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->FOLDER_OPEN_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 3

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->hotSeat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->workspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.dragndrop.NTDragLayer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->dragLayer:Lcom/android/launcher3/dragndrop/NTDragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->deviceProfile:Lj3/a;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->iconSizePx:I

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iput v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->screenWidth:I

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iput v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->screenHeight:I

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getFolderIcon()Lcom/android/launcher3/folder/BaseFolderIcon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    instance-of v1, v1, Lcom/android/launcher3/folder/BigFolderIcon;

    iput-boolean v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isBigIcon:Z

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iput v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderChildIconSizePx:I

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iput v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderCellWidthPx:I

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    iput v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderCellHeightPx:I

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iput v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->numFolderColumns:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isRtl:Z

    new-instance p1, Lcom/android/launcher3/folder/NTFolderAnimationManager$iconPaddingTop$2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/folder/NTFolderAnimationManager$iconPaddingTop$2;-><init>(Lcom/android/launcher3/folder/NTFolderAnimationManager;)V

    invoke-static {p1}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->iconPaddingTop$delegate:Ln5/e;

    const/4 p1, 0x2

    new-array p1, p1, [F

    if-eqz p2, :cond_0

    fill-array-data p1, :array_0

    goto :goto_0

    :cond_0
    fill-array-data p1, :array_1

    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->alphaValues:[F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderFirstRect:Landroid/graphics/RectF;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/folder/Folder;ZILkotlin/jvm/internal/i;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/NTFolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    return-void
.end method

.method public static final synthetic access$getDragLayer$p(Lcom/android/launcher3/folder/NTFolderAnimationManager;)Lcom/android/launcher3/dragndrop/NTDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->dragLayer:Lcom/android/launcher3/dragndrop/NTDragLayer;

    return-object p0
.end method

.method public static final synthetic access$getFOLDER_OPEN_INTERPOLATOR_1$cp()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->FOLDER_OPEN_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public static final synthetic access$getFolder$p(Lcom/android/launcher3/folder/NTFolderAnimationManager;)Lcom/android/launcher3/folder/Folder;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method public static final synthetic access$getFolderAppPadding(Lcom/android/launcher3/folder/NTFolderAnimationManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getFolderAppPadding()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$resetFolder(Lcom/android/launcher3/folder/NTFolderAnimationManager;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->resetFolder(Ljava/util/List;)V

    return-void
.end method

.method private final bigFolderItemAnimator(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/animation/AnimatorSet;FI)V
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v12, p7

    invoke-direct {v10, v0, v1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->findTranFromTwoRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderFirstRect:Landroid/graphics/RectF;

    move-object/from16 v2, p4

    invoke-direct {v10, v1, v2}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->findTranFromTwoRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    div-float v3, v3, p6

    sub-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float v0, v0, p6

    sub-float v13, v1, v0

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/4 v9, 0x2

    if-eqz v0, :cond_0

    new-array v0, v9, [F

    aput v2, v0, v15

    aput v14, v0, v16

    goto :goto_0

    :cond_0
    new-array v0, v9, [F

    aput v14, v0, v15

    aput v2, v0, v16

    :goto_0
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v11, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "translationX"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move v14, v9

    move-object/from16 v9, v17

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    if-eqz v0, :cond_1

    new-array v0, v14, [F

    aput v13, v0, v15

    const/4 v1, 0x0

    aput v1, v0, v16

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    new-array v0, v14, [F

    aput v1, v0, v15

    aput v13, v0, v16

    :goto_1
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v11, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "translationY"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.BigFolderIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v13

    invoke-virtual {v13, v12}, Lc3/a;->l(I)F

    move-result v0

    iget v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderCellWidthPx:I

    div-int/2addr v1, v14

    int-to-float v1, v1

    invoke-virtual {v11, v1}, Landroid/view/View;->setPivotX(F)V

    iget v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderChildIconSizePx:I

    div-int/2addr v1, v14

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getIconPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v11, v1}, Landroid/view/View;->setPivotY(F)V

    iget-boolean v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    new-array v1, v14, [F

    aput v0, v1, v15

    aput v2, v1, v16

    goto :goto_2

    :cond_2
    new-array v1, v14, [F

    aput v2, v1, v15

    aput v0, v1, v16

    :goto_2
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v11, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "ofFloat(targetView, SCALE_PROPERTY, *scaleValues)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    invoke-virtual {v13}, Lc3/a;->getAllPreviewSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le v12, v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setAlpha(F)V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->alphaValues:[F

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v11, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "ofFloat(targetView, View.ALPHA, *alphaValues)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    if-eqz v0, :cond_3

    const-wide/16 v3, 0xa

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    goto :goto_3

    :cond_3
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x96

    sget-object v7, Lcom/android/launcher3/folder/NTFolderAnimationManager;->FOLDER_OPEN_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    const/4 v8, 0x4

    :goto_3
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private final delayPlay2(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xa

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v5, v0

    const-wide/16 v7, 0x96

    sget-object v9, Lcom/android/launcher3/folder/NTFolderAnimationManager;->FOLDER_OPEN_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method private final findFolderBgTran(Landroid/graphics/Rect;F)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getIconBounds(Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr p1, v2

    iput p1, v1, Landroid/graphics/RectF;->left:F

    iget p1, v1, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr p1, v0

    iput p1, v1, Landroid/graphics/RectF;->top:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.android.launcher3.views.BaseDragLayer.LayoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v0, p2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget p2, p2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    new-instance p2, Landroid/graphics/PointF;

    iget v0, v1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getHeaderHeight()F

    move-result p0

    sub-float/2addr v1, p0

    invoke-direct {p2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method private final findFolderPivotPoint(I)Landroid/graphics/PointF;
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iget-boolean v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isRtl:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderCellWidthPx:I

    iget v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->numFolderColumns:I

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->deviceProfile:Lj3/a;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    add-int/2addr v2, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    int-to-float v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderCellWidthPx:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->deviceProfile:Lj3/a;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    :goto_0
    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderChildIconSizePx:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->deviceProfile:Lj3/a;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    add-int/2addr v1, p0

    int-to-float p0, v1

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private final findFolderTran(Ljava/util/ArrayList;)Landroid/graphics/PointF;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "folderIconAppRectList[0]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderFirstRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->findTranFromTwoRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private final findTranFromTwoRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 4

    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v2

    add-float/2addr v0, p1

    iget p1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, v2

    add-float/2addr p1, p2

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/PointF;->y:F

    return-object p0
.end method

.method private final getBigFolderIconPreviewRectList(Landroid/graphics/Rect;FLjava/util/List;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "F",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getIconRect(Landroid/graphics/Rect;F)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderIconScale()F

    move-result v4

    mul-float/2addr v4, v1

    iget-object v5, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->deviceProfile:Lj3/a;

    iget-object v5, v5, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v5, v5, Lcom/android/launcher3/InvariantDeviceProfile;->bigFolderItemSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    iget-object v4, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    const-string v6, "null cannot be cast to non-null type com.android.launcher3.folder.BigFolderIcon"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v4

    const/4 v6, 0x2

    new-array v7, v6, [F

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v12, v9

    move v13, v12

    move v11, v10

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v11, 0x1

    if-gez v11, :cond_0

    invoke-static {}, Lo5/j;->m()V

    :cond_0
    check-cast v14, Lcom/android/launcher3/BubbleTextView;

    iget-object v14, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v14}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v4, v10, v1}, Lc3/a;->j(IF)Landroid/graphics/RectF;

    move-result-object v11

    iget v14, v3, Landroid/graphics/RectF;->left:F

    iget v6, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v11, v14, v6}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v4}, Lc3/a;->getAllPreviewSize()I

    move-result v6

    if-ge v11, v6, :cond_2

    invoke-virtual {v4, v11, v1}, Lc3/a;->j(IF)Landroid/graphics/RectF;

    move-result-object v6

    iget v11, v3, Landroid/graphics/RectF;->left:F

    iget v14, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v11, v14}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_2
    cmpg-float v6, v12, v9

    const/4 v14, 0x1

    if-nez v6, :cond_3

    move v6, v14

    goto :goto_1

    :cond_3
    move v6, v10

    :goto_1
    if-nez v6, :cond_6

    cmpg-float v6, v13, v9

    if-nez v6, :cond_4

    move v6, v14

    goto :goto_2

    :cond_4
    move v6, v10

    :goto_2
    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    move v6, v12

    const/4 v12, 0x2

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v12

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v13, v9

    :goto_4
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v12, "rectList[0]"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/graphics/RectF;

    iget v12, v9, Landroid/graphics/RectF;->left:F

    add-int/lit8 v11, v11, -0x2

    rem-int/lit8 v14, v11, 0x3

    int-to-float v14, v14

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    aput v12, v7, v10

    iget v9, v9, Landroid/graphics/RectF;->top:F

    div-int/lit8 v11, v11, 0x3

    int-to-float v11, v11

    mul-float/2addr v11, v13

    add-float/2addr v9, v11

    const/4 v11, 0x1

    aput v9, v7, v11

    new-instance v9, Landroid/graphics/RectF;

    aget v12, v7, v10

    aget v14, v7, v11

    aget v17, v7, v10

    add-float v10, v17, v5

    aget v11, v7, v11

    add-float/2addr v11, v5

    invoke-direct {v9, v12, v14, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v6

    :goto_5
    move v11, v15

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v1}, Lc3/a;->j(IF)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v2
.end method

.method public static final getFOLDER_OPEN_INTERPOLATOR_1()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->Companion:Lcom/android/launcher3/folder/NTFolderAnimationManager$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/NTFolderAnimationManager$Companion;->getFOLDER_OPEN_INTERPOLATOR_1()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method private final getFolderAppPadding()I
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->deviceProfile:Lj3/a;

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    iget-object v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/Folder;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v1

    const-string v3, "folder.getItemsOnPage(0)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->deviceProfile:Lj3/a;

    invoke-virtual {v2}, Lj3/a;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderChildIconSizePx:I

    add-int/2addr v2, v0

    iget v0, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderChildIconSizePx:I

    :goto_0
    iget p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderCellHeightPx:I

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x2

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->deviceProfile:Lj3/a;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    return p0
.end method

.method private final getFolderAppRectList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->screenWidth:I

    iget v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderCellWidthPx:I

    iget v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->numFolderColumns:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderChildIconSizePx:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getFolderMarginTop()F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->getHeaderHeight()F

    move-result v2

    add-float/2addr v1, v2

    invoke-direct {p0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getIconPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->deviceProfile:Lj3/a;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isRtl:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderFirstRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->screenWidth:I

    int-to-float v5, v4

    sub-float/2addr v5, v0

    iget v6, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderChildIconSizePx:I

    int-to-float v7, v6

    sub-float/2addr v5, v7

    int-to-float v4, v4

    sub-float/2addr v4, v0

    int-to-float v6, v6

    add-float/2addr v6, v1

    invoke-virtual {v3, v5, v1, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderFirstRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderChildIconSizePx:I

    int-to-float v5, v4

    add-float/2addr v5, v0

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {v3, v0, v1, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.celllayout.CellLayoutLayoutParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    iget-boolean v4, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isRtl:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->numFolderColumns:I

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    :goto_2
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iget v6, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderCellWidthPx:I

    mul-int/2addr v4, v6

    int-to-float v4, v4

    add-float/2addr v4, v0

    iput v4, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v3

    iget v4, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderCellHeightPx:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, v1

    iput v3, v5, Landroid/graphics/RectF;->top:F

    iget v4, v5, Landroid/graphics/RectF;->left:F

    iget v6, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderChildIconSizePx:I

    int-to-float v7, v6

    add-float/2addr v4, v7

    iput v4, v5, Landroid/graphics/RectF;->right:F

    int-to-float v4, v6

    add-float/2addr v3, v4

    iput v3, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private final getFolderIconAppRectList(Landroid/graphics/Rect;FLjava/util/List;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "F",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isBigIcon:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getBigFolderIconPreviewRectList(Landroid/graphics/Rect;FLjava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getFolderIconPreviewRectList(Landroid/graphics/Rect;FLjava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final getFolderIconPreviewRectList(Landroid/graphics/Rect;FLjava/util/List;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "F",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getIconRect(Landroid/graphics/Rect;F)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    const-string v5, "null cannot be cast to non-null type com.android.launcher3.folder.FolderIcon"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v4

    iget v6, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->iconSizePx:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    mul-float/2addr v6, v1

    const/4 v4, 0x2

    new-array v7, v4, [F

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v5

    move v11, v9

    move v12, v11

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x4

    const/4 v15, 0x1

    if-eqz v13, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v16, v10, 0x1

    if-gez v10, :cond_0

    invoke-static {}, Lo5/j;->m()V

    :cond_0
    check-cast v13, Lcom/android/launcher3/BubbleTextView;

    if-ge v10, v14, :cond_1

    iget-object v13, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    check-cast v13, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v13}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v13

    invoke-virtual {v13, v10, v14, v7, v1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPositionByNT(II[FF)V

    new-instance v10, Landroid/graphics/RectF;

    aget v13, v7, v5

    aget v14, v7, v15

    aget v17, v7, v5

    add-float v4, v17, v6

    aget v15, v7, v15

    add-float/2addr v15, v6

    invoke-direct {v10, v13, v14, v4, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v13, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10, v4, v13}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x2

    goto/16 :goto_5

    :cond_1
    cmpg-float v4, v11, v9

    if-nez v4, :cond_2

    move v4, v15

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-nez v4, :cond_5

    cmpg-float v4, v12, v9

    if-nez v4, :cond_3

    move v4, v15

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v10, 0x2

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v10

    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    move v12, v11

    move v11, v4

    :goto_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v13, "rectList[0]"

    invoke-static {v4, v13}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/graphics/RectF;

    iget v13, v4, Landroid/graphics/RectF;->left:F

    rem-int/lit8 v14, v16, 0x3

    int-to-float v14, v14

    mul-float/2addr v14, v11

    add-float/2addr v13, v14

    aput v13, v7, v5

    iget v4, v4, Landroid/graphics/RectF;->top:F

    div-int/lit8 v13, v16, 0x3

    int-to-float v13, v13

    mul-float/2addr v13, v12

    add-float/2addr v4, v13

    aput v4, v7, v15

    new-instance v4, Landroid/graphics/RectF;

    aget v13, v7, v5

    aget v14, v7, v15

    aget v17, v7, v5

    add-float v9, v17, v6

    aget v15, v7, v15

    add-float/2addr v15, v6

    invoke-direct {v4, v13, v14, v9, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    move v4, v10

    move/from16 v10, v16

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v0, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v0

    invoke-virtual {v0, v5, v14, v7, v1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPositionByNT(II[FF)V

    new-instance v0, Landroid/graphics/RectF;

    aget v1, v7, v5

    aget v4, v7, v15

    aget v5, v7, v5

    add-float/2addr v5, v6

    aget v7, v7, v15

    add-float/2addr v7, v6

    invoke-direct {v0, v1, v4, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v2
.end method

.method private final getIconPaddingTop()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->iconPaddingTop$delegate:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getIconRect(Landroid/graphics/Rect;F)Landroid/graphics/RectF;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getIconBounds(Landroid/graphics/Rect;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr p1, v1

    iput p1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr p1, v0

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-object p0
.end method

.method private final getTargetScale()F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method private final getTargetTranY()F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragComplete()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final initContentAnimator(Landroid/animation/AnimatorSet;FLjava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "F",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isBigIcon:Z

    if-eqz v0, :cond_0

    move/from16 v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderIconScale()F

    move-result v0

    mul-float v0, v0, p2

    :goto_0
    iget-object v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getIconPaddingTop()I

    move-result v1

    invoke-direct {v10, v1}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->findFolderPivotPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-boolean v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-eqz v1, :cond_1

    new-array v1, v14, [F

    aput v0, v1, v13

    aput v2, v1, v12

    goto :goto_1

    :cond_1
    new-array v1, v14, [F

    aput v2, v1, v13

    aput v0, v1, v12

    :goto_1
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v11, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "scaleAnimator"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->findFolderTran(Ljava/util/ArrayList;)Landroid/graphics/PointF;

    move-result-object v15

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    const/16 v16, 0x0

    if-eqz v0, :cond_2

    new-array v0, v14, [F

    iget v1, v15, Landroid/graphics/PointF;->x:F

    aput v1, v0, v13

    aput v16, v0, v12

    goto :goto_2

    :cond_2
    new-array v0, v14, [F

    aput v16, v0, v13

    iget v1, v15, Landroid/graphics/PointF;->x:F

    aput v1, v0, v12

    :goto_2
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v11, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "translationX"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    if-eqz v0, :cond_3

    new-array v0, v14, [F

    iget v1, v15, Landroid/graphics/PointF;->y:F

    aput v1, v0, v13

    aput v16, v0, v12

    goto :goto_3

    :cond_3
    new-array v0, v14, [F

    aput v16, v0, v13

    iget v1, v15, Landroid/graphics/PointF;->y:F

    aput v1, v0, v12

    :goto_3
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v11, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "translationY"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    return-void
.end method

.method private final initCoverViewAnimator(Landroid/animation/AnimatorSet;FLandroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v10, p0

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v10, v1, v0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getIconRect(Landroid/graphics/Rect;F)Landroid/graphics/RectF;

    move-result-object v11

    new-instance v12, Lc3/b;

    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->dragLayer:Lcom/android/launcher3/dragndrop/NTDragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dragLayer.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v1

    invoke-direct {v12, v0, v1}, Lc3/b;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)V

    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->dragLayer:Lcom/android/launcher3/dragndrop/NTDragLayer;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.views.BaseDragLayer.LayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    iget v1, v11, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, La6/a;->b(F)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iget v1, v11, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, La6/a;->b(F)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, La6/a;->b(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, La6/a;->b(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderFirstRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iget-boolean v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x2

    if-eqz v1, :cond_0

    new-array v1, v15, [F

    aput v2, v1, v14

    aput v0, v1, v13

    goto :goto_0

    :cond_0
    new-array v1, v15, [F

    aput v0, v1, v14

    aput v2, v1, v13

    :goto_0
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "ofFloat(coverView, SCALE_PROPERTY, *scaleValues)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderFirstRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderFirstRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float v11, v1, v2

    iget-boolean v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    const/16 v16, 0x0

    if-eqz v1, :cond_1

    new-array v1, v15, [F

    aput v16, v1, v14

    aput v0, v1, v13

    goto :goto_1

    :cond_1
    new-array v1, v15, [F

    aput v0, v1, v14

    aput v16, v1, v13

    :goto_1
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "translationX"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    if-eqz v0, :cond_2

    new-array v0, v15, [F

    aput v16, v0, v14

    aput v11, v0, v13

    goto :goto_2

    :cond_2
    new-array v0, v15, [F

    aput v11, v0, v14

    aput v16, v0, v13

    :goto_2
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v12, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "translationY"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    if-eqz v0, :cond_3

    new-array v0, v15, [F

    fill-array-data v0, :array_0

    goto :goto_3

    :cond_3
    new-array v0, v15, [F

    fill-array-data v0, :array_1

    :goto_3
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v12, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "ofFloat(coverView, View.ALPHA, *alphaV)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    if-eqz v0, :cond_4

    const-wide/16 v3, 0xa

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    goto :goto_4

    :cond_4
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x96

    sget-object v7, Lcom/android/launcher3/folder/NTFolderAnimationManager;->FOLDER_OPEN_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    const/4 v8, 0x4

    :goto_4
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    new-instance v0, Lcom/android/launcher3/folder/NTFolderAnimationManager$initCoverViewAnimator$2;

    invoke-direct {v0, v10, v12}, Lcom/android/launcher3/folder/NTFolderAnimationManager$initCoverViewAnimator$2;-><init>(Lcom/android/launcher3/folder/NTFolderAnimationManager;Lc3/b;)V

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final initFolderBackgroundAnimator(Landroid/animation/AnimatorSet;FLandroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v10, p0

    move/from16 v11, p2

    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContentAreaWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    int-to-float v2, v2

    mul-float/2addr v2, v11

    iget-boolean v3, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    new-array v5, v13, [F

    if-eqz v3, :cond_0

    div-float v0, v2, v0

    aput v0, v5, v14

    aput v4, v5, v12

    goto :goto_0

    :cond_0
    aput v4, v5, v14

    div-float v0, v2, v0

    aput v0, v5, v12

    :goto_0
    new-array v0, v13, [F

    if-eqz v3, :cond_1

    div-float/2addr v2, v1

    aput v2, v0, v14

    aput v4, v0, v12

    goto :goto_1

    :cond_1
    aput v4, v0, v14

    div-float/2addr v2, v1

    aput v2, v0, v12

    :goto_1
    move-object v15, v0

    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v16, Lc3/c;->m:Lc3/c$g;

    invoke-virtual/range {v16 .. v16}, Lc3/c$g;->c()Landroid/util/FloatProperty;

    move-result-object v1

    array-length v2, v5

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "scaleXAnimator"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lc3/c$g;->d()Landroid/util/FloatProperty;

    move-result-object v1

    array-length v2, v15

    invoke-static {v15, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "scaleYAnimator"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getCornerRadius()F

    move-result v1

    mul-float/2addr v1, v11

    iget-boolean v2, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    if-eqz v2, :cond_2

    new-array v2, v13, [F

    aput v1, v2, v14

    aput v0, v2, v12

    goto :goto_2

    :cond_2
    new-array v2, v13, [F

    aput v0, v2, v14

    aput v1, v2, v12

    :goto_2
    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lc3/c$g;->b()Landroid/util/FloatProperty;

    move-result-object v1

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "radiusAnimator"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    move-object/from16 v0, p3

    invoke-direct {v10, v0, v11}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->findFolderBgTran(Landroid/graphics/Rect;F)Landroid/graphics/PointF;

    move-result-object v11

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    const/4 v15, 0x0

    if-eqz v0, :cond_3

    new-array v0, v13, [F

    iget v1, v11, Landroid/graphics/PointF;->x:F

    aput v1, v0, v14

    aput v15, v0, v12

    goto :goto_3

    :cond_3
    new-array v0, v13, [F

    aput v15, v0, v14

    iget v1, v11, Landroid/graphics/PointF;->x:F

    aput v1, v0, v12

    :goto_3
    iget-object v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lc3/c$g;->e()Landroid/util/FloatProperty;

    move-result-object v2

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "translationX"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    if-eqz v0, :cond_4

    new-array v0, v13, [F

    iget v1, v11, Landroid/graphics/PointF;->y:F

    aput v1, v0, v14

    aput v15, v0, v12

    goto :goto_4

    :cond_4
    new-array v0, v13, [F

    aput v15, v0, v14

    iget v1, v11, Landroid/graphics/PointF;->y:F

    aput v1, v0, v12

    :goto_4
    iget-object v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual/range {v16 .. v16}, Lc3/c$g;->f()Landroid/util/FloatProperty;

    move-result-object v2

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "translationY"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    sget-object v0, Lz3/d;->a:Lz3/d;

    iget-object v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->launcher:Lcom/android/launcher3/Launcher;

    const-string v2, "launcher"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v14}, Lz3/d;->d(Landroid/content/Context;Z)I

    move-result v0

    iget-object v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getBgColor()I

    move-result v1

    iget-boolean v2, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    if-eqz v2, :cond_5

    new-array v2, v13, [I

    aput v1, v2, v14

    aput v0, v2, v12

    goto :goto_5

    :cond_5
    new-array v2, v13, [I

    aput v0, v2, v14

    aput v1, v2, v12

    :goto_5
    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lc3/c$g;->a()Landroid/util/IntProperty;

    move-result-object v1

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "bgAnimator"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    return-void
.end method

.method private final initFolderItemAnimator(Landroid/animation/AnimatorSet;FLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "F",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "folderIconAppRectList[0]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v0

    check-cast v12, Landroid/graphics/RectF;

    invoke-interface/range {p5 .. p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v7, v11

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v14, v7, 0x1

    if-gez v7, :cond_0

    invoke-static {}, Lo5/j;->m()V

    :cond_0
    move-object v15, v0

    check-cast v15, Lcom/android/launcher3/BubbleTextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    invoke-virtual {v15, v11}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, v8, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isBigIcon:Z

    const-string v1, "folderAppRectList[i]"

    const-string v2, "folderIconAppRectList[i]"

    if-eqz v0, :cond_1

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->bigFolderItemAnimator(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/animation/AnimatorSet;FI)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Landroid/graphics/RectF;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->smallFolderItemAnimator(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/animation/AnimatorSet;FI)V

    :goto_1
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    iget-object v1, v8, Lcom/android/launcher3/folder/NTFolderAnimationManager;->alphaValues:[F

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "ofFloat(targetView, Bubb\u2026A_PROPERTY, *alphaValues)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p1

    invoke-direct {v8, v1, v0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->delayPlay2(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    move v7, v14

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final initFolderNameAndIndicatorAnimator(Landroid/animation/AnimatorSet;FLandroid/graphics/Rect;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getFolderName()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getIndicator()Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getFolderName()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->alphaValues:[F

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "nameAlpha"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->delayPlay2(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getIndicator()Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->alphaValues:[F

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "indicatorAlpha"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->delayPlay2(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    invoke-direct {p0, p3, p2}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getIconRect(Landroid/graphics/Rect;F)Landroid/graphics/RectF;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07046b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    mul-int/lit8 p3, p3, 0x2

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.views.BaseDragLayer.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v2, v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    new-instance v0, Landroid/graphics/Rect;

    iget v3, v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    sub-int p3, v2, p3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v1, v3

    invoke-direct {v0, v3, p3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr p3, v1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getIndicator()Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    move-result-object v0

    const-string v1, "folder.indicator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    new-instance v2, Lcom/android/launcher3/folder/NTFolderAnimationManager$initFolderNameAndIndicatorAnimator$1;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/folder/NTFolderAnimationManager$initFolderNameAndIndicatorAnimator$1;-><init>(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;)V

    invoke-static {v0, p3, p2, v1, v2}, Lb3/x;->h(Landroid/view/View;FFZLy5/l;)V

    return-void
.end method

.method private final initFolderScrimAnimator(Landroid/animation/AnimatorSet;)V
    .locals 13

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->dragLayer:Lcom/android/launcher3/dragndrop/NTDragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/NTDragLayer;->getFolderScrim()Lcom/android/launcher3/graphics/FolderScrim;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->alphaValues:[F

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-string v0, "animator"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v12}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    return-void
.end method

.method private final play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-lez p0, :cond_0

    invoke-virtual {p2, p3, p4}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_0
    invoke-virtual {p2, p5, p6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p2, p7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method static synthetic play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v5, v0

    goto :goto_0

    :cond_0
    move-wide v5, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x15e

    move-wide v7, v0

    goto :goto_1

    :cond_1
    move-wide v7, p5

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->FOLDER_OPEN_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method private final resetFolder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setAnimatorListener(Landroid/animation/AnimatorSet;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getClipChildren()Z

    move-result v5

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getClipToPadding()Z

    move-result v4

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v7

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v6

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result v10

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v9

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    const-string v1, "folder.content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$1;

    invoke-direct {v1, v8}, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$1;-><init>(Lcom/android/launcher3/CellLayout;)V

    invoke-static {v0, v1}, Lg6/j;->j(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object v0

    invoke-interface {v0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v0, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/folder/NTFolderAnimationManager$setAnimatorListener$1$3;-><init>(Lcom/android/launcher3/folder/NTFolderAnimationManager;Ljava/util/List;ZZZZLcom/android/launcher3/CellLayout;ZZ)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method private final smallFolderItemAnimator(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/animation/AnimatorSet;FI)V
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderIconScale()F

    move-result v0

    mul-float v0, v0, p6

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v10, v1, v2}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->findTranFromTwoRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderFirstRect:Landroid/graphics/RectF;

    move-object/from16 v3, p4

    invoke-direct {v10, v2, v3}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->findTranFromTwoRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    sub-float v12, v2, v1

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    new-array v0, v15, [F

    aput v3, v0, v14

    aput v9, v0, v13

    goto :goto_0

    :cond_0
    new-array v0, v15, [F

    aput v9, v0, v14

    aput v3, v0, v13

    :goto_0
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v11, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "translationX"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v9, v16

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    if-eqz v0, :cond_1

    new-array v0, v15, [F

    aput v12, v0, v14

    const/4 v9, 0x0

    aput v9, v0, v13

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    new-array v0, v15, [F

    aput v9, v0, v14

    aput v12, v0, v13

    :goto_1
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    invoke-static {v11, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "translationY"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move v13, v9

    move-object v9, v12

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    const/4 v0, 0x3

    move/from16 v1, p7

    if-gt v1, v0, :cond_2

    iget-object v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {v11, v13}, Landroid/view/View;->setAlpha(F)V

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v1, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->alphaValues:[F

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v11, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "ofFloat(targetView, View.ALPHA, *alphaValues)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, v10, Lcom/android/launcher3/folder/NTFolderAnimationManager;->isOpening:Z

    if-eqz v0, :cond_3

    const-wide/16 v3, 0xa

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x96

    sget-object v7, Lcom/android/launcher3/folder/NTFolderAnimationManager;->FOLDER_OPEN_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    const/4 v8, 0x4

    :goto_2
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static/range {v0 .. v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->play$default(Lcom/android/launcher3/folder/NTFolderAnimationManager;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final getAnimator()Landroid/animation/AnimatorSet;
    .locals 10

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->workspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->workspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->hotSeat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    iget-object v4, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->workspace:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getTargetScale()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    iget-object v4, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->workspace:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getTargetTranY()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->hotSeat:Lcom/android/launcher3/Hotseat;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    iget-object v4, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->dragLayer:Lcom/android/launcher3/dragndrop/NTDragLayer;

    iget-object v5, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v4, v5, v7}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v8

    iget-object v4, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->workspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v3, v4, v0}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->workspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->hotSeat:Lcom/android/launcher3/Hotseat;

    invoke-virtual {v3, v0, v2}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v9

    const-string v0, "folderAppList"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v7, v8, v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getFolderIconAppRectList(Landroid/graphics/Rect;FLjava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->getFolderAppRectList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v6}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->initFolderScrimAnimator(Landroid/animation/AnimatorSet;)V

    invoke-direct {p0, v6, v8, v7}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->initFolderBackgroundAnimator(Landroid/animation/AnimatorSet;FLandroid/graphics/Rect;)V

    invoke-direct {p0, v6, v8, v3}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->initContentAnimator(Landroid/animation/AnimatorSet;FLjava/util/ArrayList;)V

    invoke-direct {p0, v6, v8, v7}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->initFolderNameAndIndicatorAnimator(Landroid/animation/AnimatorSet;FLandroid/graphics/Rect;)V

    move-object v0, p0

    move-object v1, v6

    move v2, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->initFolderItemAnimator(Landroid/animation/AnimatorSet;FLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/BaseFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->isCoverType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v6, v8, v7}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->initCoverViewAnimator(Landroid/animation/AnimatorSet;FLandroid/graphics/Rect;)V

    :cond_0
    invoke-direct {p0, v6, v9}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->setAnimatorListener(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object v6
.end method

.method public final getBigFolderCreateAnim()Landroid/animation/AnimatorSet;
    .locals 13

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->deviceProfile:Lj3/a;

    invoke-virtual {v0}, Lj3/a;->h()I

    move-result v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    instance-of v3, v2, Lcom/android/launcher3/folder/BigFolderIcon;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/launcher3/folder/BigFolderIcon;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/BaseFolderIcon;->getIconBounds(Landroid/graphics/Rect;)V

    const/4 v6, 0x2

    new-array v7, v6, [I

    invoke-virtual {v2}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Lc3/a;->m(I[I)F

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    invoke-direct {v2, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    new-instance v8, Landroid/graphics/Point;

    iget v9, v3, Landroid/graphics/Rect;->left:I

    aget v10, v7, v5

    add-int/2addr v9, v10

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const/4 v10, 0x1

    aget v7, v7, v10

    add-int/2addr v3, v7

    invoke-direct {v8, v9, v3}, Landroid/graphics/Point;-><init>(II)V

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->iconSizePx:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    sget-object p0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v3, v6, [F

    aput v0, v3, v5

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v0

    aput v0, v3, v10

    invoke-static {v4, p0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v11, 0x12c

    invoke-virtual {p0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget p0, v2, Landroid/graphics/Point;->x:I

    iget v0, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    iget v0, v2, Landroid/graphics/Point;->y:I

    iget v2, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v6, [F

    aput p0, v3, v5

    const/4 p0, 0x0

    aput p0, v3, v10

    invoke-static {v4, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    aput v0, v3, v5

    aput p0, v3, v10

    invoke-static {v4, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    return-object v1
.end method

.method public final getBigFolderDestroyAnim(Ly5/a;)Landroid/animation/AnimatorSet;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/a<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/animation/AnimatorSet;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "callBack"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v3

    iget v4, v3, Lcom/android/launcher3/folder/PreviewBackground;->previewSize:I

    iget-object v5, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->deviceProfile:Lj3/a;

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object v5

    new-instance v6, Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Point;->x:I

    const/4 v8, 0x2

    div-int/2addr v7, v8

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v9, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->deviceProfile:Lj3/a;

    iget v9, v9, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    sub-int/2addr v5, v9

    div-int/2addr v5, v8

    iget v9, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->iconSizePx:I

    div-int/2addr v9, v8

    add-int/2addr v5, v9

    invoke-direct {v6, v7, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v5, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->folderIcon:Lcom/android/launcher3/folder/BaseFolderIcon;

    const-string v7, "null cannot be cast to non-null type com.android.launcher3.folder.BigFolderIcon"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/android/launcher3/folder/BigFolderIcon;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v7}, Lcom/android/launcher3/folder/BaseFolderIcon;->getIconBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v5}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v9

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget v10, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->iconSizePx:I

    div-int/2addr v10, v8

    sub-int/2addr v9, v10

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    iget v12, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->iconSizePx:I

    div-int/2addr v12, v8

    sub-int/2addr v10, v12

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    iget v13, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->iconSizePx:I

    div-int/2addr v13, v8

    add-int/2addr v12, v13

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    iget v15, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->iconSizePx:I

    div-int/2addr v15, v8

    add-int/2addr v13, v15

    invoke-direct {v11, v9, v10, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3}, Lcom/android/launcher3/folder/PreviewBackground;->getCornerRadius()F

    move-result v13

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v9

    const/4 v3, 0x1

    move-object v10, v5

    move-object v12, v7

    move-object v15, v14

    move v14, v3

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/graphics/IconShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v9, 0xc8

    invoke-virtual {v3, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget v3, v6, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v11

    sub-float/2addr v3, v11

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    sub-float/2addr v6, v7

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v8, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v14, 0x1

    aput v3, v11, v14

    invoke-static {v5, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    aput v12, v7, v13

    aput v6, v7, v14

    invoke-static {v5, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v3, Landroid/graphics/Point;

    div-int/2addr v4, v8

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v4

    invoke-virtual {v4}, Lc3/a;->h()Landroid/graphics/Rect;

    move-result-object v4

    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    sub-float/2addr v6, v7

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    sub-float/2addr v3, v7

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v8, [F

    const/4 v13, 0x0

    aput v12, v11, v13

    aput v6, v11, v14

    invoke-static {v15, v7, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    aput v12, v7, v13

    aput v3, v7, v14

    invoke-static {v15, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget v0, v0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->iconSizePx:I

    int-to-float v0, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v4, v8, [F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    aput v6, v4, v7

    aput v0, v4, v14

    invoke-static {v15, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v0, Lcom/android/launcher3/folder/NTFolderAnimationManager$getBigFolderDestroyAnim$1;

    invoke-direct {v0, v1, v15, v5}, Lcom/android/launcher3/folder/NTFolderAnimationManager$getBigFolderDestroyAnim$1;-><init>(Ly5/a;Landroid/view/View;Lcom/android/launcher3/folder/BigFolderIcon;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final resetAnimator()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->setRestState(Lcom/android/launcher3/statemanager/BaseState;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager;->dragLayer:Lcom/android/launcher3/dragndrop/NTDragLayer;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/NTDragLayer;->getFolderScrim()Lcom/android/launcher3/graphics/FolderScrim;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/graphics/FolderScrim;->setScrimProgress(F)V

    return-void
.end method
