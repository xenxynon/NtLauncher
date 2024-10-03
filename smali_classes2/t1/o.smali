.class public Lt1/o;
.super Lt1/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1/o$c;,
        Lt1/o$b;
    }
.end annotation


# instance fields
.field private final f:Lt1/r;


# virtual methods
.method public d()Lt1/r;
    .locals 1

    iget-object v0, p0, Lt1/o;->f:Lt1/r;

    invoke-virtual {p0, v0}, Lt1/p;->b(Lt1/r;)Lt1/r;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lt1/o;->d()Lt1/r;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lt1/o;->d()Lt1/r;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lt1/o;->d()Lt1/r;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
