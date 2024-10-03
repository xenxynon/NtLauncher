.class public final Lcom/nothing/launcher/card/CardWidgetProviderInfo;
.super Lcom/nothing/cardservice/CardWidgetMetaInfo;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;
    }
.end annotation


# static fields
.field public static final N:Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;


# instance fields
.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:Z

.field private M:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->N:Lcom/nothing/launcher/card/CardWidgetProviderInfo$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;-><init>()V

    return-void
.end method

.method public static synthetic W(Landroid/graphics/drawable/Drawable;IILandroid/content/Context;IILcom/nothing/launcher/card/CardWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLy5/l;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->d0(Landroid/graphics/drawable/Drawable;IILandroid/content/Context;IILcom/nothing/launcher/card/CardWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLy5/l;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static final synthetic X(Lcom/nothing/launcher/card/CardWidgetProviderInfo;Lcom/nothing/cardservice/CardWidgetMetaInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->b0(Lcom/nothing/cardservice/CardWidgetMetaInfo;)V

    return-void
.end method

.method public static final synthetic Y(Lcom/nothing/launcher/card/CardWidgetProviderInfo;Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->m0(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    return-void
.end method

.method public static final synthetic Z(Lcom/nothing/launcher/card/CardWidgetProviderInfo;I)V
    .locals 0

    iput p1, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->M:I

    return-void
.end method

.method private final b0(Lcom/nothing/cardservice/CardWidgetMetaInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->B(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->S(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->C(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->w()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->T(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->z(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->M(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->F(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->E(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->u()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->R(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->s()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->P(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->r()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->O(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->q()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->N(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->D(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->A(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->G(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->y()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->V(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->Q(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->x()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->U(Landroid/content/ComponentName;)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->H(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->I(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->J(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->K(I)V

    invoke-virtual {p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->n()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->L(I)V

    return-void
.end method

.method private static final d0(Landroid/graphics/drawable/Drawable;IILandroid/content/Context;IILcom/nothing/launcher/card/CardWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLy5/l;Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p9

    move-object/from16 v14, p10

    const-string v8, "$context"

    move-object/from16 v15, p3

    invoke-static {v15, v8}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "this$0"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "$dp"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "$mutate"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v13, v1

    int-to-float v12, v2

    const/4 v8, 0x0

    invoke-direct {v0, v8, v8, v13, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    new-instance v11, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v11, v10}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v9, -0x1

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v14, v0, v8, v8, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070596

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {v11, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget v8, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    int-to-float v10, v3

    div-float v16, v9, v10

    const/4 v10, 0x1

    :goto_0
    if-ge v10, v3, :cond_1

    add-float v17, v8, v16

    const/16 v18, 0x0

    move-object/from16 v8, p10

    move/from16 v9, v17

    move/from16 v20, v10

    const/16 v19, 0x1

    move/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v17

    move/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v13, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v20, 0x1

    move/from16 v8, v17

    move-object/from16 v11, v18

    move/from16 v13, v22

    goto :goto_0

    :cond_1
    move-object/from16 v18, v11

    move/from16 v22, v13

    const/16 v19, 0x1

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    int-to-float v9, v4

    div-float v16, v8, v9

    move/from16 v13, v19

    :goto_1
    if-ge v13, v4, :cond_2

    add-float v3, v3, v16

    const/4 v9, 0x0

    move-object/from16 v8, p10

    move v10, v3

    move/from16 v11, v22

    move v12, v3

    move/from16 v19, v13

    move-object/from16 v13, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v19, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v3

    const-string v4, "getInstance(context).iconCache"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v4, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v4, v4

    mul-float v4, v4, p8

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v5, v0}, Le6/e;->d(FF)F

    move-result v0

    invoke-static {v4, v0}, Le6/e;->d(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-interface {v7, v3}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    add-int v4, v1, v0

    add-int/2addr v0, v2

    invoke-virtual {v3, v1, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateCardPreview error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardWidgetProviderInfo"

    invoke-static {v1, v0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final m0(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 7

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->h()I

    move-result v2

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->g()I

    move-result v3

    invoke-virtual {p2, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object p1

    const-string v4, "idp.getDeviceProfile(context)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v4}, Lcom/android/launcher3/DeviceProfile;->getCellSize(Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->u()I

    move-result p1

    const/4 v4, 0x0

    invoke-static {v4, p1}, Le6/e;->b(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->s()I

    move-result v5

    invoke-static {v4, v5}, Le6/e;->b(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->r()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->r()I

    move-result v6

    invoke-static {v0, v6}, Le6/e;->e(II)I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->q()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->q()I

    move-result v6

    invoke-static {v1, v6}, Le6/e;->e(II)I

    move-result v1

    :cond_1
    invoke-static {v2, p1}, Le6/e;->e(II)I

    move-result v6

    iput v6, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->H:I

    invoke-static {v3, v5}, Le6/e;->e(II)I

    move-result v6

    iput v6, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->I:I

    iput v0, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->J:I

    iput v1, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->K:I

    invoke-static {v2, p1}, Le6/e;->e(II)I

    move-result p1

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt p1, v0, :cond_2

    invoke-static {v3, v5}, Le6/e;->e(II)I

    move-result p1

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-gt p1, v0, :cond_2

    const/4 v4, 0x1

    :cond_2
    iput-boolean v4, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->L:Z

    iget p1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v2, p1}, Le6/e;->e(II)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->F:I

    iget p1, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v3, p1}, Le6/e;->e(II)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->G:I

    return-void
.end method

.method private final q0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->w()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->p0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a0()Z
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->y()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c0(ILandroid/content/Context;[ILy5/l;)Landroid/graphics/Bitmap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "[I",
            "Ly5/l<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object v7, p0

    move/from16 v0, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p4

    const-string v1, "context"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "mutate"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->w()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-direct {p0, v4, v3}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->q0(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v10, v1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget v5, v7, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->F:I

    iget v6, v7, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->G:I

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    const-string v8, "lookupContext(context)"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v8

    const-string v2, "activityContext.deviceProfile"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2, v9}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {v4, v5, v6}, Lu2/b;->b(Landroid/content/Context;II)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9, v2}, Ln5/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln5/k;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ln5/k;->a()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-virtual {v2}, Ln5/k;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz p3, :cond_2

    aput v9, p3, v3

    :cond_2
    const/high16 v11, 0x3f800000    # 1.0f

    if-le v9, v0, :cond_3

    int-to-float v0, v0

    int-to-float v12, v9

    div-float/2addr v0, v12

    move v12, v0

    goto :goto_2

    :cond_3
    move v12, v11

    :goto_2
    cmpg-float v0, v12, v11

    const/4 v11, 0x1

    if-nez v0, :cond_4

    move v3, v11

    :cond_4
    if-nez v3, :cond_5

    int-to-float v0, v9

    mul-float/2addr v0, v12

    float-to-int v0, v0

    invoke-static {v0, v11}, Le6/e;->b(II)I

    move-result v9

    int-to-float v0, v2

    mul-float/2addr v0, v12

    float-to-int v0, v0

    invoke-static {v0, v11}, Le6/e;->b(II)I

    move-result v2

    :cond_5
    move v11, v2

    move v13, v9

    new-instance v14, Lcom/nothing/launcher/card/i;

    move-object v0, v14

    move v2, v13

    move v3, v11

    move-object/from16 v4, p2

    move-object v7, p0

    move v9, v12

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/nothing/launcher/card/i;-><init>(Landroid/graphics/drawable/Drawable;IILandroid/content/Context;IILcom/nothing/launcher/card/CardWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLy5/l;)V

    invoke-static {v13, v11, v14}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createHardwareBitmap(pre\u2026}\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e0()I
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->M:I

    return p0
.end method

.method public f0(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->d()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLabel with resource not found exception, cardName is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->d()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkgName is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", provider is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->x()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CardWidgetProviderInfo"

    invoke-static {p1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public final g0()I
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->J:I

    return p0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->x()Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "cache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->M:I

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->f0(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    const-string v0, "myUserHandle()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final h0()I
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->K:I

    return p0
.end method

.method public final i0()I
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->H:I

    return p0
.end method

.method public final j0()I
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->I:I

    return p0
.end method

.method public final k0()I
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->F:I

    return p0
.end method

.method public final l0()I
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->G:I

    return p0
.end method

.method public final n0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/nothing/launcher/card/CardWidgetProviderInfo;->L:Z

    return p0
.end method

.method public final o0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->b()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final p0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln5/l;->h:Ln5/l$a;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/nothing/cardservice/CardWidgetMetaInfo;->v()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p3}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln5/l;->h:Ln5/l$a;

    invoke-static {p0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method
