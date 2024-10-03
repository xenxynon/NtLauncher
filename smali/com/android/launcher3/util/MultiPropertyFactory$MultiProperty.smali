.class public Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/MultiPropertyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultiProperty"
.end annotation


# instance fields
.field private final mDefaultValue:F

.field private final mInx:I

.field private mValue:F

.field final synthetic this$0:Lcom/android/launcher3/util/MultiPropertyFactory;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/MultiPropertyFactory;IF)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mInx:I

    iput p3, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mDefaultValue:F

    iput p3, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    return p0
.end method


# virtual methods
.method public animateToValue(F)Landroid/animation/Animator;
    .locals 4

    sget-object v0, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    return-object p0
.end method

.method public getValue()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    return p0
.end method

.method public setValue(F)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->access$100(Lcom/android/launcher3/util/MultiPropertyFactory;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mInx:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    iget v1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mDefaultValue:F

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;->access$202(Lcom/android/launcher3/util/MultiPropertyFactory;F)F

    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->access$300(Lcom/android/launcher3/util/MultiPropertyFactory;)[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mInx:I

    iget v5, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mInx:I

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-static {v4}, Lcom/android/launcher3/util/MultiPropertyFactory;->access$400(Lcom/android/launcher3/util/MultiPropertyFactory;)Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-static {v6}, Lcom/android/launcher3/util/MultiPropertyFactory;->access$200(Lcom/android/launcher3/util/MultiPropertyFactory;)F

    move-result v6

    iget v3, v3, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    invoke-interface {v5, v6, v3}, Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;->apply(FF)F

    move-result v3

    invoke-static {v4, v3}, Lcom/android/launcher3/util/MultiPropertyFactory;->access$202(Lcom/android/launcher3/util/MultiPropertyFactory;F)F

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    iget v1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mInx:I

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory;->access$102(Lcom/android/launcher3/util/MultiPropertyFactory;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->access$400(Lcom/android/launcher3/util/MultiPropertyFactory;)Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-static {v1}, Lcom/android/launcher3/util/MultiPropertyFactory;->access$200(Lcom/android/launcher3/util/MultiPropertyFactory;)F

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;->apply(FF)F

    move-result v0

    iput p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    iget-object p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->this$0:Lcom/android/launcher3/util/MultiPropertyFactory;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/MultiPropertyFactory;->apply(F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->mValue:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
