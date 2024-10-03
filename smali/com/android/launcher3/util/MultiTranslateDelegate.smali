.class public Lcom/android/launcher3/util/MultiTranslateDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mTranslationX:Lcom/android/launcher3/util/MultiPropertyFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/util/MultiTranslateDelegate;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/MultiPropertyFactory;

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/launcher3/allapps/l;->a:Lcom/android/launcher3/allapps/l;

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;)V

    iput-object v0, p0, Lcom/android/launcher3/util/MultiTranslateDelegate;->mTranslationX:Lcom/android/launcher3/util/MultiPropertyFactory;

    new-instance p2, Lcom/android/launcher3/util/MultiPropertyFactory;

    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/launcher3/allapps/l;->a:Lcom/android/launcher3/allapps/l;

    invoke-direct {p2, p1, v0, p3, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;)V

    iput-object p2, p0, Lcom/android/launcher3/util/MultiTranslateDelegate;->mTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

    return-void
.end method


# virtual methods
.method public getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiTranslateDelegate;->mTranslationX:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method public getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiTranslateDelegate;->mTranslationY:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    return-object p0
.end method

.method public setTranslation(IFF)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationX(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiTranslateDelegate;->getTranslationY(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->setValue(F)V

    return-void
.end method
