.class public final Lt4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt4/c;->a:I

    iput-boolean p2, p0, Lt4/c;->b:Z

    iput-boolean p3, p0, Lt4/c;->c:Z

    return-void
.end method

.method public static synthetic b(Lt4/c;IZZILjava/lang/Object;)Lt4/c;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lt4/c;->a:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lt4/c;->b:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lt4/c;->c:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lt4/c;->a(IZZ)Lt4/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(IZZ)Lt4/c;
    .locals 0

    new-instance p0, Lt4/c;

    invoke-direct {p0, p1, p2, p3}, Lt4/c;-><init>(IZZ)V

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lt4/c;->b:Z

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lt4/c;->c:Z

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lt4/c;->a:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lt4/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lt4/c;

    iget v1, p0, Lt4/c;->a:I

    iget v3, p1, Lt4/c;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lt4/c;->b:Z

    iget-boolean v3, p1, Lt4/c;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lt4/c;->c:Z

    iget-boolean p1, p1, Lt4/c;->c:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lt4/c;->b:Z

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lt4/c;->c:Z

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lt4/c;->a:I

    return-void
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lt4/c;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lt4/c;->b:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lt4/c;->c:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutConfigData(gridColumn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lt4/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayAppLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lt4/c;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displaySearchBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lt4/c;->c:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
