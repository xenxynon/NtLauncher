.class public final Lcom/android/launcher3/workspace/WorkspaceSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;
    }
.end annotation


# instance fields
.field private final cellSize:Lcom/android/launcher3/workspace/SizeSpec;

.field private final endPadding:Lcom/android/launcher3/workspace/SizeSpec;

.field private final gutter:Lcom/android/launcher3/workspace/SizeSpec;

.field private final maxAvailableSize:I

.field private final specType:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

.field private final startPadding:Lcom/android/launcher3/workspace/SizeSpec;


# direct methods
.method public constructor <init>(ILcom/android/launcher3/workspace/WorkspaceSpec$SpecType;Lcom/android/launcher3/workspace/SizeSpec;Lcom/android/launcher3/workspace/SizeSpec;Lcom/android/launcher3/workspace/SizeSpec;Lcom/android/launcher3/workspace/SizeSpec;)V
    .locals 1

    const-string v0, "specType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startPadding"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endPadding"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gutter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellSize"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->maxAvailableSize:I

    iput-object p2, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->specType:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    iput-object p3, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->startPadding:Lcom/android/launcher3/workspace/SizeSpec;

    iput-object p4, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->endPadding:Lcom/android/launcher3/workspace/SizeSpec;

    iput-object p5, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->gutter:Lcom/android/launcher3/workspace/SizeSpec;

    iput-object p6, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->cellSize:Lcom/android/launcher3/workspace/SizeSpec;

    return-void
.end method

.method private final allSpecsAreValid()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->startPadding:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->endPadding:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->gutter:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/workspace/SizeSpec;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->cellSize:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-virtual {p0}, Lcom/android/launcher3/workspace/SizeSpec;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/workspace/WorkspaceSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/launcher3/workspace/WorkspaceSpec;

    iget v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->maxAvailableSize:I

    iget v3, p1, Lcom/android/launcher3/workspace/WorkspaceSpec;->maxAvailableSize:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->specType:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    iget-object v3, p1, Lcom/android/launcher3/workspace/WorkspaceSpec;->specType:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->startPadding:Lcom/android/launcher3/workspace/SizeSpec;

    iget-object v3, p1, Lcom/android/launcher3/workspace/WorkspaceSpec;->startPadding:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->endPadding:Lcom/android/launcher3/workspace/SizeSpec;

    iget-object v3, p1, Lcom/android/launcher3/workspace/WorkspaceSpec;->endPadding:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->gutter:Lcom/android/launcher3/workspace/SizeSpec;

    iget-object v3, p1, Lcom/android/launcher3/workspace/WorkspaceSpec;->gutter:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->cellSize:Lcom/android/launcher3/workspace/SizeSpec;

    iget-object p1, p1, Lcom/android/launcher3/workspace/WorkspaceSpec;->cellSize:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCellSize()Lcom/android/launcher3/workspace/SizeSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->cellSize:Lcom/android/launcher3/workspace/SizeSpec;

    return-object p0
.end method

.method public final getEndPadding()Lcom/android/launcher3/workspace/SizeSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->endPadding:Lcom/android/launcher3/workspace/SizeSpec;

    return-object p0
.end method

.method public final getGutter()Lcom/android/launcher3/workspace/SizeSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->gutter:Lcom/android/launcher3/workspace/SizeSpec;

    return-object p0
.end method

.method public final getMaxAvailableSize()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->maxAvailableSize:I

    return p0
.end method

.method public final getSpecType()Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->specType:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    return-object p0
.end method

.method public final getStartPadding()Lcom/android/launcher3/workspace/SizeSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->startPadding:Lcom/android/launcher3/workspace/SizeSpec;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->maxAvailableSize:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->specType:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->startPadding:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->endPadding:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->gutter:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->cellSize:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isValid()Z
    .locals 3

    iget v0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->maxAvailableSize:I

    const/4 v1, 0x0

    const-string v2, "WorkspaceSpecs"

    if-gtz v0, :cond_0

    const-string p0, "WorkspaceSpec#isValid - maxAvailableSize <= 0"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/workspace/WorkspaceSpec;->allSpecsAreValid()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "WorkspaceSpec#isValid - !allSpecsAreValid()"

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkspaceSpec(maxAvailableSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->maxAvailableSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", specType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->specType:Lcom/android/launcher3/workspace/WorkspaceSpec$SpecType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->startPadding:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->endPadding:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gutter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->gutter:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cellSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/workspace/WorkspaceSpec;->cellSize:Lcom/android/launcher3/workspace/SizeSpec;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
