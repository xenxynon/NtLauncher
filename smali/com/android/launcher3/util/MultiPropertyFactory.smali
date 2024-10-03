.class public Lcom/android/launcher3/util/MultiPropertyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;,
        Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "*>.MultiProperty;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAggregationOfOthers:F

.field private final mAggregator:Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

.field private mLastIndexSet:I

.field private final mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "*>.MultiProperty;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MultiPropertyFactory$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MultiPropertyFactory$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;I",
            "Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;I",
            "Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;",
            "F)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mAggregationOfOthers:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mLastIndexSet:I

    iput-object p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mTarget:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperty:Landroid/util/FloatProperty;

    iput-object p4, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mAggregator:Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

    new-array p1, p3, [Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    iput-object p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_0

    iget-object p2, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    new-instance p4, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-direct {p4, p0, p1, p5}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;-><init>(Lcom/android/launcher3/util/MultiPropertyFactory;IF)V

    aput-object p4, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/MultiPropertyFactory;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mLastIndexSet:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/launcher3/util/MultiPropertyFactory;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mLastIndexSet:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/util/MultiPropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mAggregationOfOthers:F

    return p0
.end method

.method static synthetic access$202(Lcom/android/launcher3/util/MultiPropertyFactory;F)F
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mAggregationOfOthers:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/util/MultiPropertyFactory;)[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher3/util/MultiPropertyFactory;)Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mAggregator:Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

    return-object p0
.end method


# virtual methods
.method protected apply(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperty:Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mTarget:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public varargs dump(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    array-length v0, p4

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    array-length v0, v0

    if-lt p3, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p4, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " given for alpha index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " however there are only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " alpha channels."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p4, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/android/launcher3/util/MultiPropertyFactory;->get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/launcher3/util/MultiPropertyFactory<",
            "TT;>.MultiProperty;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
