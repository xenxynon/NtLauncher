.class public Lcom/android/launcher3/util/MultiScalePropertyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mLastAggregatedValue:F

.field private mLastIndexSet:Ljava/lang/Integer;

.field private mMaxOfOthers:F

.field private mMinOfOthers:F

.field private mMultiplicationOfOthers:F

.field private final mName:Ljava/lang/String;

.field private final mProperties:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/util/MultiScalePropertyFactory<",
            "TT;>.MultiScaleProperty;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMinOfOthers:F

    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMaxOfOthers:F

    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMultiplicationOfOthers:F

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastAggregatedValue:F

    iput-object p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/MultiScalePropertyFactory;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->lambda$get$0(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/android/launcher3/util/MultiScalePropertyFactory;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/launcher3/util/MultiScalePropertyFactory;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMinOfOthers:F

    return p0
.end method

.method static synthetic access$102(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMinOfOthers:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMaxOfOthers:F

    return p0
.end method

.method static synthetic access$202(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMaxOfOthers:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMultiplicationOfOthers:F

    return p0
.end method

.method static synthetic access$302(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMultiplicationOfOthers:F

    return p1
.end method

.method static synthetic access$332(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)F
    .locals 1

    iget v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMultiplicationOfOthers:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMultiplicationOfOthers:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/util/MultiScalePropertyFactory;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastAggregatedValue:F

    return p0
.end method

.method static synthetic access$502(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastAggregatedValue:F

    return p1
.end method

.method private synthetic lambda$get$0(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;
    .locals 3

    new-instance p2, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v0, p1}, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;-><init>(Lcom/android/launcher3/util/MultiScalePropertyFactory;ILjava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method protected apply(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public get(Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/android/launcher3/util/MultiScalePropertyFactory<",
            "TT;>.MultiScaleProperty;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/launcher3/util/i0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/i0;-><init>(Lcom/android/launcher3/util/MultiScalePropertyFactory;Ljava/lang/Integer;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    return-object p0
.end method
