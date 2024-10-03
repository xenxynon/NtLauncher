.class public abstract La4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lc3/a;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/android/launcher3/views/ActivityContext;

.field private final d:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final e:Landroid/content/res/Resources;

.field private final f:I

.field private final g:I

.field private final h:Ln5/e;

.field private i:I

.field private j:I

.field private final k:I

.field private final l:I


# direct methods
.method public constructor <init>(Lc3/a;Landroid/content/Context;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/b;->a:Lc3/a;

    iput-object p2, p0, La4/b;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "lookupContext(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, La4/b;->c:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object v0, p0, La4/b;->d:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, La4/b;->e:Landroid/content/res/Resources;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->bigIconBorderSpacing:I

    iput p2, p0, La4/b;->f:I

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p2

    iget-object p2, p2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->bigIconSmallBorderSpacing:I

    iput p2, p0, La4/b;->g:I

    new-instance p2, La4/b$b;

    invoke-direct {p2, p0}, La4/b$b;-><init>(La4/b;)V

    invoke-static {p2}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p2

    iput-object p2, p0, La4/b;->h:Ln5/e;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iput p2, p0, La4/b;->k:I

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iput p1, p0, La4/b;->l:I

    return-void
.end method

.method public static synthetic a(Ly5/l;Lcom/nothing/launcher/views/NTBubbleTextView;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1, p2}, La4/b;->e(Ly5/l;Lcom/nothing/launcher/views/NTBubbleTextView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(La4/b;Ljava/util/List;Ljava/util/List;Ly5/l;IILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, La4/b;->c(Ljava/util/List;Ljava/util/List;Ly5/l;I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createAndAddView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final e(Ly5/l;Lcom/nothing/launcher/views/NTBubbleTextView;Landroid/view/View;)Z
    .locals 0

    const-string p2, "$textView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final i()F
    .locals 1

    invoke-virtual {p0}, La4/b;->h()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, La4/b;->l:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public b(Ljava/util/List;ZFLy5/p;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;ZF",
            "Ly5/p<",
            "-",
            "Landroid/animation/Animator;",
            "-",
            "Ljava/lang/Boolean;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "childPoint"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "play"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/Point;

    iget-object v5, v0, La4/b;->a:Lc3/a;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    iget-object v7, v0, La4/b;->a:Lc3/a;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    div-int/2addr v7, v6

    invoke-direct {v4, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    iget-object v5, v0, La4/b;->a:Lc3/a;

    invoke-static {v5}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object v5

    invoke-interface {v5}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-gez v8, :cond_0

    invoke-static {}, Lo5/j;->m()V

    :cond_0
    check-cast v9, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, La4/b;->p()I

    move-result v11

    const-string v12, "scaleAnim"

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    if-ge v8, v11, :cond_2

    iget v11, v0, La4/b;->k:I

    int-to-float v11, v11

    mul-float v11, v11, p3

    invoke-virtual/range {p0 .. p0}, La4/b;->h()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v11, v15

    new-array v15, v6, [F

    if-eqz v2, :cond_1

    aput v11, v15, v7

    aput v13, v15, v14

    goto :goto_1

    :cond_1
    aput v13, v15, v7

    aput v11, v15, v14

    :goto_1
    sget-object v11, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    array-length v13, v15

    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v13

    invoke-static {v9, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    goto :goto_3

    :cond_2
    iget v11, v0, La4/b;->k:I

    int-to-float v11, v11

    mul-float v11, v11, p3

    invoke-virtual/range {p0 .. p0}, La4/b;->u()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v11, v15

    new-array v15, v6, [F

    if-eqz v2, :cond_3

    aput v11, v15, v7

    aput v13, v15, v14

    goto :goto_2

    :cond_3
    aput v13, v15, v7

    aput v11, v15, v14

    :goto_2
    sget-object v11, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    array-length v13, v15

    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v13

    invoke-static {v9, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    :goto_3
    invoke-static {v11, v12}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v11, v12}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v11, v6, [I

    iget-object v12, v0, La4/b;->a:Lc3/a;

    invoke-virtual {v12, v8, v11}, Lc3/a;->m(I[I)F

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-lt v8, v12, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v14

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    goto :goto_4

    :cond_4
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    :goto_4
    check-cast v12, Landroid/graphics/PointF;

    new-instance v13, Landroid/graphics/Point;

    iget v15, v4, Landroid/graphics/Point;->x:I

    aget v16, v11, v7

    sub-int v15, v15, v16

    iget v7, v4, Landroid/graphics/Point;->y:I

    aget v11, v11, v14

    sub-int/2addr v7, v11

    invoke-direct {v13, v15, v7}, Landroid/graphics/Point;-><init>(II)V

    iget v7, v13, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v11, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v11

    iget v11, v13, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v12

    new-instance v12, La4/b$a;

    invoke-direct {v12, v3}, La4/b$a;-><init>(Ly5/p;)V

    invoke-static {v9, v7, v11, v2, v12}, Lb3/x;->h(Landroid/view/View;FFZLy5/l;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v8, v7, :cond_6

    new-array v7, v6, [F

    if-eqz v2, :cond_5

    fill-array-data v7, :array_0

    goto :goto_5

    :cond_5
    fill-array-data v7, :array_1

    :goto_5
    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    array-length v11, v7

    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    invoke-static {v9, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-string v8, "alphaAnim"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v7, v8}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move v8, v10

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_7
    return-void

    nop

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

.method public c(Ljava/util/List;Ljava/util/List;Ly5/l;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/nothing/launcher/views/NTBubbleTextView;",
            ">;",
            "Ly5/l<",
            "-",
            "Lcom/nothing/launcher/views/NTBubbleTextView;",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lo5/j;->m()V

    :cond_0
    check-cast v2, Lcom/nothing/launcher/views/NTBubbleTextView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Lc3/a$c;

    if-eqz v6, :cond_1

    check-cast v5, Lc3/a$c;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    new-instance v5, Lc3/a$c;

    invoke-direct {v5}, Lc3/a$c;-><init>()V

    :cond_2
    invoke-virtual {v5, p4}, Lc3/a$c;->f(I)V

    invoke-virtual {v5, v1}, Lc3/a$c;->h(I)V

    invoke-virtual {v2, v0}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    invoke-virtual {p0}, La4/b;->p()I

    move-result v6

    if-ge v1, v6, :cond_3

    invoke-virtual {p0}, La4/b;->h()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nothing/launcher/views/NTBubbleTextView;->setIconSize(I)V

    sget-object v1, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, La4/a;

    invoke-direct {v1, p3, v2}, La4/a;-><init>(Ly5/l;Lcom/nothing/launcher/views/NTBubbleTextView;)V

    invoke-virtual {v2, v1}, Lcom/nothing/launcher/views/NTBubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, La4/b;->u()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nothing/launcher/views/NTBubbleTextView;->setIconSize(I)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    :goto_2
    invoke-virtual {v2}, Lcom/nothing/launcher/views/NTBubbleTextView;->disablePressAnim()V

    invoke-virtual {v2, v4}, Lcom/android/launcher3/BubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    iget-object v1, p0, La4/b;->a:Lc3/a;

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final f()Lcom/android/launcher3/views/ActivityContext;
    .locals 0

    iget-object p0, p0, La4/b;->c:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public j(I)F
    .locals 1

    invoke-virtual {p0}, La4/b;->p()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-direct {p0}, La4/b;->i()F

    move-result p0

    goto :goto_0

    :cond_0
    const p1, 0x3ed1eb85    # 0.41f

    invoke-direct {p0}, La4/b;->i()F

    move-result p0

    mul-float/2addr p0, p1

    :goto_0
    return p0
.end method

.method public final k()Lc3/a;
    .locals 0

    iget-object p0, p0, La4/b;->a:Lc3/a;

    return-object p0
.end method

.method public final l()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, La4/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method public m()I
    .locals 0

    iget p0, p0, La4/b;->f:I

    return p0
.end method

.method public final n()I
    .locals 0

    iget p0, p0, La4/b;->i:I

    return p0
.end method

.method public final o()Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 0

    iget-object p0, p0, La4/b;->d:Lcom/android/launcher3/InvariantDeviceProfile;

    return-object p0
.end method

.method public abstract p()I
.end method

.method public abstract q()I
.end method

.method public final r()I
    .locals 0

    iget-object p0, p0, La4/b;->h:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final s()Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, La4/b;->e:Landroid/content/res/Resources;

    return-object p0
.end method

.method public final t()I
    .locals 0

    iget p0, p0, La4/b;->g:I

    return p0
.end method

.method public abstract u()I
.end method

.method public final v()I
    .locals 0

    iget p0, p0, La4/b;->j:I

    return p0
.end method

.method public w(II)V
    .locals 1

    invoke-virtual {p0}, La4/b;->h()I

    move-result p2

    invoke-virtual {p0}, La4/b;->q()I

    move-result v0

    mul-int/2addr p2, v0

    sub-int/2addr p1, p2

    invoke-virtual {p0}, La4/b;->m()I

    move-result p2

    invoke-virtual {p0}, La4/b;->q()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr p2, v0

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, La4/b;->i:I

    invoke-virtual {p0}, La4/b;->h()I

    move-result p1

    invoke-virtual {p0}, La4/b;->u()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget p2, p0, La4/b;->g:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, La4/b;->j:I

    return-void
.end method

.method public final x(Z)V
    .locals 1

    iget-object v0, p0, La4/b;->a:Lc3/a;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lg6/g;

    move-result-object v0

    invoke-virtual {p0}, La4/b;->p()I

    move-result p0

    invoke-static {v0, p0}, Lg6/j;->q(Lg6/g;I)Lg6/g;

    move-result-object p0

    sget-object v0, La4/b$c;->g:La4/b$c;

    invoke-static {p0, v0}, Lg6/j;->o(Lg6/g;Ly5/l;)Lg6/g;

    move-result-object p0

    invoke-interface {p0}, Lg6/g;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->setForceHideDot(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract y(Lc3/a$c;Z)V
.end method
