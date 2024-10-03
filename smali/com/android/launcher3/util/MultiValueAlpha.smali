.class public Lcom/android/launcher3/util/MultiValueAlpha;
.super Lcom/android/launcher3/util/MultiPropertyFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/util/MultiPropertyFactory<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALPHA_AGGREGATOR:Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;


# instance fields
.field private mUpdateVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/k0;->a:Lcom/android/launcher3/util/k0;

    sput-object v0, Lcom/android/launcher3/util/MultiValueAlpha;->ALPHA_AGGREGATOR:Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 6

    sget-object v2, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    sget-object v4, Lcom/android/launcher3/util/MultiValueAlpha;->ALPHA_AGGREGATOR:Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;F)V

    return-void
.end method

.method public static synthetic a(FF)F
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/util/MultiValueAlpha;->lambda$static$0(FF)F

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0(FF)F
    .locals 0

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method protected apply(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory;->apply(F)V

    iget-boolean p1, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mUpdateVisibility:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mTarget:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setUpdateVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/util/MultiValueAlpha;->mUpdateVisibility:Z

    return-void
.end method
