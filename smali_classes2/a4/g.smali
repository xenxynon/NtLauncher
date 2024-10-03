.class public final La4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/g$b;,
        La4/g$a;
    }
.end annotation


# static fields
.field public static final l:La4/g$a;

.field private static final m:Landroid/view/animation/Interpolator;

.field private static final n:Landroid/view/animation/Interpolator;

.field private static final o:Landroid/view/animation/Interpolator;


# instance fields
.field private final a:Lq2/m;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:Z

.field private final k:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, La4/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La4/g$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, La4/g;->l:La4/g$a;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f8ccccd    # 1.1f

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, La4/g;->m:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, La4/g;->n:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ed70a3d    # 0.42f

    const/4 v2, 0x0

    const v3, 0x3f147ae1    # 0.58f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, La4/g;->o:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lq2/m;)V
    .locals 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/g;->a:Lq2/m;

    invoke-virtual {p1}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->bigCellWidthRatio:I

    iput v0, p0, La4/g;->b:I

    invoke-virtual {p1}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->bigCellHeightRatio:I

    iput v0, p0, La4/g;->c:I

    invoke-virtual {p1}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput v0, p0, La4/g;->d:I

    invoke-virtual {p1}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v1

    invoke-virtual {v1}, Lj3/a;->h()I

    move-result v1

    iput v1, p0, La4/g;->e:I

    invoke-virtual {p1}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v2

    invoke-virtual {v2}, Lj3/a;->f()I

    move-result v2

    iput v2, p0, La4/g;->f:I

    invoke-virtual {p1}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    iput v2, p0, La4/g;->g:I

    invoke-static {v1}, Lcom/android/launcher3/icons/IconNormalizer;->getNormalFolderSize(I)I

    move-result v1

    iput v1, p0, La4/g;->h:I

    invoke-static {v0}, Lcom/android/launcher3/icons/IconNormalizer;->getNormalFolderSize(I)I

    move-result v1

    iput v1, p0, La4/g;->i:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v2

    iput-boolean v2, p0, La4/g;->j:Z

    new-instance v3, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-direct {v3}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;-><init>()V

    int-to-float v0, v0

    invoke-virtual {p1}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpace:F

    invoke-virtual {v3, v1, v0, v2, p1}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->init(IFZF)V

    iput-object v3, p0, La4/g;->k:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    return-void
.end method

.method public static final synthetic a(La4/g;)Lq2/m;
    .locals 0

    iget-object p0, p0, La4/g;->a:Lq2/m;

    return-object p0
.end method

.method public static final synthetic b(La4/g;Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, La4/g;->q(Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(La4/g;Landroid/animation/AnimatorSet;Landroid/animation/Animator;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, La4/g;->t(Landroid/animation/AnimatorSet;Landroid/animation/Animator;ZZ)V

    return-void
.end method

.method public static final synthetic d(La4/g;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1}, La4/g;->w(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public static final synthetic e(La4/g;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/nothing/launcher/views/NTBubbleTextView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, La4/g;->x(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/nothing/launcher/views/NTBubbleTextView;Z)V

    return-void
.end method

.method private final g(Lcom/android/launcher3/folder/BigFolderIcon;Landroid/graphics/Point;Landroid/graphics/Point;ZLy5/a;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/BigFolderIcon;",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Point;",
            "Z",
            "Ly5/a<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/folder/BigFolderIcon;->getBigFolderIconContainer()Lc3/a;

    move-result-object v14

    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    iget v0, v7, La4/g;->h:I

    iget v1, v7, La4/g;->i:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, La6/a;->b(F)I

    move-result v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8, v3}, Lcom/android/launcher3/folder/BaseFolderIcon;->getIconBounds(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iget v5, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v0

    invoke-direct {v2, v1, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12}, Lcom/android/launcher3/folder/PreviewBackground;->getCornerRadius()F

    move-result v4

    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v0

    xor-int/lit8 v5, v11, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/graphics/IconShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;

    move-result-object v2

    const-string v0, "backgroundAnim"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v3, p4

    invoke-static/range {v0 .. v6}, La4/g;->u(La4/g;Landroid/animation/AnimatorSet;Landroid/animation/Animator;ZZILjava/lang/Object;)V

    iget v0, v7, La4/g;->g:I

    iget v1, v7, La4/g;->f:I

    sub-int/2addr v0, v1

    iget v1, v7, La4/g;->e:I

    iget v2, v7, La4/g;->d:I

    sub-int/2addr v1, v2

    const/4 v6, 0x2

    div-int/2addr v1, v6

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x1

    new-array v1, v6, [F

    if-eqz v11, :cond_0

    aput v0, v1, v5

    aput v16, v1, v17

    goto :goto_0

    :cond_0
    aput v16, v1, v5

    aput v0, v1, v17

    :goto_0
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v13, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "nameTransY"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v18, 0x8

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v3, p4

    move/from16 v5, v18

    move-object/from16 v18, v12

    move v12, v6

    move-object/from16 v6, v19

    invoke-static/range {v0 .. v6}, La4/g;->u(La4/g;Landroid/animation/AnimatorSet;Landroid/animation/Animator;ZZILjava/lang/Object;)V

    iget v0, v9, Landroid/graphics/Point;->x:I

    iget v1, v10, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    iget v2, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    if-eqz v11, :cond_1

    new-array v2, v12, [F

    const/4 v9, 0x0

    aput v0, v2, v9

    aput v16, v2, v17

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    new-array v2, v12, [F

    aput v16, v2, v9

    aput v0, v2, v17

    :goto_1
    new-array v0, v12, [F

    if-eqz v11, :cond_2

    aput v1, v0, v9

    aput v16, v0, v17

    goto :goto_2

    :cond_2
    aput v16, v0, v9

    aput v1, v0, v17

    :goto_2
    move-object v10, v0

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    array-length v1, v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "iconViewTransX"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v3, p4

    invoke-static/range {v0 .. v6}, La4/g;->u(La4/g;Landroid/animation/AnimatorSet;Landroid/animation/Animator;ZZILjava/lang/Object;)V

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    array-length v1, v10

    invoke-static {v10, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v8, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v0, "iconViewTransY"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-static/range {v0 .. v6}, La4/g;->u(La4/g;Landroid/animation/AnimatorSet;Landroid/animation/Animator;ZZILjava/lang/Object;)V

    invoke-static {v14}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lg6/j;->q(Lg6/g;I)Lg6/g;

    move-result-object v0

    invoke-static {v0}, Lg6/j;->i(Lg6/g;)I

    move-result v0

    invoke-direct {v7, v0}, La4/g;->p(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, v7, La4/g;->k:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v1

    new-instance v2, La4/g$c;

    invoke-direct {v2, v7, v15, v11}, La4/g$c;-><init>(La4/g;Landroid/animation/AnimatorSet;Z)V

    invoke-virtual {v14, v0, v11, v1, v2}, Lc3/a;->f(Ljava/util/List;ZFLy5/p;)V

    new-instance v0, La4/g$d;

    move-object/from16 v1, p5

    move-object/from16 v2, v18

    invoke-direct {v0, v8, v2, v13, v1}, La4/g$d;-><init>(Lcom/android/launcher3/folder/BigFolderIcon;Lcom/android/launcher3/folder/PreviewBackground;Lcom/android/launcher3/BubbleTextView;Ly5/a;)V

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method static synthetic h(La4/g;Lcom/android/launcher3/folder/BigFolderIcon;Landroid/graphics/Point;Landroid/graphics/Point;ZLy5/a;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, La4/g;->g(Lcom/android/launcher3/folder/BigFolderIcon;Landroid/graphics/Point;Landroid/graphics/Point;ZLy5/a;)V

    return-void
.end method

.method private final i(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/PointF;FZLy5/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            "FZ",
            "Ly5/a<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p4, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v1, [F

    const/4 v5, 0x0

    aput v5, v2, v4

    aput v0, v2, v3

    invoke-static {p3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v1, [F

    aput v5, v2, v4

    aput p2, v2, v3

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object p4, v0, v4

    aput-object p3, v0, v3

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string p2, "animator"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    move v3, p5

    invoke-static/range {v0 .. v6}, La4/g;->u(La4/g;Landroid/animation/AnimatorSet;Landroid/animation/Animator;ZZILjava/lang/Object;)V

    new-instance p2, La4/g$e;

    invoke-direct {p2, p0, p1, p6}, La4/g$e;-><init>(La4/g;Landroid/view/View;Ly5/a;)V

    invoke-virtual {v7, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private final j(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.celllayout.CellLayoutLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-direct {p0, p3, v0}, La4/g;->m(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;)La4/g$b;

    move-result-object v1

    invoke-virtual {v1}, La4/g$b;->d()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p3, p1, v0, v1}, La4/g;->k(Lcom/android/launcher3/CellLayout;Landroid/view/View;Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;La4/g$b;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doZoomIn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResizeManager"

    invoke-static {v3, v2}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, La4/g$b;->c()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->resizeCellX:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->resizeCellY:I

    const/4 v2, 0x1

    iput-boolean v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->useResizeCoords:Z

    invoke-virtual {v1}, La4/g$b;->a()I

    move-result v3

    iput v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v1}, La4/g$b;->b()I

    move-result v1

    iput v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v1, p0, La4/g;->b:I

    iput v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, p0, La4/g;->c:I

    iput v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    instance-of v0, p1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-direct {p0, p1, p2, p3}, La4/g;->n(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/nothing/launcher/views/NTBubbleTextView;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/nothing/launcher/views/NTBubbleTextView;

    invoke-direct {p0, p1, p2, p3}, La4/g;->y(Lcom/nothing/launcher/views/NTBubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;)V

    :cond_2
    :goto_0
    sget-object p0, Ly4/a;->h:Ly4/a;

    invoke-virtual {p0, p2, v2}, Ly4/a;->f(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, La4/g;->a:Lq2/m;

    const p1, 0x7f1201ef

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private final k(Lcom/android/launcher3/CellLayout;Landroid/view/View;Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;La4/g$b;)V
    .locals 23

    move-object/from16 v9, p0

    move-object/from16 v0, p3

    move-object/from16 v10, p4

    iget v1, v9, La4/g;->b:I

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    iget v2, v9, La4/g;->c:I

    sub-int/2addr v2, v11

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellX(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setTmpCellY(I)V

    iget v3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    add-int v15, v3, v1

    iget v3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    add-int v16, v3, v2

    const/4 v12, 0x4

    new-array v13, v12, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v14, 0x0

    aput-object v4, v13, v14

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    aput-object v4, v13, v11

    new-array v4, v3, [I

    fill-array-data v4, :array_2

    aput-object v4, v13, v3

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x3

    aput-object v4, v13, v5

    new-array v8, v12, [I

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    aput v4, v8, v14

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    sub-int/2addr v4, v1

    aput v4, v8, v11

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v4

    sub-int/2addr v4, v1

    aput v4, v8, v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v1

    aput v1, v8, v5

    new-array v7, v12, [I

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v1

    aput v1, v7, v14

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v1

    aput v1, v7, v11

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v1

    sub-int/2addr v1, v2

    aput v1, v7, v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v0

    sub-int/2addr v0, v2

    aput v0, v7, v5

    const v0, 0x7fffffff

    const/4 v1, -0x1

    move v6, v0

    move v5, v1

    move v4, v14

    :goto_0
    if-ge v4, v12, :cond_1

    new-array v3, v11, [I

    aget v17, v8, v4

    aget v18, v7, v4

    aget-object v19, v13, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v20, v3

    move/from16 v3, v17

    move/from16 v17, v4

    move/from16 v4, v18

    move v11, v5

    move v5, v15

    move v12, v6

    move/from16 v6, v16

    move-object/from16 v21, v7

    move-object/from16 v7, v19

    move-object/from16 v22, v8

    move-object/from16 v8, v20

    invoke-direct/range {v0 .. v8}, La4/g;->l(Lcom/android/launcher3/CellLayout;Landroid/view/View;IIII[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    aget v0, v20, v14

    if-le v12, v0, :cond_0

    aget v0, v20, v14

    move v6, v0

    move/from16 v5, v17

    goto :goto_1

    :cond_0
    move v5, v11

    move v6, v12

    :goto_1
    add-int/lit8 v4, v17, 0x1

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    const/4 v11, 0x1

    const/4 v12, 0x4

    goto :goto_0

    :cond_1
    move v11, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    if-ltz v11, :cond_2

    aget v0, v22, v11

    aget v14, v21, v11

    aget-object v18, v13, v11

    const/16 v19, 0x1

    move-object/from16 v12, p1

    move v13, v0

    move-object/from16 v17, p2

    invoke-virtual/range {v12 .. v19}, Lcom/android/launcher3/CellLayout;->createAreaForResizeNoTemp(IIIILandroid/view/View;[IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ResizeManager"

    const-string v1, "Resize!!! createAreaForResize Success"

    invoke-static {v0, v1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    aget v0, v22, v11

    invoke-virtual {v10, v0}, La4/g$b;->e(I)V

    aget v0, v21, v11

    invoke-virtual {v10, v0}, La4/g$b;->f(I)V

    invoke-virtual {v10, v11}, La4/g$b;->g(I)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        -0x1
    .end array-data
.end method

.method private final l(Lcom/android/launcher3/CellLayout;Landroid/view/View;IIII[I[I)Z
    .locals 10

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v9

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move/from16 v4, p6

    move-object v5, p2

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->canFindSolution(IIIILandroid/view/View;[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p3, p5

    if-gt v0, v8, :cond_0

    if-ltz p4, :cond_0

    add-int v0, p4, p6

    if-gt v0, v9, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final m(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;)La4/g$b;
    .locals 13

    iget v0, p0, La4/g;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget p0, p0, La4/g;->c:I

    sub-int/2addr p0, v1

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    new-instance v12, La4/g$b;

    invoke-virtual {p2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellX()I

    move-result v6

    invoke-virtual {p2}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->getCellY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, La4/g$b;-><init>(IIIZILkotlin/jvm/internal/i;)V

    iget p2, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, p2, v5}, Landroid/graphics/Point;->set(II)V

    iget p2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr p2, v0

    iget v5, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v5, p0

    invoke-virtual {v4, p2, v5}, Landroid/graphics/Point;->set(II)V

    sget-object p2, Ln5/t;->a:Ln5/t;

    invoke-virtual {p1, v3, v4, v2}, Lcom/android/launcher3/CellLayout;->isOccupiedExt(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p2

    const/4 v5, 0x0

    if-nez p2, :cond_0

    invoke-virtual {v12, v5}, La4/g$b;->g(I)V

    invoke-virtual {v12, v1}, La4/g$b;->h(Z)V

    goto :goto_1

    :cond_0
    iget p2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, v0

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, p2, v6}, Landroid/graphics/Point;->set(II)V

    iget p2, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v6, p0

    invoke-virtual {v4, p2, v6}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p1, v3, v4, v2}, Lcom/android/launcher3/CellLayout;->isOccupiedExt(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v12, v1}, La4/g$b;->g(I)V

    invoke-virtual {v12, v1}, La4/g$b;->h(Z)V

    iget p0, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v0

    invoke-virtual {v12, p0}, La4/g$b;->e(I)V

    goto :goto_1

    :cond_1
    iget p2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, v0

    iget v6, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, p0

    invoke-virtual {v3, p2, v6}, Landroid/graphics/Point;->set(II)V

    iget p2, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, p2, v6}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p1, v3, v4, v2}, Lcom/android/launcher3/CellLayout;->isOccupiedExt(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p1, 0x2

    invoke-virtual {v12, p1}, La4/g$b;->g(I)V

    invoke-virtual {v12, v1}, La4/g$b;->h(Z)V

    iget p1, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v0

    invoke-virtual {v12, p1}, La4/g$b;->e(I)V

    :goto_0
    iget p1, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p0

    invoke-virtual {v12, p1}, La4/g$b;->f(I)V

    goto :goto_1

    :cond_2
    iget p2, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, p0

    invoke-virtual {v3, p2, v6}, Landroid/graphics/Point;->set(II)V

    iget p2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr p2, v0

    iget v0, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, p2, v0}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p1, v3, v4, v2}, Lcom/android/launcher3/CellLayout;->isOccupiedExt(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x3

    invoke-virtual {v12, p1}, La4/g$b;->g(I)V

    invoke-virtual {v12, v1}, La4/g$b;->h(Z)V

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    invoke-virtual {v12, p0}, La4/g$b;->g(I)V

    invoke-virtual {v12, v5}, La4/g$b;->h(Z)V

    :goto_1
    return-object v12
.end method

.method private final n(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;)V
    .locals 9

    iget-object v0, p0, La4/g;->a:Lq2/m;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v1

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v2, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.celllayout.CellLayoutLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    iget v4, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v5, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v0, v4

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iget v1, p0, La4/g;->d:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    invoke-direct {v0, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->toCenter:Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->removeListeners()V

    invoke-virtual {p3, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, La4/g;->a:Lq2/m;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private final o(Lcom/android/launcher3/folder/BigFolderIcon;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;)V
    .locals 12

    iget-boolean v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->useResizeCoords:Z

    if-eqz v2, :cond_0

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->resizeCellX:I

    goto :goto_0

    :cond_0
    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    :goto_0
    if-eqz v2, :cond_1

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->resizeCellY:I

    goto :goto_1

    :cond_1
    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    :goto_1
    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v3, v4, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-le v2, v4, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.celllayout.CellLayoutLayoutParams"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    iget v9, v2, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v10, v8

    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v11, v9

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v9, p0, La4/g;->b:I

    div-int/2addr v8, v9

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v9, p0, La4/g;->c:I

    div-int/2addr v2, v9

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    if-eqz v3, :cond_4

    iget v3, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v8

    goto :goto_4

    :cond_4
    iget v3, v7, Landroid/graphics/Rect;->left:I

    :goto_4
    iput v3, v9, Landroid/graphics/Rect;->left:I

    if-eqz v5, :cond_5

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    goto :goto_5

    :cond_5
    iget v5, v7, Landroid/graphics/Rect;->top:I

    :goto_5
    iput v5, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v8

    iput v3, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v2

    iput v5, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, La4/g;->a:Lq2/m;

    invoke-virtual {v3}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher3/folder/BaseFolderIcon;->removeListeners()V

    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget v6, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v2

    iget v2, p0, La4/g;->d:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v6, v2

    invoke-direct {v3, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v6, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    iget v4, p0, La4/g;->e:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    invoke-direct {v5, v2, v6}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x0

    new-instance v6, La4/g$f;

    invoke-direct {v6, p3, p1, p0, p2}, La4/g$f;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/folder/BigFolderIcon;La4/g;Lcom/android/launcher3/model/data/ItemInfo;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, La4/g;->g(Lcom/android/launcher3/folder/BigFolderIcon;Landroid/graphics/Point;Landroid/graphics/Point;ZLy5/a;)V

    return-void
.end method

.method private final p(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, La4/g;->i:I

    div-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    div-int/2addr v2, v4

    invoke-direct {v1, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    new-array v2, v4, [F

    iget-object v3, p0, La4/g;->k:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v3

    iget v6, p0, La4/g;->d:I

    int-to-float v6, v6

    mul-float/2addr v3, v6

    move v6, v5

    :goto_0
    if-ge v6, p1, :cond_0

    iget-object v7, p0, La4/g;->k:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const/4 v8, 0x4

    invoke-virtual {v7, v6, v8, v2}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getPositionByNT(II[F)V

    new-instance v7, Landroid/graphics/PointF;

    aget v8, v2, v5

    int-to-float v9, v4

    div-float v9, v3, v9

    add-float/2addr v8, v9

    const/4 v10, 0x1

    aget v10, v2, v10

    add-float/2addr v10, v9

    invoke-direct {v7, v8, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    iget v9, v1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v10, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    iget v10, v1, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v7

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final q(Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0

    iget-object p0, p0, La4/g;->a:Lq2/m;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method private final r(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-virtual {p2, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p2, p5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method static synthetic s(La4/g;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JLandroid/view/animation/Interpolator;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const-wide/16 p3, 0x1c2

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    sget-object p5, La4/g;->m:Landroid/view/animation/Interpolator;

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, La4/g;->r(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method private final t(Landroid/animation/AnimatorSet;Landroid/animation/Animator;ZZ)V
    .locals 8

    if-eqz p3, :cond_0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, La4/g;->s(La4/g;Landroid/animation/AnimatorSet;Landroid/animation/Animator;JLandroid/view/animation/Interpolator;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p4}, La4/g;->v(Landroid/animation/AnimatorSet;Landroid/animation/Animator;Z)V

    :goto_0
    return-void
.end method

.method static synthetic u(La4/g;Landroid/animation/AnimatorSet;Landroid/animation/Animator;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, La4/g;->t(Landroid/animation/AnimatorSet;Landroid/animation/Animator;ZZ)V

    return-void
.end method

.method private final v(Landroid/animation/AnimatorSet;Landroid/animation/Animator;Z)V
    .locals 8

    if-eqz p3, :cond_0

    const-wide/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1c2

    :goto_0
    move-wide v5, v0

    if-eqz p3, :cond_1

    sget-object p3, La4/g;->o:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_1
    sget-object p3, La4/g;->n:Landroid/view/animation/Interpolator;

    :goto_1
    move-object v7, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, La4/g;->r(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method private final w(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 10

    iget-boolean v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->useResizeCoords:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->resizeCellX:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->resizeCellY:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput-boolean v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->useResizeCoords:Z

    :cond_0
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget-object v0, p0, La4/g;->a:Lq2/m;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, La4/g;->a:Lq2/m;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Launcher;->bindItems(Ljava/util/List;Z)V

    return-void
.end method

.method private final x(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/nothing/launcher/views/NTBubbleTextView;Z)V
    .locals 8

    iget-object v0, p0, La4/g;->a:Lq2/m;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.celllayout.CellLayoutLayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_2

    iget-boolean p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->useResizeCoords:Z

    if-eqz p3, :cond_1

    iget p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->resizeCellX:I

    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->resizeCellY:I

    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const/4 p3, 0x0

    iput-boolean p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->useResizeCoords:Z

    :cond_1
    const/4 p3, 0x1

    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput p3, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellHSpan:I

    iput p3, v1, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->cellVSpan:I

    iget p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v1, p3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellX(I)V

    iget p3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v1, p3}, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->setCellY(I)V

    :cond_2
    invoke-virtual {p2, p1}, Lcom/nothing/launcher/views/NTBubbleTextView;->updateIconSizeAndPadding(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->requestLayout()V

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_3
    iget-object p0, p0, La4/g;->a:Lq2/m;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    return-void
.end method

.method private final y(Lcom/nothing/launcher/views/NTBubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.celllayout.CellLayoutLayoutParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    iget v7, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v8, v6

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v3, v7

    invoke-direct {v5, v6, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v3

    iget v6, v0, La4/g;->b:I

    mul-int/2addr v3, v6

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v6

    iget v7, v0, La4/g;->c:I

    mul-int/2addr v6, v7

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->resizeCellX:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v7, v8, :cond_0

    move v7, v10

    goto :goto_0

    :cond_0
    move v7, v9

    :goto_0
    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v11, v2, Lcom/android/launcher3/model/data/ItemInfo;->resizeCellY:I

    if-ge v8, v11, :cond_1

    move v9, v10

    :cond_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    if-eqz v7, :cond_2

    iget v7, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    goto :goto_1

    :cond_2
    iget v7, v5, Landroid/graphics/Rect;->left:I

    :goto_1
    iput v7, v8, Landroid/graphics/Rect;->left:I

    if-eqz v9, :cond_3

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v6

    goto :goto_2

    :cond_3
    iget v9, v5, Landroid/graphics/Rect;->top:I

    :goto_2
    iput v9, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    iput v7, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v6

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, La4/g;->a:Lq2/m;

    invoke-virtual {v3}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v3

    invoke-virtual {v3}, Lj3/a;->g()I

    move-result v3

    new-instance v6, Landroid/graphics/PointF;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v7

    iget v9, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v4

    int-to-float v9, v9

    iget v11, v0, La4/g;->d:I

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    const/4 v13, 0x2

    int-to-float v14, v13

    div-float/2addr v11, v14

    add-float/2addr v9, v11

    invoke-direct {v6, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/PointF;

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    int-to-float v3, v8

    iget v8, v0, La4/g;->e:I

    int-to-float v8, v8

    mul-float/2addr v8, v12

    div-float/2addr v8, v14

    add-float/2addr v3, v8

    invoke-direct {v7, v9, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget v3, v0, La4/g;->e:I

    int-to-float v3, v3

    iget v8, v0, La4/g;->d:I

    int-to-float v8, v8

    div-float v8, v3, v8

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v9, "null cannot be cast to non-null type com.android.launcher3.model.data.WorkspaceItemInfo"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v2

    check-cast v9, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {p0, v2, v10}, La4/g;->q(Lcom/android/launcher3/model/data/ItemInfo;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v11

    iput-object v11, v9, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    new-instance v11, Landroid/widget/ImageView;

    iget-object v12, v0, La4/g;->a:Lq2/m;

    invoke-direct {v11, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v9, v9, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v9, v12, v10}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v0, La4/g;->a:Lq2/m;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v10, v0, La4/g;->j:Z

    if-eqz v10, :cond_4

    iget-object v10, v0, La4/g;->a:Lq2/m;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    iget v12, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v12

    goto :goto_3

    :cond_4
    iget v10, v3, Landroid/graphics/Rect;->left:I

    :goto_3
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v12, v0, La4/g;->d:I

    sub-int/2addr v5, v12

    div-int/2addr v5, v13

    add-int/2addr v10, v5

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, La4/g;->d:I

    iput v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x1

    new-instance v9, La4/g$g;

    invoke-direct {v9, v1, p0, v2}, La4/g$g;-><init>(Lcom/nothing/launcher/views/NTBubbleTextView;La4/g;Lcom/android/launcher3/model/data/ItemInfo;)V

    move-object v0, p0

    move-object v1, v11

    move-object v2, v7

    move-object v3, v6

    move v4, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, La4/g;->i(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/PointF;FZLy5/a;)V

    return-void
.end method

.method private final z(Lcom/nothing/launcher/views/NTBubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.android.launcher3.celllayout.CellLayoutLayoutParams"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    iget v7, v3, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v8, v6

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v3, v7

    invoke-direct {v5, v6, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v6

    iget-boolean v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->useResizeCoords:Z

    if-eqz v7, :cond_0

    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->resizeCellX:I

    goto :goto_0

    :cond_0
    iget v8, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    :goto_0
    if-eqz v7, :cond_1

    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->resizeCellY:I

    goto :goto_1

    :cond_1
    iget v7, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    :goto_1
    iget v9, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-le v8, v9, :cond_2

    move v8, v10

    goto :goto_2

    :cond_2
    move v8, v11

    :goto_2
    iget v9, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-le v7, v9, :cond_3

    move v7, v10

    goto :goto_3

    :cond_3
    move v7, v11

    :goto_3
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    if-eqz v8, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v3

    goto :goto_4

    :cond_4
    iget v8, v5, Landroid/graphics/Rect;->left:I

    :goto_4
    iput v8, v9, Landroid/graphics/Rect;->left:I

    if-eqz v7, :cond_5

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v6

    goto :goto_5

    :cond_5
    iget v7, v5, Landroid/graphics/Rect;->top:I

    :goto_5
    iput v7, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    iput v8, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v6

    iput v7, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, La4/g;->a:Lq2/m;

    invoke-virtual {v3}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->cellHeightPx:I

    sub-int/2addr v6, v3

    const/4 v3, 0x2

    div-int/2addr v6, v3

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-instance v7, Landroid/graphics/PointF;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    iget v11, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v4

    int-to-float v11, v11

    iget v12, v0, La4/g;->e:I

    int-to-float v12, v12

    const/high16 v13, 0x3f800000    # 1.0f

    mul-float/2addr v12, v13

    int-to-float v14, v3

    div-float/2addr v12, v14

    add-float/2addr v11, v12

    invoke-direct {v7, v8, v11}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v11

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v6

    int-to-float v6, v9

    iget v9, v0, La4/g;->d:I

    int-to-float v9, v9

    mul-float/2addr v9, v13

    div-float/2addr v9, v14

    add-float/2addr v6, v9

    invoke-direct {v8, v11, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget v6, v0, La4/g;->d:I

    int-to-float v6, v6

    iget v9, v0, La4/g;->e:I

    int-to-float v9, v9

    div-float/2addr v6, v9

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v11, Landroid/widget/ImageView;

    iget-object v12, v0, La4/g;->a:Lq2/m;

    invoke-direct {v11, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aget-object v10, v12, v10

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v10, v0, La4/g;->a:Lq2/m;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    const-string v12, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v10, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v12, v0, La4/g;->j:Z

    if-eqz v12, :cond_6

    iget-object v12, v0, La4/g;->a:Lq2/m;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    iget v13, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    goto :goto_6

    :cond_6
    iget v12, v9, Landroid/graphics/Rect;->left:I

    :goto_6
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v13, v0, La4/g;->e:I

    sub-int/2addr v5, v13

    div-int/2addr v5, v3

    add-int/2addr v12, v5

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v3, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, La4/g;->e:I

    iput v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    new-instance v9, La4/g$h;

    invoke-direct {v9, v2, p0, v1}, La4/g$h;-><init>(Lcom/android/launcher3/model/data/ItemInfo;La4/g;Lcom/nothing/launcher/views/NTBubbleTextView;)V

    move-object v0, p0

    move-object v1, v11

    move-object v2, v8

    move-object v3, v7

    move v4, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, La4/g;->i(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/PointF;FZLy5/a;)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/View;)V
    .locals 6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, La4/g;->a:Lq2/m;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getEmptyCellCount()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zoomIn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ResizeManager"

    invoke-static {v5, v4}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, La4/g;->b:I

    iget v5, p0, La4/g;->c:I

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    iget-object p0, p0, La4/g;->a:Lq2/m;

    const p1, 0x7f1201ef

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, v1}, La4/g;->j(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final B(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, La4/g;->a:Lq2/m;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, p1, Lcom/android/launcher3/folder/BigFolderIcon;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/android/launcher3/folder/BigFolderIcon;

    invoke-direct {p0, p1, v0, v1}, La4/g;->o(Lcom/android/launcher3/folder/BigFolderIcon;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;)V

    goto :goto_0

    :cond_0
    instance-of v2, p1, Lcom/nothing/launcher/views/NTBubbleTextView;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/nothing/launcher/views/NTBubbleTextView;

    invoke-direct {p0, p1, v0, v1}, La4/g;->z(Lcom/nothing/launcher/views/NTBubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;)V

    :cond_1
    :goto_0
    sget-object p0, Ly4/a;->h:Ly4/a;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Ly4/a;->f(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    :cond_2
    return-void
.end method

.method public final f(Lcom/android/launcher3/folder/BigFolderIcon;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 10

    const-string v0, "bigFolderIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La4/g;->a:Lq2/m;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.celllayout.CellLayoutLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->x:I

    iget v3, v0, Lcom/android/launcher3/celllayout/CellLayoutLayoutParams;->y:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v4, v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v0, v3

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, La4/g;->a:Lq2/m;

    invoke-virtual {v0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v0

    invoke-virtual {v0}, Lj3/a;->g()I

    move-result v0

    new-instance v5, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget v0, p0, La4/g;->e:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    invoke-direct {v5, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->toCenter:Landroid/graphics/Point;

    const-string p2, "itemInfo.toCenter"

    invoke-static {v4, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v9}, La4/g;->h(La4/g;Lcom/android/launcher3/folder/BigFolderIcon;Landroid/graphics/Point;Landroid/graphics/Point;ZLy5/a;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
