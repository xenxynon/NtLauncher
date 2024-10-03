.class final Lt1/k$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt1/j$b<",
        "Lt1/k$f;",
        ">;"
    }
.end annotation


# instance fields
.field final g:I

.field final h:Lt1/c0$b;

.field final i:Z


# virtual methods
.method public a(Lt1/k$f;)I
    .locals 0

    iget p0, p0, Lt1/k$f;->g:I

    iget p1, p1, Lt1/k$f;->g:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lt1/k$f;

    invoke-virtual {p0, p1}, Lt1/k$f;->a(Lt1/k$f;)I

    move-result p0

    return p0
.end method

.method public e(Lt1/r$a;Lt1/r;)Lt1/r$a;
    .locals 0

    check-cast p1, Lt1/k$b;

    check-cast p2, Lt1/k;

    invoke-virtual {p1, p2}, Lt1/k$b;->mergeFrom(Lt1/k;)Lt1/k$b;

    move-result-object p0

    return-object p0
.end method

.method public getLiteJavaType()Lt1/c0$c;
    .locals 0

    iget-object p0, p0, Lt1/k$f;->h:Lt1/c0$b;

    invoke-virtual {p0}, Lt1/c0$b;->a()Lt1/c0$c;

    move-result-object p0

    return-object p0
.end method

.method public getLiteType()Lt1/c0$b;
    .locals 0

    iget-object p0, p0, Lt1/k$f;->h:Lt1/c0$b;

    return-object p0
.end method

.method public getNumber()I
    .locals 0

    iget p0, p0, Lt1/k$f;->g:I

    return p0
.end method

.method public isRepeated()Z
    .locals 0

    iget-boolean p0, p0, Lt1/k$f;->i:Z

    return p0
.end method
