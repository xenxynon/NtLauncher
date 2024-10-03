.class public final Ln3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v0

    const/4 v1, 0x1

    int-to-float v1, v1

    const/4 v2, 0x2

    int-to-float v2, v2

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    sput v0, Ln3/a;->a:F

    return-void
.end method

.method public static final a(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;FLjava/lang/String;Lcom/android/launcher3/icons/BaseIconFactory;)Landroid/graphics/drawable/AdaptiveIconDrawable;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "icon"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconFactory"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    instance-of p2, p4, Lcom/android/launcher3/icons/ThemedIconDrawable;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p4, Lcom/android/launcher3/icons/ThemedIconDrawable;

    invoke-virtual {p4}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getMonoIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p4}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getMonoIcon()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p6}, Ln3/a;->f(Ljava/lang/String;)Z

    move-result p4

    instance-of p6, p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const-string v1, "context.resources"

    if-eqz p6, :cond_4

    move-object p3, p2

    check-cast p3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_3

    instance-of p2, p3, Landroid/graphics/drawable/LayerDrawable;

    if-nez p2, :cond_2

    instance-of p2, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lo3/a;

    invoke-direct {p2, p1}, Lo3/a;-><init>(I)V

    invoke-static {p3, p2}, Ln3/a;->h(Landroid/graphics/drawable/Drawable;Lo3/a;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0, p3, p1}, Ln3/a;->j(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object p3, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p3}, Lo3/b$b;->a()Lo3/b;

    move-result-object p3

    invoke-virtual {p3}, Lo3/b;->s()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p2, p1, p7, p4}, Ln3/a;->d(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;ILcom/android/launcher3/icons/BaseIconFactory;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_4
    sget-object p2, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p2}, Lo3/b$b;->a()Lo3/b;

    move-result-object p2

    invoke-virtual {p2}, Lo3/b;->s()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3, p1, p7, p4}, Ln3/a;->d(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;ILcom/android/launcher3/icons/BaseIconFactory;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1, p5, p0}, Ln3/a;->b(Landroid/graphics/drawable/Drawable;FLandroid/content/Context;)Landroid/graphics/drawable/AdaptiveIconDrawable;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public static final b(Landroid/graphics/drawable/Drawable;FLandroid/content/Context;)Landroid/graphics/drawable/AdaptiveIconDrawable;
    .locals 4

    const-string v0, "mono"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    int-to-float v1, v0

    sub-float/2addr p1, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr p1, v1

    sget v1, Ln3/a;->a:F

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    new-instance v3, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-static {p2}, Lcom/android/launcher3/icons/ThemedIconDrawable;->getColors(Landroid/content/Context;)[I

    move-result-object p1

    aget p2, p1, v0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    new-instance p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {p0, p2, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method private static final c(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lo3/a;Lcom/android/launcher3/icons/BaseIconFactory;Z)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p3}, Lo3/a;->e()I

    move-result v1

    invoke-static {p1, p2, p5, p4, v1}, Ln3/a;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;ZLcom/android/launcher3/icons/BaseIconFactory;I)Landroid/util/Pair;

    move-result-object p5

    iget-object v2, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p5, Landroid/graphics/Bitmap;

    const-string v3, "iconRemovedBgBitmap"

    invoke-static {p5, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Lo3/a;->m(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p5

    if-nez p5, :cond_0

    invoke-static {v2, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p5, 0x1

    invoke-static {p1, p2, p5, p4, v1}, Ln3/a;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;ZLcom/android/launcher3/icons/BaseIconFactory;I)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    const-string p2, "fullIcon"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lo3/a;->m(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p5

    :cond_0
    if-nez p5, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0, p5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createGeneralMono failed, exception is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly3/c;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final d(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;ILcom/android/launcher3/icons/BaseIconFactory;Z)Landroid/graphics/drawable/Drawable;
    .locals 6

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    new-instance v3, Lo3/a;

    invoke-direct {v3, p2}, Lo3/a;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Ln3/a;->c(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lo3/a;Lcom/android/launcher3/icons/BaseIconFactory;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final e(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lo3/a;Lcom/android/launcher3/icons/BaseIconFactory;Landroid/graphics/Bitmap;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/content/res/Resources;",
            "Lo3/a;",
            "Lcom/android/launcher3/icons/BaseIconFactory;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconConverter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Landroid/graphics/drawable/VectorDrawable;

    const/4 p3, 0x1

    if-nez p0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p0, p2}, Ln3/a;->g(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Lo3/a;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v1, p3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v1, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p2}, Ln3/a;->h(Landroid/graphics/drawable/Drawable;Lo3/a;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0}, Lo3/b;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/util/Pair;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lo3/a;->n()Z

    move-result v7

    move-object v2, p1

    move-object v3, p0

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Ln3/a;->c(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lo3/a;Lcom/android/launcher3/icons/BaseIconFactory;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static final f(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0}, Lo3/b;->g()Ljava/util/function/Function;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1
    return p0
.end method

.method public static final g(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Lo3/a;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const-string v0, "res"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "monochrome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly3/a;->a:Ly3/a;

    new-instance v1, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;

    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v2

    neg-float v2, v2

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {p2}, Lo3/a;->e()I

    move-result p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p1, v3, v2}, Ly3/a;->j(Landroid/graphics/drawable/Drawable;IFLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    new-array v1, v0, [[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-array v3, v0, [I

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Ly3/d;->a:Ly3/d;

    invoke-virtual {v2, p1, v0, v1}, Ly3/d;->k(Landroid/graphics/Bitmap;I[[I)V

    invoke-virtual {v2, p1, v1}, Ly3/d;->a(Landroid/graphics/Bitmap;[[I)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v3, Ly3/a;->a:Ly3/a;

    invoke-virtual {p2}, Lo3/a;->e()I

    move-result v5

    const v6, 0x3ec71c72

    invoke-virtual {p2}, Lo3/a;->h()F

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual/range {v3 .. v8}, Ly3/a;->f(Landroid/graphics/Bitmap;IFFLandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public static final h(Landroid/graphics/drawable/Drawable;Lo3/a;)Landroid/graphics/drawable/Drawable;
    .locals 8

    const-string v0, "monochrome"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly3/d;->a:Ly3/d;

    invoke-virtual {v0, p0}, Ly3/d;->f(Landroid/graphics/drawable/Drawable;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    float-to-double v1, v0

    const-wide v3, 0x3fdb72ea68f5c28fL    # 0.4288888955116272

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_0

    const-wide v3, 0x3fd65432170a3d71L    # 0.3488888955116272

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Ly3/a;->a:Ly3/a;

    invoke-virtual {p1}, Lo3/a;->e()I

    move-result v4

    const v1, 0x3ec71c72

    div-float v5, v1, v0

    invoke-virtual {p1}, Lo3/a;->h()F

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ly3/a;->i(Landroid/graphics/drawable/Drawable;IFFLandroid/graphics/Bitmap$Config;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static final i(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;ZLcom/android/launcher3/icons/BaseIconFactory;I)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/Bitmap;",
            "Z",
            "Lcom/android/launcher3/icons/BaseIconFactory;",
            "I)",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    move-object p2, p0

    check-cast p2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    sget-object p2, Lp3/a;->g:Lp3/a;

    const/4 v2, 0x2

    invoke-static {p2, p4, v1, v2, v1}, Lp3/a;->m(Lp3/a;ILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {v0, p0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    sget-object v3, Ly3/a;->a:Ly3/a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Ly3/a;->c(Ly3/a;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p3, v0, p2, p4}, Lcom/android/launcher3/icons/BaseIconFactory;->createNormalizedBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    :goto_2
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final j(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mono"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo3/a;

    invoke-direct {v0, p2}, Lo3/a;-><init>(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p2, "context.resources"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Ln3/a;->g(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Lo3/a;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
