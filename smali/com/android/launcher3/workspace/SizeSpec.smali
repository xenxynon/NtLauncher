.class public final Lcom/android/launcher3/workspace/SizeSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fixedSize:F

.field private final ofAvailableSpace:F

.field private final ofRemainderSpace:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/ResourceHelper;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "resourceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/R$styleable;->SpecSize:[I

    const-string v1, "SpecSize"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/util/ResourceHelper;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/workspace/SizeSpec;->getValue(Landroid/content/res/TypedArray;I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/workspace/SizeSpec;->fixedSize:F

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/workspace/SizeSpec;->getValue(Landroid/content/res/TypedArray;I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/workspace/SizeSpec;->ofAvailableSpace:F

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/workspace/SizeSpec;->getValue(Landroid/content/res/TypedArray;I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher3/workspace/SizeSpec;->ofRemainderSpace:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final getValue(Landroid/content/res/TypedArray;I)F
    .locals 2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p0, v0, :cond_1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public final getFixedSize()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/workspace/SizeSpec;->fixedSize:F

    return p0
.end method

.method public final getOfAvailableSpace()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/workspace/SizeSpec;->ofAvailableSpace:F

    return p0
.end method

.method public final getOfRemainderSpace()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/workspace/SizeSpec;->ofRemainderSpace:F

    return p0
.end method

.method public final isValid()Z
    .locals 7

    iget v0, p0, Lcom/android/launcher3/workspace/SizeSpec;->fixedSize:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const-string v3, "WorkspaceSpecs"

    const/4 v4, 0x0

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/workspace/SizeSpec;->ofAvailableSpace:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/workspace/SizeSpec;->ofRemainderSpace:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_0

    const-string p0, "SizeSpec#isValid - all attributes are empty"

    :goto_0
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    iget v5, p0, Lcom/android/launcher3/workspace/SizeSpec;->ofAvailableSpace:F

    cmpl-float v6, v5, v1

    if-lez v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    add-int/2addr v0, v6

    iget p0, p0, Lcom/android/launcher3/workspace/SizeSpec;->ofRemainderSpace:F

    cmpl-float v6, p0, v1

    if-lez v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v4

    :goto_3
    add-int/2addr v0, v6

    if-le v0, v2, :cond_4

    const-string p0, "SizeSpec#isValid - more than one attribute is filled"

    goto :goto_0

    :cond_4
    cmpg-float v0, v1, v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-gtz v0, :cond_5

    cmpg-float v0, v5, v6

    if-gtz v0, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v4

    :goto_4
    if-eqz v0, :cond_8

    cmpg-float v0, v1, p0

    if-gtz v0, :cond_6

    cmpg-float p0, p0, v6

    if-gtz p0, :cond_6

    move p0, v2

    goto :goto_5

    :cond_6
    move p0, v4

    :goto_5
    if-nez p0, :cond_7

    goto :goto_6

    :cond_7
    return v2

    :cond_8
    :goto_6
    const-string p0, "SizeSpec#isValid - values should be between 0 and 1"

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeSpec(fixedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/workspace/SizeSpec;->fixedSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ofAvailableSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/workspace/SizeSpec;->ofAvailableSpace:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ofRemainderSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/workspace/SizeSpec;->ofRemainderSpace:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
